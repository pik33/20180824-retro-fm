unit umain;

{$mode objfpc}{$H+}

interface

uses sdl2,sysutils,classes,retro,midi,math;

var
  test:integer ;
  iii, i,j,k,l,qx,qy,qc,qn,fh2,lines:integer;

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

    uses fmsynth,synthcontrol;

function inttostr2(a,l:integer):string;

var s,s2:string;
    i,l2:integer;

begin
s:=inttostr(a);
l2:=l-length(s);
s2:='';
if l2>0 then for i:=1 to l2 do s2+='0';
s2+=s;
result:=s2;
end;

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
raml^[$1801e]:=$01001100;    raml^[$1801f]:=$00010001;

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
outtextxyz(96,16,'The retromachine FM Synth v. 0.02 --- 2018.09.15 | Voice editor',154,3,2);
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


box2(900,860,1019,1047,33);
outtextxy(912,864,'Midi reports',44);

for i:=0 to 3 do
  begin
    for j:=0 to 1 do
      begin
      qx:=443*i; qy:=388*j;
      qn:=32*(i+4*j);
      controls[qn+0]:=qn+0; cx1[qn+0]:=40+qx; cx2[qn+0]:=103+qx; cy1[qn+0]:=110; cy2[qn+0]:=141; // mod0
      controls[qn+1]:=qn+1; cx1[qn+1]:=40+qx; cx2[qn+1]:=103+qx; cy1[qn+1]:=150; cy2[qn+1]:=181; // mod1
      controls[qn+2]:=qn+2; cx1[qn+2]:=40+qx; cx2[qn+2]:=103+qx; cy1[qn+2]:=190; cy2[qn+2]:=221; // mod2
      controls[qn+3]:=qn+3; cx1[qn+3]:=40+qx; cx2[qn+3]:=103+qx; cy1[qn+3]:=230; cy2[qn+3]:=261; // mod3
      controls[qn+4]:=qn+4; cx1[qn+4]:=40+qx; cx2[qn+4]:=103+qx; cy1[qn+4]:=270; cy2[qn+4]:=301; // mod4
      controls[qn+5]:=qn+5; cx1[qn+5]:=40+qx; cx2[qn+5]:=103+qx; cy1[qn+5]:=310; cy2[qn+5]:=341; // mod5
      controls[qn+6]:=qn+6; cx1[qn+6]:=40+qx; cx2[qn+6]:=103+qx; cy1[qn+6]:=350; cy2[qn+6]:=841; // mod6
      controls[qn+7]:=qn+7; cx1[qn+7]:=40+qx; cx2[qn+7]:=103+qx; cy1[qn+7]:=390; cy2[qn+7]:=421; // mod7

      controls[qn+8]:=qn+8; cx1[qn+0]:=160+qx; cx2[qn+0]:=223+qx; cy1[qn+0]:=110; cy2[qn+0]:=141; // r1
      controls[qn+9]:=qn+9; cx1[qn+1]:=160+qx; cx2[qn+1]:=223+qx; cy1[qn+1]:=150; cy2[qn+1]:=181; // r2
      controls[qn+10]:=qn+10; cx1[qn+2]:=160+qx; cx2[qn+2]:=223+qx; cy1[qn+2]:=190; cy2[qn+2]:=221; // r3
      controls[qn+11]:=qn+11; cx1[qn+3]:=160+qx; cx2[qn+3]:=223+qx; cy1[qn+3]:=230; cy2[qn+3]:=261; // r4
      controls[qn+12]:=qn+12; cx1[qn+4]:=270+qx; cx2[qn+4]:=333+qx; cy1[qn+4]:=110; cy2[qn+4]:=141; // l1
      controls[qn+13]:=qn+13; cx1[qn+5]:=270+qx; cx2[qn+5]:=333+qx; cy1[qn+5]:=150; cy2[qn+5]:=181; // l2
      controls[qn+14]:=qn+14; cx1[qn+6]:=270+qx; cx2[qn+6]:=333+qx; cy1[qn+6]:=190; cy2[qn+6]:=221; // l3
      controls[qn+15]:=qn+15; cx1[qn+7]:=270+qx; cx2[qn+7]:=333+qx; cy1[qn+7]:=230; cy2[qn+7]:=261; // l4

      end;
  end;

for i:=0 to 3 do
  begin
  for j:=0 to 1 do
    begin
    qx:=443*i; qy:=388*j ; qc:=16*i+64*j; qn:=32*(i+4*j);
    box(12+qx,70+qy,440,384,18+qc);
    box(420+qx,400+qy,24,48,29+qc); outtextxyz(420+qx,70+330+qy,inttostr(i+4*j),19+qc,3,3);
    box(370+qx,400+qy,16,32,29+qc); outtextxyz(370+qx,70+330+qy,'C',19+qc,2,2);
    box(390+qx,400+qy,16,32,29+qc); outtextxyz(390+qx,70+330+qy,'P',19+qc,2,2);

    outtextxyz(20+qx,70+qy,'Mods',28+qc,2,1);
    outtextxyz(20+qx,110+qy,'0',28+qc,2,2);  box(40+qx,110+qy,64,32,21+qc); outtextxyz(48+qx,110+qy,inttostr2(controls[qn+0],3),30+qc,2,2);
    outtextxyz(20+qx,150+qy,'1',28+qc,2,2);  box(40+qx,150+qy,64,32,21+qc); outtextxyz(48+qx,150+qy,inttostr2(controls[qn+1],3),30+qc,2,2);
    outtextxyz(20+qx,190+qy,'2',28+qc,2,2);  box(40+qx,190+qy,64,32,21+qc); outtextxyz(48+qx,190+qy,inttostr2(controls[qn+2],3),30+qc,2,2);
    outtextxyz(20+qx,230+qy,'3',28+qc,2,2);  box(40+qx,230+qy,64,32,21+qc); outtextxyz(48+qx,230+qy,inttostr2(controls[qn+3],3),30+qc,2,2);
    outtextxyz(20+qx,270+qy,'4',28+qc,2,2);  box(40+qx,270+qy,64,32,21+qc); outtextxyz(48+qx,270+qy,inttostr2(controls[qn+4],3),30+qc,2,2);
    outtextxyz(20+qx,310+qy,'5',28+qc,2,2);  box(40+qx,310+qy,64,32,21+qc); outtextxyz(48+qx,310+qy,inttostr2(controls[qn+5],3),30+qc,2,2);
    outtextxyz(20+qx,350+qy,'6',28+qc,2,2);  box(40+qx,350+qy,64,32,21+qc); outtextxyz(48+qx,350+qy,inttostr2(controls[qn+6],3),30+qc,2,2);
    outtextxyz(20+qx,390+qy,'7',28+qc,2,2);  box(40+qx,390+qy,64,32,21+qc); outtextxyz(48+qx,390+qy,inttostr2(controls[qn+7],3),30+qc,2,2);

    outtextxyz(120+qx,70+qy,'ADSR',28+qc,2,1);
    outtextxyz(120+qx,110+qy,'R1',28+qc,2,2);  box(160+qx,110+qy,64,32,21+qc); outtextxyz(168+qx,110+qy,inttostr2(controls[qn+8],3),30+qc,2,2);
    outtextxyz(120+qx,150+qy,'R2',28+qc,2,2);  box(160+qx,150+qy,64,32,21+qc); outtextxyz(168+qx,150+qy,inttostr2(controls[qn+9],3),30+qc,2,2);
    outtextxyz(120+qx,190+qy,'R3',28+qc,2,2);  box(160+qx,190+qy,64,32,21+qc); outtextxyz(168+qx,190+qy,inttostr2(controls[qn+10],3),30+qc,2,2);
    outtextxyz(120+qx,230+qy,'R4',28+qc,2,2);  box(160+qx,230+qy,64,32,21+qc); outtextxyz(168+qx,230+qy,inttostr2(controls[qn+11],3),30+qc,2,2);
    outtextxyz(230+qx,110+qy,'L1',28+qc,2,2);  box(270+qx,110+qy,64,32,21+qc); outtextxyz(278+qx,110+qy,inttostr2(controls[qn+12],3),30+qc,2,2);
    outtextxyz(230+qx,150+qy,'L2',28+qc,2,2);  box(270+qx,150+qy,64,32,21+qc); outtextxyz(278+qx,150+qy,inttostr2(controls[qn+13],3),30+qc,2,2);
    outtextxyz(230+qx,190+qy,'L3',28+qc,2,2);  box(270+qx,190+qy,64,32,21+qc); outtextxyz(278+qx,190+qy,inttostr2(controls[qn+14],3),30+qc,2,2);
    outtextxyz(230+qx,230+qy,'L4',28+qc,2,2);  box(270+qx,230+qy,64,32,21+qc); outtextxyz(278+qx,230+qy,inttostr2(controls[qn+15],3),30+qc,2,2);

    outtextxyz(120+qx,270+qy,'ADSR Bias',28+qc,2,2);  box(270+qx,270+qy,64,32,21+qc); outtextxyz(278+qx,270+qy,'127',30+qc,2,2);
    outtextxyz(120+qx,310+qy,'ADSR Key',28+qc,2,2);  box(270+qx,310+qy,64,32,21+qc); outtextxyz(278+qx,310+qy,'127',30+qc,2,2);
    outtextxyz(120+qx,350+qy,'Wave',28+qc,2,2);  box(200+qx,350+qy,234,32,21+qc); outtextxyz(208+qx,350+qy,'A long wave name',30+qc,1,2);
    outtextxyz(120+qx,390+qy,'Output',28+qc,2,2);  box(270+qx,390+qy,64,32,21+qc); outtextxyz(278+qx,390+qy,'127',30+qc,2,2);


    // A min velocity B max velocity C curve 0 lin 1 inv lin 2 U 3 n
    outtextxyz(350+qx,70+qy,'Vel',28+qc,2,1);
    outtextxyz(350+qx,110+qy,'A',28+qc,2,2);  box(370+qx,110+qy,64,32,21+qc); outtextxyz(378+qx,110+qy,'127',30+qc,2,2);
    outtextxyz(350+qx,150+qy,'B',28+qc,2,2);  box(370+qx,150+qy,64,32,21+qc); outtextxyz(378+qx,150+qy,'127',30+qc,2,2);
    outtextxyz(350+qx,190+qy,'C',28+qc,2,2);  box(370+qx,190+qy,64,32,21+qc); outtextxyz(378+qx,190+qy,'127',30+qc,2,2);
    outtextxyz(350+qx,230+qy,'Key S',28+qc,2,2);
    outtextxyz(350+qx,270+qy,'K',28+qc,2,2);  box(370+qx,270+qy,64,32,21+qc); outtextxyz(378+qx,270+qy,'127',30+qc,2,2);
    outtextxyz(350+qx,310+qy,'C',28+qc,2,2);  box(370+qx,310+qy,64,32,21+qc); outtextxyz(378+qx,310+qy,'127',30+qc,2,2);



 //   outtextxyz(380+qx,350+qy,'Out',28+qc,2,2);  box(372+qx,390+qy,64,32,21+qc); outtextxyz(380+qx,390+qy,'127',30+qc,2,2);

    end;
  end;



//outtextxyz(220,270,'4',107,2,2);  box(240,270,64,32,101); outtextxyz(248,270,'127',110,2,2);
//outtextxyz(220,310,'5',107,2,2);  box(240,310,64,32,101); outtextxyz(248,310,'127',110,2,2);
//outtextxyz(220,350,'6',107,2,2);  box(240,350,64,32,101); outtextxyz(248,350,'127',110,2,2);
//outtextxyz(220,390,'7',107,2,2);  box(240,390,64,32,101); outtextxyz(248,390,'127',110,2,2);
//adsrbias:=0;
// c1,c2,c3,c4,c5,c6
//keysense:=1;
//todo: adsr scaling i vol scaling


//box(12+443,70,440,384,145-32);        outtextxyz(12+443+425,70,'1',145-32+12,2,2);
//box(12+2*443,70,440,384,145-16);      outtextxyz(12+2*443+425,70,'2',145-16+12,2,2);
//box(12+3*443,70,440,384,145);         outtextxyz(12+3*443+425,70,'3',145+12,2,2);
//box(12,70+388,440,384,145+16);        outtextxyz(12+425,70+388,'4',145+16+12,2,2);
//box(12+443,70+388,440,384,145+32);    outtextxyz(12+443+425,70+388,'5',145+32+12,2,2);
//box(12+2*443,70+388,440,384,145+48);  outtextxyz(12+2*443+425,70+388,'6',145+48+12,2,2);
//box(12+3*443,70+388,440,384,145+64);  outtextxyz(12+3*443+425,70+388,'7',145+64+12,2,2);
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
box(1040,860,400,120,0); outtextxyz(1040,860,sounds[waveidx].name,15,2,2);  outtextxyz(1040,940,floattostr(transpose),15,2,2);   outtextxyz(1040,900,ss1,15,2,2);
box(1400,860,380,50,0);  outtextxyz(1400,860,floattostr(1/(96000*att)),15,2,2);
box(1400,900,300,100,0); outtextxyz(1400,900,floattostr(gain),42,2,2);

end;


end.

