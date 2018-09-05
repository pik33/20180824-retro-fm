unit umain;

{$mode objfpc}{$H+}

interface

uses sdl2,sysutils,classes,retro,midi,math;

var
  test:integer ;
  iii, i,j,k,l,fh2,lines:integer;

  event:tsdl_event;
  licznik:integer=0;
  songname:string;
  q1,q2,q3:extended;
  thread:TRetro;
//  songtime:int64=0;
  sprx,sprxd,spryd,spry:integer;
  spr2x,spr2xd,spr2yd,spr2y:integer;
  spr3x,spr3xd,spr3yd,spr3y:integer;
  spr4x,spr4xd,spr4yd,spr4y:integer;
  spr5x,spr5xd,spr5yd,spr5y:integer;
  spr6x,spr6xd,spr6yd,spr6y:integer;
  spr7x,spr7xd,spr7yd,spr7y:integer;
  spr8x,spr8xd,spr8yd,spr8y:integer;

   c:int64=0;
   c6:int64=1;
   avsct:int64=0;
   avspt:int64=0;
   avall:int64=0;
   avsid:int64=0;
   av6502:int64=0;
   ttttt,ttt:int64;
    qq:integer;
 //   songfreq:integer;
    pause:boolean=false;
        sidbuf:array[0..599] of int64;

procedure main1;
procedure main2;

implementation

    uses fmsynth;

procedure main1 ;
var  t:int64;
     i:integer;

begin

// hide all sprites

raml^[$18010]:=$01001100;    raml^[$18011]:=$80040004;
raml^[$18012]:=$01001100;    raml^[$18013]:=$00040004;
raml^[$18014]:=$01001100;    raml^[$18015]:=$00040004;
raml^[$18016]:=$01001100;    raml^[$18017]:=$00040004;
raml^[$18018]:=$01001100;    raml^[$18019]:=$00040004;
raml^[$1801a]:=$01001100;    raml^[$1801b]:=$00040004;
raml^[$1801c]:=$01001100;    raml^[$1801d]:=$00040004;
raml^[$1801e]:=$01001100;    raml^[$1801f]:=$00020002;

// set sprite shapes

for i:=0 to 31 do
  for j:=0 to 31 do  begin
    if j<16 then k:=j*16 else k:=(31-j)*16 ;
    if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14800+i+32*j]:=k else  raml^[$14800+i+32*j]:=$0;
    end;

for i:=0 to 31 do
  for j:=0 to 31 do  begin
    if j<16 then k:=j*16 else k:=(31-j)*16 ;
    k:=k shl 8;
    if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$14C00+i+32*j]:=k else  raml^[$14C00+i+32*j]:=$0;
    end;

for i:=0 to 31 do
  for j:=0 to 31 do  begin
    if j<16 then k:=j*16 else k:=(31-j)*16 ;
    k:=k shl 16;
    if (i<11) or (i>21) or (j<11) or (j>21) then raml^[$15000+i+32*j]:=k else  raml^[$15000+i+32*j]:=$0;
    end;


// --------- main program start


graphics(16);
cls(146);
ttt:=gettime;
outtextxyz(96,16,'The retromachine FM Synth v. 0.01 --- 2016.09.02',154,4,2);
box2(8,64,1784,1112,0);
box2(10,1062,1782,1110,120);
outtextxyz(32,1070,'Screen time:',124,2,2);
k:=raml^[$18000];
raml^[$18003]:=$002040;
setataripallette(1);
setataripallette(2);
setataripallette(3);
sethidecolor(250,0,$FF);
sethidecolor(44,0,$FF);
sethidecolor(190,0,$FF);
sethidecolor(188,0,$FF);
c:=0;
avsct:=0;
avspt:=0;
avall:=0;
avsid:=0;

sdl_pauseaudio(1); sleep(10);
t:=gettime;
for i:=1 to 1000000 do
  voices[0].getsample;
t:=gettime-t;
box(100,100,200,100,0);
outtextxyz(100,100,inttostr(t),44,2,2);
sdl_pauseaudio(0);
box(12,70,440,384,145-48);            outtextxyz(12+425,70,'0',145-48+12,2,2);

outtextxyz(20,70,'Modulators',107,2,2);
outtextxyz(20,110,'0',107,2,2);  box(40,110,64,32,101); outtextxyz(48,110,'127',110,2,2);
outtextxyz(20,150,'1',107,2,2);  box(40,150,64,32,101); outtextxyz(48,150,'127',110,2,2);
outtextxyz(20,190,'2',107,2,2);  box(40,190,64,32,101); outtextxyz(48,190,'127',110,2,2);
outtextxyz(20,230,'3',107,2,2);  box(40,230,64,32,101); outtextxyz(48,230,'127',110,2,2);
outtextxyz(20,270,'4',107,2,2);  box(40,270,64,32,101); outtextxyz(48,270,'127',110,2,2);
outtextxyz(20,310,'5',107,2,2);  box(40,310,64,32,101); outtextxyz(48,310,'127',110,2,2);
outtextxyz(20,350,'6',107,2,2);  box(40,350,64,32,101); outtextxyz(48,350,'127',110,2,2);
outtextxyz(20,390,'7',107,2,2);  box(40,390,64,32,101); outtextxyz(48,390,'127',110,2,2);

outtextxyz(220,70,'ADSR',107,2,2);
outtextxyz(220,110,'R1',107,2,2);  box(260,110,64,32,101); outtextxyz(268,110,'127',110,2,2);
outtextxyz(220,150,'R2',107,2,2);  box(260,150,64,32,101); outtextxyz(268,150,'127',110,2,2);
outtextxyz(220,190,'R3',107,2,2);  box(260,190,64,32,101); outtextxyz(268,190,'127',110,2,2);
outtextxyz(220,230,'R4',107,2,2);  box(260,230,64,32,101); outtextxyz(268,230,'127',110,2,2);
outtextxyz(330,110,'L1',107,2,2);  box(370,110,64,32,101); outtextxyz(378,110,'127',110,2,2);
outtextxyz(330,150,'L2',107,2,2);  box(370,150,64,32,101); outtextxyz(378,150,'127',110,2,2);
outtextxyz(330,190,'L3',107,2,2);  box(370,190,64,32,101); outtextxyz(378,190,'127',110,2,2);
outtextxyz(330,230,'L4',107,2,2);  box(370,230,64,32,101); outtextxyz(378,230,'127',110,2,2);
//outtextxyz(220,270,'4',107,2,2);  box(240,270,64,32,101); outtextxyz(248,270,'127',110,2,2);
//outtextxyz(220,310,'5',107,2,2);  box(240,310,64,32,101); outtextxyz(248,310,'127',110,2,2);
//outtextxyz(220,350,'6',107,2,2);  box(240,350,64,32,101); outtextxyz(248,350,'127',110,2,2);
//outtextxyz(220,390,'7',107,2,2);  box(240,390,64,32,101); outtextxyz(248,390,'127',110,2,2);
//adsrbias:=0;
// c1,c2,c3,c4,c5,c6
//keysense:=1;
//todo: adsr scaling i vol scaling


box(12+443,70,440,384,145-32);        outtextxyz(12+443+425,70,'1',145-32+12,2,2);
box(12+2*443,70,440,384,145-16);      outtextxyz(12+2*443+425,70,'2',145-16+12,2,2);
box(12+3*443,70,440,384,145);         outtextxyz(12+3*443+425,70,'3',145+12,2,2);
box(12,70+388,440,384,145+16);        outtextxyz(12+425,70+388,'4',145+16+12,2,2);
box(12+443,70+388,440,384,145+32);    outtextxyz(12+443+425,70+388,'5',145+32+12,2,2);
box(12+2*443,70+388,440,384,145+48);  outtextxyz(12+2*443+425,70+388,'6',145+48+12,2,2);
box(12+3*443,70+388,440,384,145+64);  outtextxyz(12+3*443+425,70+388,'7',145+64+12,2,2);
//for i:=0 to 127 do outtextxy(8*i,800,chr(i),15);
end;


procedure main2;

var ii,iii,il,i:integer;
    buf:array[0..24] of byte;
    mm,hh,ss:int64;
    mms,hhs,sss,kwas:string;
    rect:tsdl_rect;
    f,aa,aaa,aaaa:integer;
    md:cardinal;

    const sidptr:integer=0;

begin
      // a=7493

k:=raml^[$18000];
repeat
until raml^[$18000]>k;


//
//SDL_GetDisplayBounds(0,@rect) ;
c:=c+1;
if time6502>0 then c6+=1;
ss:=(songtime div 1000000) mod 60;
mm:=(songtime div 60000000) mod 60;
hh:=(songtime div 3600000000);
sss:=inttostr(ss); if ss<10 then sss:='0'+sss;
mms:=inttostr(mm); if mm<10 then mms:='0'+mms;
hhs:=inttostr(hh); if hh<10 then hhs:='0'+hhs;
songfreq:=1000000 div siddelay;

//avsid:=sidtime;
avsid:=0;
sidbuf[sidptr]:=sidtime;
sidptr:=(sidptr+1) mod 60;
for i:=0 to 59 do avsid+=sidbuf[i];
avsid:=avsid div 60;
avsct:=avsct+tim;
avspt:=avspt+ts;
avall:=avall+t3;
av6502:=av6502+time6502;
box2(10,1062,1782,1110,118);
outtextxyz(32,1070,'Avg screen time: '+inttostr(round(avsct/c))+' us',76,2,2);
outtextxyz(438,1070,'Avg sprite time: '+inttostr(round(avspt/c))+' us',186,2,2);
outtextxyz(828,1070,'Avg FM time: '+inttostr(avsid)+' us',233,2,2);




box2(12,860,896,1047,178);
box2(14,950,894,951,40);
box2(14,1014,894,1015,40);
box2(14,886,894,887,40);
for j:=20 to 840 do if abs(scope[j])<46000 then box(24+j,950-scope[j] div 512,2,2,190);
//scj:=0;

sprx:=round(dpeek($d400)/40+74);
spry:=920-3*(peek($d406) and $F0);
raml^[$18010]:=(spry shl 16)+sprx+2048*(1-peek($70003));

spr2x:=round(dpeek($d407)/40+74);
spr2y:=920-3*(peek($d40d) and $F0);

raml^[$18012]:=(spr2y shl 16)+spr2x+2048*(1-peek($70004));

spr3x:=round(dpeek($d40e)/40+74);
spr3y:=920-3*(peek($d414) and $F0);

raml^[$18014]:=(spr3y shl 16)+spr3x+2048*(1-peek($70005));

raml^[$1801e]:=raml^[$1800B];
//box(0,0,300,100,0); outtextxyz(0,0,floattostr(ftt),15,2,2) ;
box(500,500,300,100,0); outtextxyz(500,500,floattostr(gain),42,2,2);  outtextxyz(500,550,floattostr(fnotes[69]),42,2,2);

end;


end.

