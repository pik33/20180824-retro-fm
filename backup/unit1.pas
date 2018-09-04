unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  umain,retro,sdl2,unit6502,windows, unit65032,midi,synthcontrol;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
procedure sidopen (fh:integer);     forward;
function loadxi(filename:string):integer;   forward;
{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

label p101;

var s,currentdir,currentdir2:string;
    sr:tsearchrec;
    filenames:array[0..1000,0..1] of string;
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

  if dpeek($60028)=16445 then begin edelay:=not edelay; dpoke($60028,0); end;  //f4=delay

          // adsr test
          if dpeek($60028)=16447 then begin att:=att*1.1; dpoke($60028,0); end; //f5=reverb
          if dpeek($60028)=16448 then begin att:=att/1.1; ereverb:=not ereverb; dpoke($60028,0); end; //f5=reverb
          box(100,800,500,100,0); outtextxyz(100,800,floattostr(1/(96000*att)),15,2,2);
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
until (peek($6002b)<>0) and (peek($60028)=27) ;
timer1:=-1;
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
dd0:=0;
for i:=0 to 1023 do a[i]:=sin(2*pi*i/512);
for i:=0 to 65535 do
  begin
  q:=sin(2*pi*i/65536);
  i2:=i div 128;
  i3:=i2+1; if i3>512 then i3:=0;

  q1:=a[i2];
  q2:=a[i3];
  d:=(i mod 128)/128;
  q3:=d*q2+(1-d)*q1;
  dd:=abs(q3-q);
  if dd>dd0 then begin dd0:=dd; i0:=i; end;




  end;
memo1.lines.add(floattostr(1/dd0));
memo1.lines.add(inttostr(i0));
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

procedure sidopen (fh:integer);

var i:integer;
  speed:cardinal;
  version,offset,load,startsong,flags:word;

  magic:string[4]='    ';
  dump:word;
  il,b:byte;

begin
reset6502;
title:='                                ';
author:='                                ';
copyright:='                                ';




  fileread(fh,version,2); version:=(version shl 8) or (version shr 8);
  fileread(fh,offset,2); offset:=(offset shl 8) or (offset shr 8);
  fileread(fh,load,2); load:=(load shl 8) or (load shr 8);
  fileread(fh,init,2); init:=(init shl 8) or (init shr 8);
  fileread(fh,play,2);  play:=(play shl 8) or (play shr 8);
  fileread(fh,songs,2); songs:=(songs shl 8) or (songs shr 8);
  fileread(fh,startsong,2); startsong:=(startsong shl 8) or (startsong shr 8);
  fileread(fh,speed,4);
  speed:=speed shr 24+((speed shr 8) and $0000FF00) + ((speed shl 8) and $00FF0000) + (speed shl 24);
  fileread(fh,title[1],32);
  fileread(fh,author[1],32);
  fileread(fh,copyright[1],32);
  if version>1 then begin
    fileread(fh,flags,2); flags:=(flags shl 8) or (flags shr 8);
    fileread(fh,dump,2);
    fileread(fh,dump,2);
    b:=0; if load=0 then begin b:=1; fileread(fh,load,2); end;
  end;
  for i:=1 to 32 do if byte(title[i])=$F1 then title[i]:=char(26);
  for i:=1 to 32 do if byte(author[i])=$F1 then author[i]:=char(26);
  box(18,132,800,600,178);
  outtextxyz(18,132,'type: PSID',188,2,2);
  outtextxyz(18,164,'version: '+inttostr(version),188,2,2);
  outtextxyz(18,196,'offset: ' +inttohex(offset,4),188,2,2);
  outtextxyz(18,228,'load: '+inttohex(load,4),188-144*b,2,2);
  outtextxyz(18,260,'init: '+inttohex(init,4),188,2,2);
  outtextxyz(18,292,'play: '+inttohex(play,4),188,2,2);
  outtextxyz(18,324,'songs: '+inttostr(songs),188,2,2);
  outtextxyz(18,356,'startsong: '+inttostr(startsong),188,2,2);
  outtextxyz(18,388,'speed: '+inttohex(speed,8),188,2,2);
  outtextxyz(18,420,'title: '+title,188,2,2);
  outtextxyz(18,452,'author: '+author,188,2,2);
  outtextxyz(18,484,'copyright: '+copyright,188,2,2);
  outtextxyz(18,516,'flags: '+inttohex(flags,4),188,2,2);
//  if (flags and 1)<>0 then memo1.lines.add('Sidplayer MUS file') else memo1.lines.add('Standard SID file');
//  if (flags and 2)<>0 then memo1.lines.add('PSID') else memo1.lines.add('C64');
  song:=startsong-1;
fuck:=0;
  for i:=0 to 100000000 do begin end;
  reset6502;
  for i:=0 to 65535 do write6502(i,0);
  repeat
    il:=fileread(fh,b,1);
    write6502(load,b);
    load+=1;
  until il<>1;
  fileseek(fh,0,fsfrombeginning);

  reset6502;
 // a:=1;
 jsr6502(song,init);
 cia:=read6502($dc04)+256*read6502($dc05);
 outtextxyz(18,578,'cia: '+inttohex(read6502($dc04)+256*read6502($dc05),4),188,2,2);

//  fileclose(fh);

end;
function loadxi(filename:string):integer;

// returns number of samples loaded;
// up to 16 samples can be loaded in this version

type TSampleinfo=record
     slen,sls,sll:cardinal;
     vol,finetune,sampletype,pan:byte;
     relnote:shortint;
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

