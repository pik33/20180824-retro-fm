unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  umain,retro,sdl2,windows, midi,synthcontrol, fft;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    fft1: TDSXFastFourier;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure fft1GetData(index: integer; var Value: TComplex);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  var ram6502:array[0..65535] of byte;
  fuck:integer=0;
  fuck2:integer=0;
  cia:integer;
  song:word=0;
  songs:word=0;
  init:word;
  title,author,copyright:string[32];
  sc:TSynthCtrl;

implementation


uses unit2,fmsynth;

{$R *.lfm}

function loadxi(filename:string):integer;   forward;
{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

label p101;

var s,currentdir,currentdir2:string;
    sr:tsearchrec;
    filenames:array[0..1000,0..1] of string;
    filename:string;
    fh:integer;
    directories:array[0..1000] of string;
    l,i,j,ilf,ild,ild2,ild3:integer;
    sel:integer=0;
    selstart:integer=0;
    buf:array[0..25] of  byte;
    fn:string;
    d:char;
    testt:int64;

begin

initmachine(0); //---------- Start the retromachine -------------------
poke($70002,0);
application.processmessages;
main1;

currentdir2:='d:\sid\';
//setcurrentdir(currentdir2);

application.processmessages;

poke ($70001,1);


openmidi;
filetype:=4;
sc:=TSynthctrl.create(true);
sc.Start;



repeat
  main2;

//  if peek($60028)=ord('p') then begin poke ($60028,0); pause:=not pause; if pause then sdl_pauseaudio(1) else sdl_pauseaudio(0); end;

  if dpeek($60028)=16446 then begin edelay:=not edelay; dpoke($60028,0); end;  //f4=delay
  if dpeek($60028)=16447 then begin ns:=not ns; dpoke($60028,0); end;  //f6=scale
 // if dpeek($60028)=16442 then begin waveidx+=1; if waveidx>=soundindex then waveidx:=soundindex-1;  dpoke($60028,0); end;  //f4=delay
//  if dpeek($60028)=16443 then begin waveidx-=1; if waveidx<0 then waveidx:=0;  dpoke($60028,0); end;  //f4=delay
  if dpeek($60028)=16444 then begin transpose+=1; dpoke($60028,0); end;  //f4=delay
  if dpeek($60028)=16445 then begin transpose-=1; dpoke($60028,0); end;  //f4=delay
          // adsr test
//          if dpeek($60028)=16447 then begin att:=att*1.1; dpoke($60028,0); end; //f5=reverb
 //         if dpeek($60028)=16448 then begin att:=att/1.1; ereverb:=not ereverb; dpoke($60028,0); end; //f5=reverb

          // end adsr test

  if (dpeek($60028)=16451) and (peek($70002)=0) then         // f10 toggles fullscreen
    begin
    dpoke($60028,0);
    repeat until peek($70000)=1;
    poke ($70000,2);
    SDL_DestroyTexture( sdlTexture );
    SDL_DestroyRenderer( sdlRenderer );
    poke($70002,1);
    sdl_setwindowfullscreen(scr,sdl_window_fullscreen_desktop);
    sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
    sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
    SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
    poke ($70000,1);
    end;

  if ((dpeek($60028)=16451)) and (peek($70002)=1) then
    begin
    poke($60028,0);
    repeat until peek($70000)=1;
    poke ($70000,2);
    SDL_DestroyTexture( sdlTexture );
    SDL_DestroyRenderer( sdlRenderer );
    poke($70002,0);
    sdl_setwindowfullscreen(scr,0);
    sdlRenderer := SDL_CreateRenderer(scr, -1, 14);
    sdlTexture := SDL_CreateTexture(sdlRenderer,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STreaming,1920,1200);
    SDL_RenderSetLogicalSize(sdlRenderer,1920,1200);
    poke ($70000,1);
    end;

  application.processmessages;
until {(peek($6002b)<>0) and (peek($60028)=27) or}(dpeek ($60028)=16453) or (peek($70004)=1);
timer1:=-1;

i:=acontrols[512];
presets[i]:=acontrols;
filename:=getuserdir+'retrofm.cfg';
fh:=filecreate(filename,$40);
filewrite(fh,presets,sizeof(presets));
fileclose(fh);
stopmachine;
halt;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 if opendialog1.execute then loadxi(opendialog1.filename);
end;

procedure TForm1.Button3Click(Sender: TObject);

var a:array[0..1023] of double;
    i,i2,i3,i0:integer;
    d,dd,dd0,q,q1,q2,q3:double;

begin
form2.show;
end;

procedure TForm1.fft1GetData(index: integer; var Value: TComplex);
begin
   if index<waves1[sampleindex1].len then value.real:=fftwave[index] else value.real:=0;
  value.imag:=0;
end;


procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
 closeaction:=cafree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 DefaultFormatSettings.DecimalSeparator := '.';
// button1.click;
end;

function loadxi(filename:string):integer;

// returns number of samples loaded;
// up to 16 samples can be loaded in this version

type TSampleinfo=record
     slen,sls,sll:cardinal;
     vol,finetune,sampletype,pan:byte;
     relnote:byte;
     snl:byte;
     samplename:array[0..21] of char;
     end;

var samplenum:word;
    head1:array[0..63] of char;
    head2:array[0..$e7] of byte;
    sampleinfo:array[0..15] of TSampleInfo ;
    i,j,spl:integer;
    s:string;
    sampleptr:^double;
    isampleptr:^smallint;

begin
fh:=fileopen(filename,$40);
fileread(fh,head1,$40);  //text header
fileread(fh,head2,$e8);  //inst headers
fileread(fh,samplenum,2);
for i:=0 to samplenum-1 do fileread(fh,sampleinfo[i],40);
fileclose(fh);
form1.memo1.lines.clear;
form1.memo1.lines.add('Samples: '+inttostr(samplenum));
form1.memo1.lines.add('');
for i:=0 to samplenum-1 do
  begin
  s:='';
  for j:=0 to 21 do s+=sampleinfo[i].samplename[j];

  form1.memo1.lines.add('Sample name: '+s);
  form1.memo1.lines.add('Sample length: '+inttostr(sampleinfo[i].slen));
  form1.memo1.lines.add('Sample loop start: '+inttostr(sampleinfo[i].sls));
  form1.memo1.lines.add('Sample loop length: '+inttostr(sampleinfo[i].sll));
  form1.memo1.lines.add('Sample type :'+inttohex(sampleinfo[i].sampletype,2));
  form1.memo1.lines.add('finetune :'+inttohex(sampleinfo[i].finetune,2));
  form1.memo1.lines.add('pan :'+inttohex(sampleinfo[i].pan,2));
  form1.memo1.lines.add('relnote :'+inttohex(sampleinfo[i].relnote,2));
  form1.memo1.lines.add('volume :'+inttohex(sampleinfo[i].vol,2));
  form1.memo1.lines.add('');
//  wavesamples[waveindex].wave:=getmem(4*sampleinfo[i].slen);
 // fileread(fh,wavesamples[waveindex].wave^,sampleinfo[i].slen);
//  sampleptr:= wavesamples[waveindex].wave;
//  spl:=0;
///  for j:=0 to (sampleinfo[i].slen div 2) - 1 do
 //   begin
//    spl:=spl+isampleptr[j];
//    sampleptr[j]:=spl;
//    end;
//  for j:=   (sampleinfo[i].slen div 2) - 1 downto 0 do  sampleptr[j]:=isampleptr[j]/32768;

  //todo: check bit depth
//  wavesamples[waveindex].len:=sampleinfo[i].slen div 2;
//  wavesamples[waveindex].lstart:=sampleinfo[i].sls div 2;
//  wavesamples[waveindex].lend:=((sampleinfo[i].sls+sampleinfo[i].sll) div 2)-1;
//  waveindex+=1;
  end;
//for i:=0 to samplenum do
end;


end.

