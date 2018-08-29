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

procedure main1;
procedure main2;

implementation



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
outtextxyz(96,16,'The retromachine SID player v. 0.04 --- 2016.04.28',154,4,2);
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
box2(10,1011,1782,1012,256+16);
box2(10,1013,1782,1014,256+17);
box2(10,1015,1782,1016,256+18);
box2(10,1017,1782,1018,256+19);
box2(10,1019,1782,1020,256+20);
box2(10,1021,1782,1022,256+21);
box2(10,1023,1782,1024,256+22);
box2(10,1025,1782,1026,256+23);
box2(10,1027,1782,1028,256+24);
box2(10,1029,1782,1030,256+25);
box2(10,1031,1782,1032,256+26);
box2(10,1033,1782,1034,256+27);
box2(10,1035,1782,1036,256+28);
box2(10,1037,1782,1038,256+29);
box2(10,1039,1782,1040,256+30);
box2(10,1041,1782,1042,256+31);
box2(10,1043,1782,1044,256+32);
box2(10,1045,1782,1046,256+33);
box2(10,1047,1782,1048,256+34);
box2(10,1049,1782,1050,256+35);
box2(10,1051,1782,1052,256+36);
box2(10,1053,1782,1054,256+37);
box2(10,1055,1782,1056,256+38);
box2(10,1057,1782,1058,256+39);
outtextxyz(24,1019,'A retromachine SID player by pik33 --- inspired by Johannes Ahlebrand''s Parallax Propeller SIDCog',256+135,2,2);
blit($F000000,10,1011,$F800000,10,1011,1771,48,1792,1792);
box2(10,800,894,848,246);
box2(10,851,894,1008,244);
outtextxyz(320,808,'Now playing',250,2,2);
box2(10,118,894,797,178);
box2(10,67,894,115,180);
outtextxyz(320,75,'File info',188,2,2);
box2(897,118,1782,1008,34);
box2(897,67,1782,115,36);
outtextxyz(1296,75,'Files',47,2,2);
sdl_pauseaudio(1); sleep(1000);
t:=gettime;
for i:=1 to 1000000 do
 testvoice.getsample;
t:=gettime-t;
outtextxyz(100,100,inttostr(t),44,2,2);
sdl_pauseaudio(0);
end;


procedure main2;

var ii,iii,il,i:integer;
    buf:array[0..24] of byte;
    mm,hh,ss:int64;
    mms,hhs,sss,kwas:string;
    rect:tsdl_rect;
    f,aa,aaa,aaaa:integer;
    md:cardinal;

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
//if skip=1 then songfreq*=2;
box(18,864,512,32,244);
box(18,960,512,32,244);
outtextxyz(18,864,songname,250,2,2);
//outtextxyz(500,200,inttostr(rect.x),40,3,3);
//outtextxyz(500,250,inttostr(rect.y),40,3,3);
//outtextxyz(500,300,inttostr(rect.w),40,3,3);
//outtextxyz(500,350,inttostr(rect.h),40,3,3);
//outtextxyz(18,912,'SIDCog DMP file, '+inttostr(songfreq)+' Hz',250,2,2);
outtextxyz(18,960,hhs+':'+mms+':'+sss,190,4,2);
avsid+=sidtime;
avsct:=avsct+tim;
avspt:=avspt+ts;
avall:=avall+t3;
av6502:=av6502+time6502;
box2(10,1062,1782,1110,118);
outtextxyz(32,1070,'Avg screen time: '+inttostr(round(avsct/c))+' us',76,2,2);
outtextxyz(438,1070,'Avg sprite time: '+inttostr(round(avspt/c))+' us',186,2,2);
outtextxyz(828,1070,'Avg SID time: '+inttostr(round(avsid/c))+' us',233,2,2);
outtextxyz(1190,1070,'6502 time: '+floattostrf((time6502/16),fffixed,4,1)+' us',124,2,2);
if peek($70003)=1 then outtextxyz(1500,1070,inttostr(peek($d404)shr 4),108,2,2);
if peek($70004)=1 then outtextxyz(1540,1070,inttostr(peek($d40b)shr 4),200,2,2);
if peek($70005)=1 then outtextxyz(1580,1070,inttostr(peek($d412)shr 4),40,2,2);
outtextxyz(1650,1070,inttostr(dpeek($60028)),44,2,2);

for i:=16 to 39 do lpoke($10000+1024+4*i,lpeek($10000+2048+4*((c div 2) mod 256)+4*i));
if (c mod 64)=0 then lpoke($10000+1024+4*135,lpeek($10000+2048+(4*(c div 64) mod 256)))   ;
blit($F800000,10+(c mod 1772),1011,$F000000,12,1011,1771-(c mod 1772),48,1792,1792);
blit($F800000,10,1011,$F000000,11+1771-(c mod 1772),1011,(c mod 1772),48,1792,1792);
box2(10,610,894,797,178);
box2(10,700,890,701,40);
box2(10,764,890,765,40);
box2(10,636,890,637,40);
for j:=20 to 840 do if abs(scope[j])<46000 then box(20+j,700-scope[j] div 512,2,2,190);
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
box(0,0,300,100,0); outtextxyz(0,0,floattostr(ftt),15,2,2) ;
box(500,500,300,100,0); outtextxyz(500,500,floattostr(testoperator.adsrstate),15,2,2);        outtextxyz(500,532,floattostr(testoperator.adsrval),15,2,2);

end;


end.
