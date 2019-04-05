
// Retromachine memory map @bytes

//$   00000-$    0FFFF reserved
//    0D400-     0D418 SID
//$   10000-$    4FFFF pallette banks;
//$   50000-$    50FFF 8x16 font
//$   51000-$    51FFF 8x8 fonts x2
//    52000-     59FFF sprite defs 8x4k
//    5A000-     5AFFF audio buffer 4k
//    5B000-     5FFFF reserved
//    60000-     6FFFF hardware regs area
//    70000-    FFFFFF low memory area    (16 MB-448 kB)
//  1000000-   EFFFFFF Basic area        (224 MB)
//  F000000-   FFFFFFF framebuffer area   (16 MB)


// $18000 - hard regs area @long

// 18000 - 60000 - frame counter
// 18001 - 60004 - display start
// 18002 - 60008 - current graphics mode (@60008 only)
//         60009 - bytes per pixel
// 18003 - 6000C - border color
// 18004 - 60010 - pallette bank
// 18005 - 60014 - horizontal pallette selector  bit 31 on, 30..20 add to $18004, 11:0 pixel num.
// 18006 - 60018 - display list start addr
//                 DL entry: 0_LLLLL_MM - display LLLLL lines in mode MM
//                           1_AAAAAAA - set display address to AAAAAAA
//                           F_AAAAAAA - goto address AAAAAAA
// 18007 - 6001C - horizontal scroll right register
// 18008 - 60020 - x res
// 18009   60024 - y res
// 1800A - 60028 - KBD. If key pressed then ascii code in 60028 and 1 in 6002b
// 1800B - 6002C - mouse. 6002c,d x 6002e,f y
// 1800C - 60030   keys,
// 1800D - 60034 - current dl position
// 18010 - 1801F   - sprite control long 0 31..16 y pos  15..0 x pos
//                               long 1 30..16 y zoom 15..0 x zoom 31 mode

// graphic modes: 00..15 256 col; 16..31 64k col; 32..47 32bit col; 48..63 ham (?)

unit retro;



// stripped down retromachine for SID player. Only Graphics 16 left.

{$mode objfpc}{$H+}

interface

uses sdl2,sysutils,crt,classes,windows,midi,fmsynth;

type tram=array[0..67108863] of integer;
     tramw=array[0..134217727] of word;
     tramb=array[0..268435455] of byte;
     tsample=array[0..1] of smallint;

     TRetro = class(TThread)
     private
     protected
       procedure Execute; override;
     public
       Constructor Create(CreateSuspended : boolean);
     end;

     TFiltertable=array[0..13] of double;



     const a212=1.0594630943592953098431053149397484958; //2^1/12
           c03=16.351597831287416763959505349330137242; //C-4
           norm44=0.02321995464852607709750566893424;   // freq normalize const, 1024/44100
           samplerate=961538.461538;
           norm960=0.06815744; // 65536/samplerate
           norm192=0.34133333333333333333333333333333;

var fh,filetype:integer;
    play:word;
    scr:PSDL_window;
    sdlRenderer:PSDL_Renderer;
    sdltexture:psdl_texture;
    p2:^integer;
    tim,t,t2,t3,ts,t6,time6502:int64;
    vblank1:byte;

    combined:array[0..1023] of byte;
    scope:array[0..959] of integer;

    desired,obtained:TSDL_AudioSpec;

    db:boolean=false;
    debug:integer;
    sidtime:int64;
    timer1:int64=-1;
    siddelay:int64=20000;
    songtime,songfreq:int64;
    skip:integer;
    scj:integer=0;
    ft1r:Tfiltertable=(0,0,0,0,0,0,0,0,0,0,0,0,0,0);
    ft1l:Tfiltertable=(0,0,0,0,0,0,0,0,0,0,0,0,0,0);
    thread:TRetro;
    times6502:array[0..15] of integer;
    r1:pointer;
    raml:^tram absolute r1;
    ramw:^tramw absolute r1;
    ramb:^tramb absolute r1;

    ft,ftt:int64;
    attacktable:array[0..15] of double=(5.208e-4,1.302e-4,6.51e-5,4.34e-5,2.74e-5,1.86e-5,1.53e-5,1.3e-5,1.04e-5,4.17e-6,2.08e-6,1.302e-6,1.04e-6,3.47e-7,2.08e-7,1.3e-7);
    attacktablei:array[0..15] of int64;
    srtablei:array[0..15] of int64;


    de:integer=0;
    da:integer=32000;
    dl:array[0..192000] of myfloat;
    re:integer=0;
    ra:integer=731;
    rl:array[0..192000] of myfloat;

        oldsc:integer=0;
   sc:integer=0;
   edelay:boolean=false;
   ereverb:boolean=false;
   ns:boolean=false;
   gain:myfloat=1.0;

   keymap2:array[0..127] of byte=(
//    0   1   2   3   4   5   6   7   8   9
    000,000,000,000,049,057,053,000,071,054, // 000
    056,058,079,000,061,063,060,059,081,083, // 010
    067,072,051,074,077,055,069,052,076,050, // 020
    066,068,070,000,073,075,000,078,080,820, // 030
    000,000,087,000,072,000,074,076,086,000, // 040
    000,000,066,000,062,064,065,000,088,089, // 050
    090,091,092,093,094,095,096,097,098,099, // 060
    100,101,102,000,000,000,000,000,000,000, // 070
    000,000,000,000,000,000,000,000,000,000, // 080
    095,000,096,000,000,000,000,000,067,064, // 090
    048,081,000,000,000,089,000,000,000,071, // 100
    069,091,093,077,083,000,084,088,065,079, // 110
    062,086,060,000,000,000,000,000);        // 120


   be,bs:byte;
   keybuffer:array[0..255] of cardinal;
       testoperator:TFmOperator;
       testvoice:TFmVoice;

    procedure initmachine(mode:integer);
    procedure stopmachine;
    procedure graphics(mode:integer);
    procedure scrconvert(screen:pointer; buf:integer);
    procedure setataripallette(bank:integer);
    procedure cls(c:integer);
    procedure putpixel(x,y,color:integer);
    procedure putchar(x,y:integer;ch:char;col:integer);
    procedure outtextxy(x,y:integer; t:string;c:integer);
    procedure blit(from,x,y,too,x2,y2,length,lines,bpl1,bpl2:integer);
    procedure box(x,y,l,h,c:integer);
    procedure box2(x1,y1,x2,y2,color:integer);
    function gettime:int64;
    procedure poke(addr:integer;b:byte);
    procedure dpoke(addr:integer;w:word);
    procedure lpoke(addr:integer;c:cardinal);
    procedure slpoke(addr,i:integer);
    function peek(addr:integer):byte;
    function dpeek(addr:integer):word;
    function lpeek(addr:integer):cardinal;
    function slpeek(addr:integer):integer;
    procedure sethidecolor(c,bank,mask:integer);
    procedure putcharz(x,y:integer;ch:char;col,xz,yz:integer);
    procedure outtextxyz(x,y:integer; t:string;c,xz,yz:integer);
    procedure scrollup;
    function sid(mode:integer):tsample;
    function noise2:cardinal;
    function noise3:cardinal;
    function delay1(s:myfloat):myfloat;
  //  function reverb1(s:TSample):TSample;
 
    function readkeybuffer:cardinal;
    procedure writekeybuffer(a:integer);

implementation

 uses unit1,synthcontrol;

var
  running:integer=0;
  fh2:integer;

var sinetable:array[0..65535] of integer;
    logtable:array[0..65535] of cardinal;
    outputtable:array[0..8191] of integer;
    opdata:array[0..65535] of cardinal;


    needrestart:byte=0;




// ---- prototypes

procedure sprite(screen:pointer); forward;
procedure sdlevents; forward;
procedure AudioCallback(userdata:pointer; audio:Pbyte; length:integer); cdecl;    forward;
function sdl_sound_init:integer; forward;
function antialias6(input:double;var ft:Tfiltertable):double; forward;




// ---- TRetro thread methods --------------------------------------------------

// ----------------------------------------------------------------------
// constructor: create the thread for the retromachine
// ----------------------------------------------------------------------

constructor TRetro.Create(CreateSuspended : boolean);

begin
  FreeOnTerminate := True;
  inherited Create(CreateSuspended);
end;

// ----------------------------------------------------------------------
// THIS IS THE MAIN RETROMACHINE THREAD
// - convert retromachine screen to raspberry screen
// - display sprites
// - get hardware events from sdl and put them to system variable
// ----------------------------------------------------------------------

procedure TRetro.Execute;

var p3:pointer;
    t:int64;

begin
running:=1;                               // tell them the machine is running
SDL_SetThreadPriority(SDL_THREAD_PRIORITY_HIGH);
repeat
if p2<>nil then                           // the screen is prepared
  begin

  p3:=p2+2304000;                         // second frame buffer
  sdlevents;                              // get events from SDL and update system variables
  vblank1:=0;                             // tell them there is no vblank
  t:=gettime;                             // prepare for screen time measurement
  scrconvert(p2,raml^[$18001]);           // convert the screen
  tim:=gettime-t;                         // get screen time for debug
  raml^[$18000]+=1;                       // increment frame counter
  vblank1:=1;                             // we are in vblank now
  sprite(p2);               // draw sprites
  repeat until peek($70000)<2;            // if peek($70000)=2 then resizing is in progress, don't call SDL
  poke ($70000,0) ;                       // tell them they can not resize


  

  if (needrestart>0) then
    begin

    SDL_DestroyTexture( sdlTexture );
    SDL_DestroyRenderer( sdlRenderer );
    sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
    if peek($70002)=0 then begin
      if needrestart=2 then sdl_setwindowfullscreen(scr,0);
      sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
      SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
      end
    else
    begin
      if needrestart=2 then sdl_setwindowfullscreen(scr,SDL_WINDOW_FULLSCREEN_DESKTOP);
      sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
      SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
      end ;
        needrestart:=0;
    end;


  SDL_UpdateTexture(sdlTexture, nil, p2, 1920 * 4);   // render the screen
  SDL_RenderClear(sdlRenderer);
  SDL_RenderCopy(sdlRenderer, sdlTexture,nil,nil);
  SDL_RenderPresent(sdlRenderer);
  poke ($70000,1);                        // screen rendered, resizing possible



  sdlevents;                              // process the second buffer
  vblank1:=0;
  t:=gettime;
  scrconvert(p3,raml^[$18001]);
  tim:=gettime-t;
  raml^[$18000]+=1;
  vblank1:=1;
  sprite(p3);
  repeat until peek($70000)<2;
  poke ($70000,0);

   if (needrestart>0) then
    begin

    SDL_DestroyTexture( sdlTexture );
    SDL_DestroyRenderer( sdlRenderer );
    sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
    if peek($70002)=0 then begin
      if needrestart=2 then sdl_setwindowfullscreen(scr,0);
      sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
      SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
      end
    else
    begin
      if needrestart=2 then sdl_setwindowfullscreen(scr,SDL_WINDOW_FULLSCREEN_DESKTOP);
      sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
      SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
      end ;
        needrestart:=0;
    end;


  SDL_UpdateTexture(sdlTexture, nil, p3, 1920 * 4);
  SDL_RenderClear(sdlRenderer);
  SDL_RenderCopy(sdlRenderer, sdlTexture,nil,nil);
  SDL_RenderPresent(sdlRenderer);
  poke($70000,1) ;

  end;
until terminated;
running:=0;
end;

// ---- Retromachine procedures ------------------------------------------------

// ----------------------------------------------------------------------
// initmachine: start the machine
// constructor procedure: allocate ram, load data from files
// prepare all hardware things
// ----------------------------------------------------------------------

procedure initmachine(mode:integer);

var a,i:integer;
    bb:byte;

begin
initvoices;
initsamples0;
initsamples1;
initsamples2;
r1:=virtualalloc(nil,268435456, MEM_COMMIT or MEM_RESERVE,PAGE_EXECUTE_READWRITE);  // get 256 MB ram
p2:=virtualalloc(nil,20971520, MEM_COMMIT or MEM_RESERVE,PAGE_READWRITE);  // get the RAM for the framebuffer

fh2:=fileopen('./st4font.def',$40);              // load 8x16 font
fileread(fh2,ramb^[$50000],2048);
fileclose(fh2);

fh2:=fileopen('./combinedwaveforms.bin',$40);   // load combined waveforms for SID
fileread(fh2,combined,1024);
fileclose(fh2);

fh2:=fileopen('./mysz.def',$40);                // load mouse cursor definition at sprite 8
for i:=0 to 1023 do
  begin
  fileread(fh2,bb,1);
  a:=bb;
  a:=a+(a shl 8) + (a shl 16);
  raml^[$16400+i]:=a;
  end;
fileclose(fh2);

// init sdl @ current res and 32 bits, prepare SDL video stuff

SDL_Init(SDL_INIT_everything);

SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, 'best'); // make the scaled rendering look smoother.
SDL_SetHint(SDL_HINT_RENDER_DIRECT3D_THREADSAFE, '1');
if mode=0 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600, SDL_WINDOW_shown);
if mode=1 then scr := SDL_CreateWindow( 'The Retromachine', SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 960,600 , SDL_WINDOW_fullscreen_desktop);
sdlRenderer := SDL_CreateRenderer(scr, -1, 14);   // hardware+vsync+texture
sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);

sdl_showcursor(0);             // hide sdl cursor

sdl_sound_init;
sdl_pauseaudio(0);

thread:=tretro.create(true);   // start frame refreshing thread
thread.start;

end;


//  ---------------------------------------------------------------------
//   procedure stopmachine
//   destructor for the retromachine
//   stop the process, free the RAM
//   rev. 2015.10.14
//  ---------------------------------------------------------------------

procedure stopmachine;

begin

// stop the thread

sdl_pauseaudio(1);
sdl_closeaudio;
thread.terminate;
repeat until running=0;
SDL_DestroyTexture( sdlTexture );
SDL_DestroyRenderer( sdlRenderer );
SDL_DestroyWindow ( scr);
sdl_quit;

// free retromachine memory

virtualfree(p2,0,mem_release);
virtualfree(r1,0,mem_release);

end;

//  ---------------------------------------------------------------------
//   BASIC type poke/peek procedures
//   works @ byte addresses
//   rev. 2015.11.01
// ----------------------------------------------------------------------

procedure poke(addr:integer;b:byte);

begin
ramb^[addr]:=b;
end;

procedure dpoke(addr:integer;w:word);

begin
ramw^[addr shr 1]:=w;
end;


procedure lpoke(addr:integer;c:cardinal);

begin
raml^[addr shr 2]:=c;
end;

procedure slpoke(addr,i:integer);

begin
raml^[addr shr 2]:=i;
end;

function peek(addr:integer):byte;

begin
peek:=ramb^[addr];
end;

function dpeek(addr:integer):word;

begin
dpeek:=ramb^[addr]+256*ramb^[addr+1];
end;

function lpeek(addr:integer):cardinal;

begin
lpeek:=raml^[addr shr 2];
end;

function slpeek(addr:integer):integer;

begin
slpeek:=raml^[addr shr 2];
end;


//  ---------------------------------------------------------------------
//   function gettime:int64
//   the function returns the system time in microseconds
//   rev. 2015.11.27
//  ---------------------------------------------------------------------

function gettime:int64;

var pf,tm:int64;
    d:double;
begin
QueryPerformanceFrequency(pf);
QueryPerformanceCounter(tm);
d:=(tm/pf)*1000000;
gettime:=round(d);
//box(0,0,1000,120,0); outtextxyz(0,0,inttohex(pf,16),15,2,2);   outtextxyz(0,40,inttohex(tm,16),15,2,2);   outtextxyz(0,80,inttohex(gettime,16),15,2,2);
end;

function readkeybuffer:cardinal;

begin
if be<>bs then
  begin
  result:=keybuffer[bs];
  bs+=1
  end
else result:=$FFFFFFFF;
end;

procedure writekeybuffer(a:integer);

begin
if be<>bs-1 then
  begin
  keybuffer[be]:=a;
  be+=1;
  end;
end;



//  ---------------------------------------------------------------------
//   procedure sdlevents
//   Get events from sdl and put them into system vars
//   STUB! rev. 2015.10.18
//   TODO: this should be run in another thread ?
//  ---------------------------------------------------------------------


procedure sdlevents;

var qq:integer;
    event:tsdl_event;
    key:cardinal;

const x:integer=0;
      y:integer=0;

begin
repeat
  qq:=sdl_pollevent(@event)  ;
  if (qq>0) and (event.type_=sdl_windowevent) then if event.window.event=SDL_WINDOWEVENT_ENTER then needrestart:=1;

  if (qq<>0) and (event.type_=sdl_mousemotion)  then
    begin
    x:=event.motion.x;
    y:=event.motion.y;
    if x<64 then x:=64;
    if x>1855 then x:=1855;
    if y<40 then y:=40;
    if y>1159 then y:=1159;
    ramw^[$30016]:=x;
    ramw^[$30017]:=y;
    end

 else  if (qq<>0) and (event.type_=sdl_mousewheel)  then
    begin
    x:=event.wheel.x;
    y:=event.wheel.y;
//    if x<64 then x:=64;
//    if x>1855 then x:=1855;
//    if y<40 then y:=40;
//    if y>1159 then y:=1159;
    poke($60032,y); poke($60032,peek($60032)+128); //rpi comptibility // ramb^[$60032]:=y;
    end
  else if (qq<>0) and (event.type_=sdl_mousebuttondown)  then
    begin
    if event.button.state=sdl_pressed then
      begin
      ramb^[$60033]:=2;
      ramb^[$60030]:=event.button.button;
      end;
    end
  else if (qq<>0) and (event.type_=sdl_keydown) then
    begin
    ramb^[$6002B]:=1;
    key:=event.key.keysym.sym;
    key:=(key shr 24) shl 8 + (key and $FF);
    if event.key.repeat_ = 0 then writekeybuffer(key);
    dpoke($60028,key);
    end
  else if (qq<>0) and (event.type_=sdl_keyUP) then
    begin
    ramb^[$6002B]:=0;
    key:=event.key.keysym.sym;
    key:=(key shr 24) shl 8 + (key and $FF);
    writekeybuffer(key+$10000);

    dpoke($6002A,key);
    end
   else if (qq<>0) and (event.type_=sdl_windowevent)  then
     begin
     if event.window.event=SDL_WINDOWEVENT_CLOSE then poke($70004,1);
     end;
  until qq=0;
end;

//  ---------------------------------------------------------------------
//   procedure blit(from,x,y,too,x2,y2,lines,length,bpl1,bpl2:integer)
//   copy a rectangle from screen "from" to screen "too"
//   bpl1,bpl1 - bit per line at screen1 and screen 2
//   STUB!  rev. 2015.10.18
//  -------------------------------------------------------------------


procedure blit(from,x,y,too,x2,y2,length,lines,bpl1,bpl2:integer);

// --- TODO - write in asm, add advanced blitting modes

var i,j:integer;
    b1,b2:integer;

begin
if raml^[$18002]<16 then
  begin
  from:=from+x;
  too:=too+x2;
  for i:=0 to lines-1 do
    begin
    b2:=too+bpl2*(i+y2);
    b1:=from+bpl1*(i+y);
    for j:=0 to length-1 do
      ramb^[b2+j]:=ramb^[b1+j];
    end;
  end
else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
  begin
  from:=(from shr 1)+x;
  too:=(too shr 1)+x2;
  for i:=0 to lines-1 do
    begin
    b2:=too+bpl2*(i+y2);
    b1:=from+bpl1*(i+y);
    for j:=0 to length-1 do
      ramw^[b2+j]:=ramw^[b1+j];
    end;
  end
else
  begin
  from:=(from shr 2)+x;
  too:=(too shr 2)+x2;
  for i:=0 to lines-1 do
    begin
    b2:=too+bpl2*(i+y2);
    b1:=from+bpl1*(i+y);
    for j:=0 to length-1 do
      raml^[b2+j]:=raml^[b1+j];
    end;
  end;
end;

procedure graphics(mode:integer);

begin
raml^[$18001]:=$F000000;
case mode of

   16: begin

       raml^[$18002]:=16;
       raml^[$18008]:=1792;
       raml^[$18009]:=1120;
       end;


   else begin

        raml^[$18002]:=16;
        raml^[$18008]:=1792;
        raml^[$18009]:=1120;
        end;
    end;
raml^[$18001]:=$F000000;
setataripallette(0);

cls(0);
end;


procedure scrconvert(screen:pointer;buf:integer);  //convert retro fb to raspberry fb @ graphics mode 16
                                                      //1792x1120x64k

var
  b:integer;
  pi:^integer;
  i,j,k,l:integer;
  q1,q2,q3,q4:integer;

   ii:integer;

begin
//case peek($60000) mod 4 of
//   0: begin q1:=$FF0000; q2:=$00FF00; q3:=$0000FF; end;
//   1:
//   2:
//   3:
//   end;


buf:=buf shr 1;
pi:=screen;
b:=raml^[$18003];
l:=0;
for i:=0 to 39 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000)  ) mod 1024);} for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;
k:=76800;
for i:=40 to 1159 do
  begin



  for j:=0 to 15 do begin (pi+k)^:=b; k+=1; (pi+k)^:=b; k+=1; (pi+k)^:=b; k+=1; (pi+k)^:=b; k+=1;end;
//  if (i mod 2)=( peek($60000) mod 2) then

  for j:=0 to {1791} 223 do begin
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  (pi+k)^:=raml^[$4000+ramw^[buf+l]]; k+=1; l+=1;
  end;

{  else

  for j:=0 to {1791} 223 do begin
  (pi+k)^:=$800000; k+=1; l+=1;
  (pi+k)^:=$008000; k+=1; l+=1;
  (pi+k)^:=$000080; k+=1; l+=1;
  (pi+k)^:=$000000; k+=1; l+=1;
  (pi+k)^:=$800000; k+=1; l+=1;
  (pi+k)^:=$008000; k+=1; l+=1;
  (pi+k)^:=$000080; k+=1; l+=1;
  (pi+k)^:=$000000; k+=1; l+=1;
  end ;
 }
  for j:=0 to 15 do begin (pi+k)^:=b; k+=1; (pi+k)^:=b; k+=1; (pi+k)^:=b; k+=1; (pi+k)^:=b; k+=1;end;
  end;
for i:=1160 to 1199 do begin {if peek($70001)=0 then b:=lpeek($10000+4*((i div 4)+lpeek($60000) ) mod 1024); }for j:=0 to 1919  do (pi+i*1920+j)^:=b; end;


end;

//  ---------------------------------------------------------------------
//           asm procedure - draw sprites on screen
//           called from retromachine emulation thread
//           rev. 2015.10.13
//  ---------------------------------------------------------------------

procedure sprite(screen:pointer);

  label p100;

var  offset,pixel, spritebase, spritedefs,ctrl1:integer;
     screenbase,pi:^integer;
     xpos,ypos,xzoom, yzoom, i,j,k,l,m: integer;
     mask:cardinal;
                                //  sprite control long 0 31..16 y pos  15..0 x pos
                                //  long 1 30..16 y zoom 15..0 x zoom 31 mode
                                // defs @ 52000

begin
pi:=screen;
spritebase:=$60040;
spritedefs:=$52000;
t:=gettime;
for i:=0 to 7 do
  begin
  mask:=1 shl (i+24);
  ctrl1:=lpeek(spritebase);
  spritebase+=4;
  ypos:=ctrl1 shr 16;
  xpos:=ctrl1 and $FFFF;
  ctrl1:=lpeek(spritebase);
  spritebase+=4;
  yzoom:=(ctrl1 shr 16) and $7FFF ;
  if yzoom>8 then yzoom:=8;
  if yzoom<1 then yzoom:=1;
  xzoom:=ctrl1 and $7FFF ;
  if xzoom>8 then xzoom:=8;
  if xzoom<1 then xzoom:=1;
  if (xpos>2048) or (ypos>2048) then
    begin
    spritedefs+=4096;
    goto p100;
    end;
  for l:=0 to 31 do
    begin
    for m:=1 to yzoom do
      begin
      offset:=xpos+1920*(ypos+yzoom*l+m-1);
      screenbase:=pi+offset;
      for j:=0 to 31 do
        begin
        for k:=1 to xzoom do
          begin
          pixel:=lpeek(spritedefs);
          if ((screenbase^ and mask)=0) and (offset<2304000) and (pixel<>0) then screenbase^:=pixel;
          screenbase+=1;
          end;
        spritedefs+=4;
        end;
      spritedefs-=128
      end;
    spritedefs+=128;
    end;
  p100:
  end;
ts:=gettime-t;

end;


procedure setataripallette(bank:integer);

var fh:integer;


begin
fh:=fileopen('./ataripalette.def',$40);
fileread(fh,raml^[$4000+256*bank],1024);
fileclose(fh);
end;

procedure sethidecolor(c,bank,mask:integer);

begin
raml^[$4000+256*bank+c]+=(mask shl 24);
end;

procedure cls(c:integer);

var c2, i,l:integer;

begin
c:=c mod 65535;

l:=(raml^[$18008]*raml^[$18009]) div 2 ;
c:=c+(c shl 16);
for i:=0 to l do raml^[$3C00000+i]:=c;

end;


//  ---------------------------------------------------------------------
//   putpixel (x,y,color)
//   asm procedure - put color pixel on screen at position (x,y)
//   rev. 2015.10.14
//  ---------------------------------------------------------------------


procedure putpixel(x,y,color:integer);

var adr:integer;

begin

if raml^[$18002]<16 then
  begin adr:=$F000000+x+1792*y; if adr<$FFFFFFF then ramb^[adr]:=color; end
else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
  begin adr:=$7800000+x+1792*y; if adr<$7FFFFFF then ramw^[adr]:=color; end
else
  begin adr:=$3c00000+x+1792*y; if adr<$3FFFFFF then raml^[adr]:=color; end;
end;


//  ---------------------------------------------------------------------
//   box(x,y,l,h,color)
//   asm procedure - draw a filled rectangle, upper left at position (x,y)
//   length l, height h
//   rev. 2015.10.14
//  ---------------------------------------------------------------------

procedure box(x,y,l,h,c:integer);

 var adr,a,i,j:integer;

label p999,p101,p102,p111,p112,p121,p122,p131,p132;
label a60008;


begin
//repeat until vblank1=0;
if x<0 then x:=0;
if x>1792 then x:=1792;
if y<0 then y:=0;
if y>1120 then y:=1120;
if x+l>1792 then l:=1792-x-1;
if y+h>1120 then h:=1120-y-1 ;
if raml^[$18002]<16 then
  begin
  for j:=y to y+h-1 do
    begin
    adr:=$F000000+1792*j;
    for i:=x to x+l-1 do ramb^[adr+i]:=c;
    end;
  end
else if (raml^[$18002]>=16) and (raml^[$18002]<32) then
  begin
  for j:=y to y+h-1 do
    begin
    adr:=$7800000+1792*j;
    for i:=x to x+l-1 do ramw^[adr+i]:=c;
    end;
  end
else
  begin
  for j:=y to y+h-1 do
    begin
    adr:=$3c00000+1792*j;
    for i:=x to x+l-1 do raml^[adr+i]:=c;
    end;
  end
end;

//  ---------------------------------------------------------------------
//   box2(x1,y1,x2,y2,color)
//   Draw a filled rectangle, upper left at position (x1,y1)
//   lower right at position (x2,y2)
//   wrapper for box procedure
//   rev. 2015.10.17
//  ---------------------------------------------------------------------

procedure box2(x1,y1,x2,y2,color:integer);

begin


if (x1<x2) and (y1<y2) then
   box(x1,y1,x2-x1+1, y2-y1+1,color);

end;


//  ---------------------------------------------------------------------
//   putchar(x,y,ch,color)
//   Draw a 8x16 character at position (x1,y1)
//   STUB, will be replaced by asm procedure
//   rev. 2015.10.14
//  ---------------------------------------------------------------------


procedure putchar(x,y:integer;ch:char;col:integer);

// --- TODO: translate to asm, use system variables

var i,j,start:integer;
  b:byte;

begin
start:=$50000+16*ord(ch);
for i:=0 to 15 do
  begin
  b:=ramb^[start+i];
  for j:=0 to 7 do
    begin
    if (b and (1 shl j))<>0 then
      putpixel(x+j,y+i,col);
    end;
  end;
end;

procedure putcharz(x,y:integer;ch:char;col,xz,yz:integer);

// --- TODO: translate to asm, use system variables

var i,j,k,l,start:integer;
  b:byte;

begin
start:=$50000+16*ord(ch);
for i:=0 to 15 do
  begin
  b:=ramb^[start+i];
  for j:=0 to 7 do
    begin
    if (b and (1 shl j))<>0 then
      for k:=0 to yz-1 do
        for l:=0 to xz-1 do
           putpixel(x+j*xz+l,y+i*yz+k,col);
    end;
  end;
end;

procedure outtextxy(x,y:integer; t:string;c:integer);

var i:integer;

begin
for i:=1 to length(t) do putchar(x+8*i-8,y,t[i],c);
end;

procedure outtextxyz(x,y:integer; t:string;c,xz,yz:integer);

var i:integer;

begin
for i:=0 to length(t)-1 do putcharz(x+8*xz*i,y,t[i+1],c,xz,yz);
end;

procedure scrollup;

var i:integer;

begin
for i:=0 to 447 do raml^[$3c7a800+i]:=raml^[$3c00000+i];
for i:=0 to 501760 do raml^[$3C00000+i]:=raml^[$3c001c0+i];
end;


function noise1:byte;

const a:cardinal=$7FFFF8;
      b22:cardinal=1 shl 22;
      b20:cardinal=1 shl 20;
      b16:cardinal=1 shl 16;
      b13:cardinal=1 shl 13;
      b11:cardinal=1 shl 11;
      b07:cardinal=1 shl 07;
      b04:cardinal=1 shl 04;
      b02:cardinal=1 shl 02;
      b17:cardinal=1 shl 17;

var output:cardinal;
    b: boolean;

begin
output:= (a and b22) shr 15;
output+= (a and b20) shr 14;
output+= (a and b16) shr 11;
output+= (a and b13) shr 9;
output+= (a and b11) shr 8;
output+= (a and b07) shr 5;
output+= (a and b04) shr 3;
output+= (a and b02) shr 2;

b:=((a and b22)>0) xor ((a and b17)>0);
a:=a shl 1;
if b then a:=a or 1;
noise1:=output;
end;

function noise2:cardinal;

const a:int64=$7FFFF8;

var output:int64;
    b: boolean;


begin
output:= (a and 4194304) shr 15;
output+= (a and 1048576) shr 14;
output+= (a and 65536) shr 11;
output+= (a and 8192) shr 9;
output+= (a and 2048) shr 8;
output+= (a and 128) shr 5;
output+= (a and 16) shr 3;
output+= (a and 4) shr 2;
b:=((a and 4194304)>0) xor ((a and 131072)>0);
a:=a shl 1;
if b then a:=a or 1;
noise2:=output;
end;

function noise3:cardinal;

const a:int64=$7FFFF8;
      b22:int64=1 shl 22;
      b20:int64=1 shl 20;
      b16:int64=1 shl 16;
      b13:int64=1 shl 13;
      b11:int64=1 shl 11;
      b07:int64=1 shl 07;
      b04:int64=1 shl 04;
      b02:int64=1 shl 02;
      b17:int64=1 shl 17;

var output:int64;
    b: boolean;

begin
output:= (a and b22) shr 15;
output+= (a and b20) shr 14;
output+= (a and b16) shr 11;
output+= (a and b13) shr 9;
output+= (a and b11) shr 8;
output+= (a and b07) shr 5;
output+= (a and b04) shr 3;
output+= (a and b02) shr 2;

b:=((a and b22)>0) xor ((a and b17)>0);
a:=a shl 1;
if b then a:=a or 1;
noise3:=output;
end;
{

/* Pick out bits to make output value */
output = (bit(reg,22) << 7) |
         (bit(reg,20) << 6) |
         (bit(reg,16) << 5) |
         (bit(reg,13) << 4) |
         (bit(reg,11) << 3) |
         (bit(reg, 7) << 2) |
         (bit(reg, 4) << 1) |
         (bit(reg, 2) << 0);

/* Save bits used to feed bit 0 */
bit22= bit(reg,22);
bit17= bit(reg,17);

/* Shift 1 bit left */
reg= reg << 1;

//(* Feed bit 0 */
reg= reg | (bit22 ^ bit17);

}

function sid(mode:integer):tsample;
       // sid vars

const pa1:double=0;
      pa2:double=0;
      pa3:double=0;
      pa1n:double=0;
      pa2n:double=0;
      pa3n:double=0;

      pa1i:integer=0;
      pa2i:integer=0;
      pa3i:integer=0;
      pa1ni:integer=0;
      pa2ni:integer=0;
      pa3ni:integer=0;

      filter_b:double=0;
      filter_h:double=0;
      filter_l:double=0;

      filter_b2:double=0;
      filter_h2:double=0;
      filter_l2:double=0;

      filter_b3:double=0;
      filter_h3:double=0;
      filter_l3:double=0;


      filter_bi:integer=0;
      filter_hi:integer=0;
      filter_li:integer=0;

      filter_b2i:integer=0;
      filter_h2i:integer=0;
      filter_l2i:integer=0;

      filter_b3i:integer=0;
      filter_h3i:integer=0;
      filter_l3i:integer=0;

//      filter_resonance:double=1;
//      filter_freq:double=0.1;
      wv1:double=0;
      wv2:double=0;
      wv3:double=0;
      wv4i:integer=0;
      wv5i:integer=0;
      adsrvol1i:int64=0;
      adsrvol2i:int64=0;
      adsrvol3i:int64=0;
      adsrstate1:byte=0;
      adsrstate2:byte=0;
      adsrstate3:byte=0;
      sustainvol1i:int64=0;
      sustainvol2i:int64=0;
      sustainvol3i:int64=0;
      oldsc:integer=0;
      sc:integer=0;
      sli:integer=0;
      sri:integer=0;


      freq1:double=0;
      freq1n:double=0;
      freq1i:integer=0;
      freq1ni:integer=0;
      waveform1:word=0;
      gate1:byte=0;
      sa1:byte=0;
      sd1:byte=0;
      ss1:byte=0;
      sr1:byte=0;
      pw1i:integer=0;
      test1:byte=0;
      sync1:integer=0;
      ring1:byte=0;
      f1:boolean=false;

      freq2:double=0;
      freq2n:double=0;
      freq2i:integer=0;
      freq2ni:integer=0;
      waveform2:word=0;
      gate2:byte=0;
      sa2:byte=0;
      sd2:byte=0;
      ss2:byte=0;
      sr2:byte=0;
      pw2i:integer=0;
      test2:byte=0;
      sync2:integer=0;
      ring2:byte=0;
      f2:boolean=false;

      freq3:double=0;
      freq3n:double=0;
      freq3i:integer=0;
      freq3ni:integer=0;
      waveform3:word=0;
      gate3:byte=0;
      sa3:byte=0;
      sd3:byte=0;
      ss3:byte=0;
      sr3:byte=0;
      pw3i:integer=0;
      test3:byte=0;
      sync3:integer=0;
      ring3:byte=0;
      f3:boolean=false;

      ff:word=0;
      filter_resonance2:double=0;
      filter_freq:double=0;
      filter_resonance2i:integer=0;
      filter_freqi:integer=0;
      volume:integer=0;
      c3off:double=0;

      fu:integer=0;
      fl:integer=0;
      fb:integer=0;
      wv1i:integer=0;
      wv2i:integer=0;
      wv3i:integer=0;

var i,sid1,sid1l,ind:integer;
          st:int64;
          pp1,pp2,pp3:byte;
          fout,fout2,fout3,fi,fi2,fi3, wv1a,wv2a,wv3a:double;
 //         wv4i,wv5i:int64;
          wv1ii,wv2ii,wv3ii:int64;
          fii,fi2i,fi3i:integer;
          fouti,fout2i,fout3i:integer;
begin
if mode=1 then  // get regs

  begin
  freq1i:=(32768* (ramb^[$D400]+256*ramb^[$d401])) div 31940;
  freq1ni:=freq1i*16;
  freq2i:=(32768*(ramb^[$d407]+256*ramb^[$d408])) div 31940;
  freq2ni:=freq2i*16;
  freq3i:=(32768*(ramb^[$d40e]+256*ramb^[$d40f])) div 31940;
  freq3ni:=freq3i*16;

  gate1:=ramb^[$d404] and 1;
  ring1:=ramb^[$d404] and 4;
  test1:=ramb^[$d404] and 8;
  sync1:=((ramb^[$d404] and 2) shr 1)-1;
  sd1:=ramb^[$d405] and  $F;
  sa1:=ramb^[$d405] shr 4;
  sr1:=ramb^[$d406]and $F;
  ss1:=ramb^[$d406] shr 4;
  pw1i:=((ramb^[$d402]+256*ramb^[$d403]) and $FFF);

  gate2:=ramb^[$d40b] and 1;
  ring2:=ramb^[$d40b] and 4;
  test2:=ramb^[$d40b] and 8;
  sync2:=((ramb^[$d40b] and 2) shr 1)-1;
  sd2:=ramb^[$d40c] and  $F;
  sa2:=ramb^[$d40c] shr 4;
  sr2:=ramb^[$d40d]and $F;
  ss2:=ramb^[$d40d] shr 4;
  pw2i:=((ramb^[$d409]+256*ramb^[$d40a]) and $FFF);

  gate3:=ramb^[$d412] and 1;
  ring3:=ramb^[$d412] and 4;
  test3:=ramb^[$d412] and 8;
  sync3:=((ramb^[$d412] and 2) shr 1)-1;
  sd3:=ramb^[$d413] and  $F;
  sa3:=ramb^[$d413] shr 4;
  sr3:=ramb^[$d414]and $F;
  ss3:=ramb^[$d414] shr 4;
  pw3i:=((ramb^[$d410]+256*ramb^[$d411]) and $FFF);

  ff:=(ramb^[$d416] shl 3)+(ramb^[$d415] and 7);
  filter_freqi:=(ff+(ff shl 2)+30) shr 2;
  if (ramb^[$d417] and 1)>0 then f1:=true else f1:=false;
  if (ramb^[$d417]  and 2)>0 then f2:=true else f2:=false;
  if (ramb^[$d417]  and 4)>0 then f3:=true else f3:=false;
  fl:=-(ramb^[$d418] and $10) shr 4;
  fb:=-(ramb^[$d418] and $20) shr 5;
  fu:=-(ramb^[$d418] and $40) shr 6;
  filter_resonance2i:=round(256*(0.5+(0.5/(1+(peek($d416) shr 4)))));
  volume:=(peek($d418) and 15);

  waveform1:=ramb^[$d404] shr 4;
  waveform2:=ramb^[$d40b] shr 4;
  waveform3:=ramb^[$d412] shr 4;

  sustainvol1i:=ss1 shl 26;
  sustainvol2i:=ss2 shl 26;
  sustainvol3i:=ss3 shl 26;
  end;

sli:=0; sri:=0;

for i:=1 to 5 do

  begin
  pa1i:=pa1i+freq1i;
  pa1ni:=pa1ni+freq1ni;
  if pa1i>16777216 then
    begin
    pa2i:=pa2i and sync2;
    pa1i-=16777216;
    end;
  if pa1ni>=16777216 then
    begin
    pa1ni-=16777216;
    pp1:=1;
    end
  else pp1:=0;

pa2i:=pa2i+freq2i;
pa2ni:=pa2ni+freq2ni;
if pa2i>16777216 then
  begin
  pa2i-=16777216;
  pa3i:=pa3i and sync3;
  end ;
if pa2ni>=16777216 then
  begin
  pa2ni-=16777216;
  pp2:=1;
  end
else pp2:=0;

pa3i:=pa3i+freq3i;
pa3ni:=pa3ni+freq3ni;
if pa3i>16777216 then begin pa3i-=16777216;  pa1i:=pa1i and sync1; end ;
if pa3ni>=16777216 then
  begin
  pa3ni-=16777216;
  pp3:=1;
  end
else pp3:=0;



  if test1>0 then pa1i:=0;
  if test2>0 then pa2i:=0;
  if test3>0 then pa3i:=0;


  case waveform1 of

  0: ;//wv1i:=0;
  1: begin if (pa1i shr 23 = 0) then wv1i:=(pa1i shl 1)-8388608 else wv1i:=((not (pa1i shl 1)) and $FFFFFF)-8388608; if (ring1>0) and (pa3>0) then wv1i:=-wv1i; end;
  2: wv1i:=pa1i-8388608;
  3: begin ind:=pa1i shr 16; wv1i:=((combined[ind]-128) shl 16); end;
  4: if (pa1i shr 12) < pw1i then wv1i:=-8388608 else wv1i:=8388608;
  5: begin ind:=pa1i shr 16; wv1i:=((combined[ind+256]-128) shl 16); end;
  6: begin ind:=pa1i shr 16; wv1i:=((combined[ind+512]-128) shl 16); end;
  7: begin ind:=pa1i shr 16; wv1i:=((combined[ind+768]-128) shl 16); end;
  8: begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;
  9: wv1i:=pa1i;
  10: wv1i:=pa1i;
  11..15: wv1i:=pa1i;
  else begin if pp1=1 then wv1i:=(noise1-128) shl 16; end;

  end;

  case waveform2 of

  0:; // wv2i:=0;
  1: begin if (pa2i shr 23 = 0) then wv2i:=(pa2i shl 1)-8388608 else wv2i:=((not (pa2i shl 1)) and $FFFFFF)-8388608; if (ring2>0) and (pa1>0) then wv2i:=-wv2i; end;
  2: wv2i:=pa2i-8388608;
  3: begin ind:=pa2i shr 16; wv2i:=((combined[ind]-128) shl 16); end;
  4: if (pa2i shr 12) < pw2i then wv2i:=-8388608 else wv2i:=8388608;
  5: begin ind:=pa2i shr 16; wv2i:=((combined[ind+256]-128) shl 16); end;
  6: begin ind:=pa2i shr 16; wv2i:=((combined[ind+512]-128) shl 16); end;
  7: begin ind:=pa2i shr 16; wv2i:=((combined[ind+768]-128) shl 16); end;
  8: begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
  9: wv2i:=pa2i;
  10: wv2i:=pa2i;
  11..15: wv2i:=pa2i;
  else begin if pp2=1 then wv2i:=(noise2-128) shl 16; end;
  end;

  case waveform3 of

  0:;// wv3i:=0;
  1: begin if (pa3i shr 23 = 0) then wv3i:=(pa3i shl 1)-8388608 else wv3i:=((not (pa3i shl 1)) and $FFFFFF)-8388608; if (ring3>0) and (pa2>0) then wv3i:=-wv3i; end;
  2: wv3i:=pa3i-8388608;
  3: begin ind:=pa3i shr 16; wv3i:=((combined[ind]-128) shl 16); end;
  4: if (pa3i shr 12) < pw3i then wv3i:=-8388608 else wv3i:=8388608;
  5: begin ind:=pa3i shr 16; wv3i:=((combined[ind+256]-128) shl 16); end;
  6: begin ind:=pa3i shr 16; wv3i:=((combined[ind+512]-128) shl 16); end;
  7: begin ind:=pa3i shr 16; wv3i:=((combined[ind+768]-128) shl 16); end;
  8: begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
  9: ;//wv3i:=pa3i;
  10: ; //wv3i:=pa3i;
  11..15: ;//wv3i:=pa3i;
  else begin if pp3=1 then wv3i:=(noise3-128) shl 16; end;
  end;


  if gate1=0 then adsrstate1:=4 else begin if ((adsrstate1=0) or (adsrstate1=4)) then adsrstate1:=1; end;  //release /attack

  if (adsrstate1=3) then adsrvol1i:=sustainvol1i
  else if (adsrstate1=1) then begin adsrvol1i:=adsrvol1i+(attacktablei[sa1]); if adsrvol1i>=1073741824 then adsrstate1:=2; end
  else if (adsrstate1=2) then begin adsrvol1i:=(adsrvol1i*(srtablei[sd1])) shr 30; if adsrvol1i<=sustainvol1i then adsrstate1:=3; end
  else if (adsrstate1=4) then begin adsrvol1i:=(adsrvol1i*(srtablei[sr1])) shr 30; if (adsrvol1i<=65536) then begin adsrstate1:=0; adsrvol1i:=0; end; end
  else adsrvol1i:=0;

  if gate2=0 then adsrstate2:=4 else begin if ((adsrstate2=0) or (adsrstate2=4)) then adsrstate2:=1; end;  //release /attack

  if (adsrstate2=3) then adsrvol2i:=sustainvol2i
  else if (adsrstate2=1) then begin
      adsrvol2i:=adsrvol2i+(attacktablei[sa2]); if adsrvol2i>=1073741824 then adsrstate2:=2; end
  else if (adsrstate2=2) then
    begin
    adsrvol2i:=(adsrvol2i*(srtablei[sd2])) shr 30;
    if adsrvol2i<=sustainvol2i then
      adsrstate2:=3; end
  else if (adsrstate2=4) then begin adsrvol2i:=(adsrvol2i*(srtablei[sr2])) shr 30; if (adsrvol2i<=65536) then begin adsrstate2:=0; adsrvol2i:=0; end; end
  else adsrvol2i:=0;


  if gate3=0 then adsrstate3:=4  else begin if ((adsrstate3=0) or (adsrstate3=4)) then adsrstate3:=1; end;  //release /attack

  if (adsrstate3=3) then adsrvol3i:=sustainvol3i
  else if (adsrstate3=1) then begin adsrvol3i:=adsrvol3i+(attacktablei[sa3]); if adsrvol3i>=1073741824 then adsrstate3:=2; end
  else if (adsrstate3=2) then begin adsrvol3i:=(adsrvol3i*(srtablei[sd3])) shr 30; if adsrvol3i<=sustainvol3i then adsrstate3:=3; end
  else if (adsrstate3=4) then begin adsrvol3i:=(adsrvol3i*(srtablei[sr3])) shr 30; if (adsrvol3i<=65536) then begin adsrstate3:=0; adsrvol3i:=0; end; end
  else adsrvol3i:=0;


  {real adsr: 93-54-26-14-6: 2-4-8-16-30}

  wv1ii:=wv1i*adsrvol1i*ramb^[$70003];    // wv1a:=0;
  wv2ii:=wv2i*adsrvol2i*ramb^[$70004];    // wv2a:=0;
  wv3ii:=wv3i*adsrvol3i*ramb^[$70005];    // wv3a:=0;

// integer

  wv1ii:=(wv1ii div 137438953472);
  wv2ii:=(wv2ii div 137438953472);
  wv3ii:=(wv3ii div 137438953472);

  fii:=1; fi2i:=1; fi3i:=1;
  if f1 then begin fii:=wv1ii; wv1ii:=0; end;
  if f2 then begin fi2i:=wv2ii; wv2ii:=0; end;
  if f3 then begin fi3i:=wv3ii; wv3ii:=0; end;

  filter_Hi  := fii - ((filter_Bi * filter_resonance2i) div 256) - filter_Li;
  filter_H2i  := fi2i - ((filter_B2i * filter_resonance2i) div 256) - filter_L2i;
  filter_H3i  := fi3i - ((filter_B3i * filter_resonance2i) div 256) - filter_L3i;

  filter_Bi += (filter_freqi * filter_Hi) div 32768;
  filter_B2i += (filter_freqi * filter_H2i) div 32768;
  filter_B3i += (filter_freqi * filter_H3i) div 32768;

  filter_Li += (filter_freqi * filter_Bi) div 32768;
  filter_L2i += (filter_freqi * filter_B2i) div 32768;
  filter_L3i += (filter_freqi * filter_B3i) div 32768;

  fouti:=wv1ii;
  fouti+=filter_li and fl;
  fouti+=filter_bi and fb;
  fouti+=filter_hi and fu;

  fout2i:=wv2ii;
  fout2i+=filter_l2i and fl;
  fout2i+=filter_b2i and fb;
  fout2i+=filter_h2i and fu;

  fout3i:=wv3ii;
  fout3i+=filter_l3i and fl;
  fout3i+=filter_b3i and fb;
  fout3i+=filter_h3i and fu;

  wv5i:=(volume*((fouti div 2)+(fout2i div 4)+ (fout2i div 2)+(fout3i)));
  wv4i:=(volume*((fouti)+(fout2i div 4)+ (fout2i div 2)+(fout3i div 2)));


  sri+=wv4i;
  sli+=wv5i;
  end;

sid1:=sri div 512;
sid1l:=sli div 512;
oldsc:=sc;
sc:=sid1+sid1l;
if abs(sc)>65535 then lpoke ($6000c,$FF0000);
//scope[scj div 1]:=sc; inc(scj); if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
sid[0]:=sid1;
sid[1]:=sid1l;
end;


// fm synth


// 1024 operators @ 64 entries




              // 00 - 00 - freq
              // 01 - 04 - c3
              // 02 - 08 - lfo1
              // 03 - 0c - c4
              // 04 - 10 - lfo2
              // 05 - 14 - pa
              // 06 - 18 - mul0
              // 07 - 1c - mul1
              // 08 - 20 - mul2
              // 09 - 24 - mul3
              // 10 - 28 - mul4
              // 11 - 2c - mul5
              // 12 - 30 - mul6
              // 13 - 34 - mul7
              // 14 - 38 - wavetable ptr
              // 15 - 3c - wavetable length
              // 16 - 40 - wavetable loop start
              // 17 - 44 - wavetable loop end
              // 18 - 48 - ar1
              // 19 - 4c - av1
              // 20 - 50 - ar2
              // 21 - 54 - av2
              // 22 - 58 - ar3
              // 23 - 5c - av3
              // 24 - 60 - ar4
              // 25 - 64 - av4
              // 26 - 68 - adsr bias
              // 27 - 6c - c5
              // 28 - 70 - lfo3
              // 29 - 74 - vel
              // 30 - 78 - key sense
              // 31 - 7c - c6
              // 32 - 80 - expression

              // 33..63 reserved









procedure initsinetable ;

var i:integer;
begin
for i:=0 to 65535 do
  sinetable[i]:=round(8388607*sin(2*pi*i/65536));

end;

procedure initlogtable ;

var i:integer;
    q,q2:double;

begin
q:=4294967296;
q2:=0.999841363784793800909651;

for i:=65535 downto 0 do
 begin
  q:=q*q2;
 logtable[i]:=trunc(q);
 end;
end;



function fmsynth:tsample;

var res64a:int64;
    vel,modulator:int64;
    i,j:integer;
    sample:int64;

{
      // 00 - 00 - freq   24 bit
      // 01 - 04 - c3     32 bit  8:24
      // 02 - 08 - lfo1   32 bit  signed
      // 03 - 0c - c4     32 bit  8:24
      // 04 - 10 - lfo2   32 bit  signed
      // 05 - 14 - pa     32 bit
      // 06 - 18 - mul0   24 bit  8:16
      // 07 - 1c - mul1
      // 08 - 20 - mul2
      // 09 - 24 - mul3
      // 10 - 28 - mul4
      // 11 - 2c - mul5
      // 12 - 30 - mul6
      // 13 - 34 - mul7
      // 14 - 38 - wavetable ptr
      // 15 - 3c - wavetable length
      // 16 - 40 - wavetable loop start
      // 17 - 44 - wavetable loop end
      // 18 - 48 - adsr value
      // 19 - 4c - adsr state
      // 20 - 40 - ar1
      // 21 - 54 - av1
      // 22 - 58 - ar2
      // 23 - 5c - av2
      // 24 - 50 - ar3
      // 25 - 64 - av3
      // 26 - 68 - ar4
      // 27 - 6c - av4
      // 28 - 60 - adsr bias
      // 29 - 74 - c5
      // 30 - 78 - lfo3
      // 31 - 7c - vel
      // 32 - 70 - key sense
      // 33 - 84 - c6
      // 34 - 88 - expression
      // 35..63 reserved
      freq:=c1*midi_IN_FREQ+c2
      freq:=freq+c3*lfo1
      freq:=freq*c4*lfo2
      pa:=pa+freq
      mod:=mul0*out0+mul1*out1+...+mul7*out7
      spl:=table[pa+mod]
      spl:=spl*adsr
      spl:=spl+c5*lfo3
      spl:=spl*vel*key sense
      spl:=spl*c6*expr
      out:=spl

}
begin
ft:=gettime;

// stage 1. Compute a new PA

//    freq:=c1*midi_IN_FREQ+c2  <-- set via the control procedure


//    freq:=freq+c3*lfo1
//    freq:=freq*c4*lfo2

//    pa:=pa+freq


// 00 - 00 - freq   24 bit
// 01 - 04 - c3     32 bit  8:24
// 02 - 08 - lfo1   32 bit  signed
// 03 - 0c - c4     32 bit  8:24
// 04 - 10 - lfo2   32 bit  unsigned 8:24
// 05 - 14 - pa     32 bit

 for i:=1 to 1000 do
   begin
  opdata[0]:=(opdata[0]+((opdata[1]*opdata[2]) shr 24)*opdata[3]*opdata[4] shr 24);

  // stage2: compute the modulator

  modulator:=outputtable[0]*opdata[6]
  +outputtable[1]*opdata[7]
  +outputtable[2]*opdata[8]
  +outputtable[3]*opdata[9]
  +outputtable[4]*opdata[10]
  +outputtable[5]*opdata[11]
  +outputtable[6]*opdata[12]
  +outputtable[7]*opdata[13];

  opdata[5]:=((opdata[5]+(modulator shr 32)+opdata[0]));
  // pa is 32 bit; n bit used for addressing
  // todo: what if the sample is looped??

 // stage 3
 // load the sample

    sample:=sinetable[opdata[5]];

    //        stage 4
    //       Compute ADSR

    // 18 - 48 - adsr value
    // 19 - 4c - adsr state
    // 20 - 40 - ar1
    // 21 - 54 - av1
    // 22 - 58 - ar2
    // 23 - 5c - av2
    // 24 - 50 - ar3
    // 25 - 64 - av3
    // 26 - 68 - ar4
    // 27 - 6c - av4


  if opdata[19]=4 then  // release
   begin
   opdata[18]:=opdata[18]+opdata[26];
   if opdata[26]<0 then if opdata[18]<opdata[27] then opdata[19]:=0
                   else if opdata[18]>opdata[27] then opdata[19]:=0;

   end
 else if opdata[19]=1 then //attack
   begin
   opdata[18]:=opdata[18]+opdata[20];
   if opdata[20]>=opdata[21] then opdata[19]:=2;
   end
 else if opdata[19]=2 then  // decay 1
   begin
   opdata[18]:=opdata[18]+opdata[22];
   if opdata[22]<0 then if opdata[18]<opdata[23] then opdata[19]:=3
                   else if opdata[18]>opdata[23] then opdata[19]:=3;
   end

 else if opdata[19]=3 then  // decay 2
   begin
   opdata[18]:=opdata[18]+opdata[24];
   if opdata[24]<0 then if opdata[18]<opdata[25] then opdata[19]:=4
                   else if opdata[18]>opdata[25] then opdata[19]:=4;

   end;

 sample:=(sample*opdata[18])shr 32;


// spl:=spl+c5*lfo3
// spl:=spl*vel*key sense
// spl:=spl*c6*expr
// out:=spl

// 29 - 74 - c5
// 30 - 78 - lfo3
// 31 - 7c - vel
// 32 - 70 - key sense
// 33 - 84 - c6
// 34 - 88 - expression

sample:=(sample*opdata[29]*opdata[30]) shr 24;
vel:=$FFFFFF-opdata[31]+opdata[31]*opdata[32];
sample:=(sample*vel) shr 24;
sample:=(sample*opdata[33]) div $1000000;
sample:=(sample*opdata[34]) div $1000000;

 end;


  // TODO: pan

 ftt:=gettime-ft;



fmsynth[0]:=sample;
fmsynth[1]:=sample;

end;




// --------------- 6 poles Chebyshev antialias filter -------------------------

function antialias6(input:double;var ft:Tfiltertable):double;

const gain:double=6.855532108e+07 ;

begin

ft[0]:=ft[1];
ft[1]:=ft[2];
ft[2]:=ft[3];
ft[3]:=ft[4];
ft[4]:=ft[5];
ft[5]:=ft[6];

ft[6]:=input/gain;

ft[7]:=ft[8];
ft[8]:=ft[9];
ft[9]:=ft[10];
ft[10]:=ft[11];
ft[11]:=ft[12];
ft[12]:=ft[13];

ft[13]:=(ft[0]+ft[6])+6*(ft[1]+ft[5])+15*(ft[3]+ft[4])+20*ft[3]
                     + ( -0.7992422456 * ft[7]) + (  4.9534616898 * ft[8])
                     + (-12.8163705530 * ft[9]) + ( 17.7202717200 * ft[10])
                     + (-13.8090381750 * ft[11]) + (  5.7509166299 * ft[12]);

antialias6:=ft[13];
end;

// ------------- sdl sound initializaton -------------------------------------

function sdl_sound_init:integer;

begin
Result:=0;
desired.freq := 96000;                                     // sample rate
desired.format := AUDIO_S16;                               // 16-bit samples
desired.samples := 480;                                    // samples for 1 callback
desired.channels := 2;                                     // stereo
desired.callback := @AudioCallback;
desired.userdata := nil;

if (SDL_OpenAudio(@desired, @obtained) < 0) then
  begin
  Result:=-2;
  end;
end;

procedure AudioCallback(userdata:pointer; audio:Pbyte; length:integer); cdecl;

var audio2:psmallint;
    s:tsample;
    fs:myfloat;
    t:int64;
    k,i,il,j:integer;
    buf:array[0..25] of byte;
    s1:smallint;


    const aa:integer=0;


begin

audio2:=psmallint(audio);
t:=gettime;

for i:=0 to 479 do
  begin
 gain:=gain*1.0000002;
if gain>1 then gain:=1;

  fs:=0.25*voices[0].getsample;
  for j:=1 to maxchannel-1 do
     fs+=0.25*voices[j].getsample;
  if edelay then fs:=delay1(fs);
  if gain*abs(fs)>1 then gain:=1/(1.01*abs(fs));
 // gain:=1;
  fs:=fs*gain;
  s1:=round(32767*fs);
  s[0]:=s1;
  s[1]:=s1;
 // if ereverb then s:=reverb1(s);

  audio2[2*i]:=s[0];
  audio2[2*i+1]:=s[1];
  oldsc:=sc;
  sc:=s[0]+s[1];
  scope[scj div 1]:=sc; inc(scj); if scj>959 then if (oldsc<0) and (sc>0) then scj:=0 else scj:=959;
  end;

sidtime:=gettime-t;
end;


operator div(a:TSample; b:integer):TSample;

begin
result[0]:=a[0] div b;
result[1]:=a[1] div b;
end;

operator +(a:TSample; b:TSample):TSample;

var q1,q2:integer;
begin
q1:=a[0] + b[0];
q2:=a[1] + b[1];
if q1>32767 then q1:=32767;
if q1<-32767 then q1:=-32767;
if q2>32767 then q2:=32767;
if q2<-32767 then q2:=-32767;
result[0]:=q1;
result[1]:=q2;
end;

function delay1(s:myfloat):myfloat;


begin
result:=(dl[de] / 2) +s;
dl[de]:=(dl[de] / 2) +s;
de:=(de+1) mod da;
end;


function reverb1(s:myfloat):myfloat;

var a1,a2,a3,a4,a5,a6,a7,a8,a9,a10:integer;

const sart:integer=1;

begin
if sart=1 then begin sart:=0; rl[0]:=32767; end;
ra:=657 ;
a1:=(ra+re-160) mod ra;
a2:=(ra+re-192) mod ra;
a3:=(ra+re-256) mod ra;
a4:=(ra+re-320) mod ra;
a5:=(ra+re-352) mod ra;
a6:=(ra+re-384) mod ra;
a6:=(ra+re-448) mod ra;
a7:=(ra+re-480) mod ra;
a8:=(ra+re-512) mod ra;
a9:=(ra+re-576) mod ra;
a10:=(ra+re-640) mod ra;

result:=(rl[re] / 2) +s
 + (rl[a1] / 4)
  + (rl[a2] / 6)
   + (rl[a3] / 8)
    + (rl[a4] / 10)
     + (rl[a5] / 12)
      + (rl[a6] / 14)
       + (rl[a7] / 16)
        + (rl[a8]/ 18)
         + (rl[a9] /20)
           + (rl[a10] / 22)


 ;
rl[re]:=(rl[re] / 2) +s;
re:=(re+1) mod ra;
end;

end.

