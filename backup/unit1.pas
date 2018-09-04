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


songtime:=0;
pause:=false;
siddelay:=20000;
//sleep(100000);
initmachine(0); //---------- Start the retromachine -------------------
poke($70002,0);
application.processmessages;
exec65032;
main1;
//testt:=gettime;
//for i:=1 to 1000000000 do noise2;
//testt:=gettime-testt;
//outtextxyz(200,200,inttostr(testt),56,4,4);


currentdir2:='d:\sid\';
//setcurrentdir('d:\sid');
setcurrentdir(currentdir2);
//box2(897,67,1782,115,36);
s:=currentdir2;
if length(s)>55 then s:=copy(s,1,55);
l:=length(s);

outtextxyz(1344-8*l,75,s,44,2,2);

ilf:=0;
if length(currentdir2)=3 then
  begin
  // Search all drive letters
  for d := 'A' to 'Z' do
    begin
    s := d + ':\';
    case GetDriveType(PChar(s)) of
  {  DRIVE_REMOVABLE,}
       DRIVE_FIXED,
   {  DRIVE_REMOTE,      }
       DRIVE_CDROM
    { DRIVE_RAMDISK}:    begin
                         filenames[ilf,0]:=s;
                         filenames[ilf,1]:='[DIR]';
                         ilf+=1;
                        end;
    end;
  end;


end;


currentdir:=currentdir2+'*.*';
if findfirst(currentdir,fadirectory,sr)=0 then
  repeat
  if (sr.attr and faDirectory) = faDirectory then
    begin
    filenames[ilf,0]:=sr.name;
    filenames[ilf,1]:='[DIR]';
    ilf+=1;
    end;
  until (findnext(sr)<>0) or (ilf=1000);
  sysutils.findclose(sr);

currentdir:=currentdir2+'*.sid';

if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
  filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

currentdir:=currentdir2+'*.dmp';
if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
    filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);
//currentdir2:=currentdir2+'\dmp\';


//box(920,132,840,32,36);
if ilf<26 then ild:=ilf-1 else ild:=26;
for i:=0 to ild do
  begin
  if filenames[i,1]='' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
  if filenames[i,1]='' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
  if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
  for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
  if filenames[i,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
  if filenames[i,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
  end;
application.processmessages;
poke($70003,1);
poke($70004,1);
poke($70005,1);
poke ($70001,1);


openmidi;
filetype:=4;
sc:=TSynthctrl.create(true);
sc.Start;




repeat
  if not pause then main2 else begin timer1:=-1; for i:=$d400 to $d400+25 do poke(i,0); end;

  if peek($60028)=ord('5') then begin poke ($60028,0); siddelay:=20000; songfreq:=50; skip:=0; end;
  if peek($60028)=ord('1') then begin poke ($60028,0); siddelay:=10000; songfreq:=100; skip:=0; end;
  if peek($60028)=ord('2') then begin poke ($60028,0); siddelay:=5000; songfreq:=200; skip:=0;end;
  if peek($60028)=ord('3') then begin poke ($60028,0); siddelay:=6666; songfreq:=150; skip:=0; end;
  if peek($60028)=ord('4') then begin poke ($60028,0); siddelay:=2500; songfreq:=400; skip:=0; end;
//  if peek($60028)=ord('p') then begin poke ($60028,0); pause:=not pause; if pause then sdl_pauseaudio(1) else sdl_pauseaudio(0); end;
  if dpeek($60028)=16442 then begin dpoke($60028,0); if peek($70003)=0 then poke ($70003,1) else poke ($70003,0); end;
  if dpeek($60028)=16443 then begin dpoke($60028,0); if peek($70004)=0 then poke ($70004,1) else poke ($70004,0); end;
  if dpeek($60028)=16444 then begin dpoke($60028,0); if peek($70005)=0 then poke ($70005,1) else poke ($70005,0); end;

  if dpeek($60028)=16445 then begin edelay:=not edelay;   dpoke($60028,0); end;  //f4=delay
  if dpeek($60028)=16446 then begin ereverb:=not ereverb; dpoke($60028,0); end; //f5=reverb
  if dpeek($60028)=16447 then begin att:=att*1.1; dpoke($60028,0); end; //f5=reverb
  if dpeek($60028)=16448 then begin att:=att/1.1; ereverb:=not ereverb; dpoke($60028,0); end; //f5=reverb
  box(100,800,200,100,0); outtextxyz(100,800,floattostr(96000/att),15,2,2);
if dpeek($60028)=16465 then
    begin
    dpoke($60028,0);
    if sel<ild then
      begin
      box(920,132+32*sel,840,32,34);
      if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
      if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
      if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
      for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
      if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
      if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;

      sel+=1;
      box(920,132+32*sel,840,32,36);
      if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
      if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
       if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
      for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
      if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
      if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;

      end
    else if sel+selstart<ilf-1 then
      begin
      selstart+=1;
      box2(897,118,1782,1008,34);
      box(920,132+32*sel,840,32,36);
      for i:=0 to ild do
        begin
        if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
        if filenames[i+selstart,1]='' then  s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
          if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
        for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
        if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
        if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
        end;
      end;
    end;

  if dpeek($60028)=16466 then
    begin
    dpoke($60028,0);
    if sel>0 then
      begin
      box(920,132+32*sel,840,32,34);
      if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
      if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
      if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
      for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
      if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
      if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;

      sel-=1;
      box(920,132+32*sel,840,32,36);
      if filenames[sel+selstart,1]='' then l:=length(filenames[sel+selstart,0])-4 else  l:=length(filenames[sel+selstart,0]);
      if filenames[sel+selstart,1]='' then  s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4) else s:=filenames[sel+selstart,0];
      if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
      for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
      if filenames[sel+selstart,1]='' then outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);
      if filenames[sel+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*(sel),s,44,2,2);  outtextxyz(1672,132+32*(sel),'[DIR]',44,2,2);   end;

      end
    else if sel+selstart>0 then
      begin
      selstart-=1;
      box2(897,118,1782,1008,34);
      box(920,132+32*sel,840,32,36);
      for i:=0 to ild do
        begin
        if filenames[i+selstart,1]='' then l:=length(filenames[i+selstart,0])-4 else  l:=length(filenames[i+selstart,0]);
        if filenames[i+selstart,1]='' then s:=copy(filenames[i+selstart,0],1,length(filenames[i+selstart,0])-4) else s:=filenames[i+selstart,0];
        if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
        for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
        if filenames[i+selstart,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
        if filenames[i+selstart,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;

        end;
      end;
    end;

  if dpeek($60028)=16471 then
    begin
    dpoke($60028,0);
    if songs>0 then
      begin
      if song<songs then
        begin
        sdl_pauseaudio(1);
        for i:=1 to 100000000 do;
        song+=1;
        jsr6502(song,init);
        sdl_pauseaudio(0);
        end;
      end;
    end;

   if dpeek($60028)=16470 then
    begin
    dpoke($60028,0);
    if songs>0 then
      begin
      if song>0 then
        begin
        sdl_pauseaudio(1);
        for i:=1 to 100000000 do;
        song-=1;
        jsr6502(song,init);
        sdl_pauseaudio(0);
        end;
      end;
    end;

  if peek($60028)=13 then
    begin
    if filenames[sel+selstart,1]='[DIR]' then
      begin
      box2(897,118,1782,1008,34);
      s:=filenames[sel+selstart,0];
      if copy(s,length(s),1)<>'\' then
        begin
        setcurrentdir(currentdir2+s);
        currentdir2:=getcurrentdir+'\';
        if copy(currentdir2,length(currentdir2)-1,2)='\\'then currentdir2:=copy(currentdir2,1,length(currentdir2)-1);
        end
      else
        begin
        setcurrentdir(s);
        currentdir2:=getcurrentdir;
        end;

 ilf:=0;
if length(currentdir2)=3 then
  begin
  // Search all drive letters
  for d := 'A' to 'Z' do
    begin
    s := d + ':\';
    case GetDriveType(PChar(s)) of
  {  DRIVE_REMOVABLE,}
       DRIVE_FIXED,
   {  DRIVE_REMOTE,      }
       DRIVE_CDROM
    { DRIVE_RAMDISK}:    begin
                         filenames[ilf,0]:=s;
                         filenames[ilf,1]:='[DIR]';
                         ilf+=1;
                        end;
    end;
  end;


end;


currentdir:=currentdir2+'*.*';
if findfirst(currentdir,fadirectory,sr)=0 then
  repeat
  if (sr.attr and faDirectory) = faDirectory then
    begin
    filenames[ilf,0]:=sr.name;
    filenames[ilf,1]:='[DIR]';
    ilf+=1;
    end;
  until (findnext(sr)<>0) or (ilf=1000);
  sysutils.findclose(sr);

currentdir:=currentdir2+'*.sid';

if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
  filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);

currentdir:=currentdir2+'*.dmp';
if findfirst(currentdir,faAnyFile,sr)=0 then
  repeat
  filenames[ilf,0]:=sr.name;
    filenames[ilf,1]:='';
  ilf+=1;
  until (findnext(sr)<>0) or (ilf=1000);
sysutils.findclose(sr);
//currentdir2:=currentdir2+'\dmp\';


box(920,132,840,32,36);
if ilf<26 then ild:=ilf-1 else ild:=26;
for i:=0 to ild do
  begin
  if filenames[i,1]='' then l:=length(filenames[i,0])-4 else  l:=length(filenames[i,0]);
  if filenames[i,1]='' then  s:=copy(filenames[i,0],1,length(filenames[i,0])-4) else s:=filenames[i,0];
  if length(s)>40 then begin s:=copy(s,1,40); l:=40; end;
  for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
  if filenames[i,1]='' then outtextxyz(1344-8*l,132+32*i,s,44,2,2);
  if filenames[i,1]='[DIR]' then begin outtextxyz(1344-8*l,132+32*i,s,44,2,2);  outtextxyz(1672,132+32*i,'[DIR]',44,2,2);   end;
  end;
application.processmessages;
       sel:=0; selstart:=0;
       box2(897,67,1782,115,36);
       s:=currentdir2;
       if length(s)>55 then s:=copy(s,1,55);
       l:=length(s);

       outtextxyz(1344-8*l,75,s,44,2,2);

           poke($60028,0);
      end
  else begin
    sdl_pauseaudio(1);
    poke($60028,0);
    fuck:=0;
    repeat until fuck2=0;
    if fh>=0 then fileclose(fh);
    fh:=-1;
    songtime:=0;
    timer1:=-1;
    for i:=0 to 6 do raml^[$3500+i]:=0;
    fh:=-1;
    fn:= currentdir2+filenames[sel+selstart,0];
    fh:=fileopen(fn,$40);
    s:=copy(filenames[sel+selstart,0],1,length(filenames[sel+selstart,0])-4);
    for j:=1 to length(s) do if s[j]='_' then s[j]:=' ';
    siddelay:=20000;
    filetype:=0;
    fileread(fh,buf,4);
    if (buf[0]=ord('S')) and (buf[1]=ord('D')) and (buf[2]=ord('M')) and (buf[3]=ord('P')) then
       begin
       box(18,132,800,600,178);
       outtextxyz(18,132,'type: SDMP',188,2,2);
       songs:=0;
       fileread(fh,buf,4);
       siddelay:=1000000 div buf[0];
       outtextxyz(18,196,'speed: '+inttostr(buf[0])+' Hz',188,2,2);
       title:='                                ';
       fileread(fh,title[1],16);
       fileread(fh,buf,1);
       outtextxyz(18,164,'title: '+title,188,2,2);
        box(18,912,800,32,244);
       outtextxyz(18,912,'SIDCog DMP file, '+inttostr(songfreq)+' Hz',250,2,2);
       end
    else if (buf[0]=ord('P')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
       begin
       reset6502;
       sidopen(fh);
       if cia>0 then siddelay:={985248}1000000 div (50*round(19652/cia));
       filetype:=1;
       fuck:=1;
       box(18,912,800,32,244);
       outtextxyz(18,912,'PSID file, '+inttostr(1000000 div siddelay)+' Hz',250,2,2);

       end
    else if (buf[0]=ord('R')) and (buf[1]=ord('S')) and (buf[2]=ord('I')) and (buf[3]=ord('D')) then
       begin
//       reset6502;
//       sidopen(fh);
//       if cia>0 then siddelay:=1000000 div (50*round(19652/cia));
//       filetype:=1;
//       fuck:=1;
//       box(18,912,800,32,244);
         box(18,132,800,600,178);
       outtextxyz(18,132,'type: RSID, not yet supported',44,2,2);
       goto p101;
       end

    else
     begin
      fileread(fh,buf,21);
      box(18,132,800,600,178);
      outtextxyz(18,132,'type: unknown, 50 Hz SDMP assumed',188,2,2);
       box(18,912,800,32,244);
     outtextxyz(18,912,'SIDCog DMP file, 50 Hz',250,2,2);
      end;

 //   if siddelay<5000 then begin siddelay:=siddelay*2; skip:=1; end else
       skip:=0;
    songname:=s;
    songtime:=0;
    timer1:=-1;
    for i:=0 to 1000000 do;
    sdl_pauseaudio(0);
    end;
    end;
p101:
  if peek($60028)=ord('i') then begin poke ($60028,0); poke($70001, peek($70001) xor 1); end;

  if (peek($60028)=ord('f')) and (peek($70002)=0) then
    begin
    poke($60028,0);
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

  if (peek($60028)=ord('f')) and (peek($70002)=1) then
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

