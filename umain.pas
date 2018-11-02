unit umain;

{$mode objfpc}{$H+}

interface

uses sdl2,sysutils,classes,retro,midi,math;

const sx:integer=12;
      sy:integer=70;

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
    mousex,mousey:integer;

         s,testname:string;
     ptestname:^string;

procedure main1;
procedure main2;

implementation

    uses fmsynth,synthcontrol;

function inttostr2(a,l:integer):string;   // l digit inttostr with leading zeros

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


function inttostr3(a,l:integer):string;   // l digit inttostr as float with leading zeros

var s,s2:string;
    i,l2:integer;

begin
s:=inttostr(abs(a));
l2:=l-length(s)-1;
s2:='';
if l2>0 then for i:=1 to l2 do s2+='0';
s2+=s;
s2:=s2[1]+'.'+copy(s2,2,l-1);
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

for i:=0 to 511 do begin controls[i]:=0; cx1[i]:=0; cx2[i]:=0; cy1[i]:=0;cy2[i]:=0; ct[i]:=0; cs[i]:=0 end;
// ct 0 not used 1 int 2 float 3 string ptr

box2(900,860,1019,1047,33);
outtextxy(912,864,'Midi reports',44);
testname:='A very long wave name';
ptestname:=@testname;
for i:=0 to 3 do
  begin
    for j:=0 to 1 do
      begin
      qx:=443*i; qy:=388*j;
      qn:=64*(i+4*j);
      controls[qn+0]:=0;      cx1[qn+0]:=28;   cx2[qn+0]:=91;   cy1[qn+0]:=30;   cy2[qn+0]:=49;   ct[qn+0]:=1;  // mod0
      controls[qn+1]:=0;      cx1[qn+1]:=28;   cx2[qn+1]:=91;   cy1[qn+1]:=60;   cy2[qn+1]:=79;   ct[qn+1]:=1;  // mod1
      controls[qn+2]:=0;      cx1[qn+2]:=28;   cx2[qn+2]:=91;   cy1[qn+2]:=90;   cy2[qn+2]:=109;  ct[qn+2]:=1;  // mod2
      controls[qn+3]:=0;      cx1[qn+3]:=28;   cx2[qn+3]:=91;   cy1[qn+3]:=120;  cy2[qn+3]:=139;  ct[qn+3]:=1;  // mod3
      controls[qn+4]:=0;      cx1[qn+4]:=28;   cx2[qn+4]:=91;   cy1[qn+4]:=150;  cy2[qn+4]:=169;  ct[qn+4]:=1;  // mod4
      controls[qn+5]:=0;      cx1[qn+5]:=28;   cx2[qn+5]:=91;   cy1[qn+5]:=180;  cy2[qn+5]:=199;  ct[qn+5]:=1;  // mod5
      controls[qn+6]:=0;      cx1[qn+6]:=28;   cx2[qn+6]:=93;   cy1[qn+6]:=210;  cy2[qn+6]:=229;  ct[qn+6]:=1;  // mod6
      controls[qn+7]:=0;;     cx1[qn+7]:=28;   cx2[qn+7]:=91;   cy1[qn+7]:=240;  cy2[qn+7]:=259;  ct[qn+7]:=1;  // mod7

      controls[qn+8]:=76;     cx1[qn+8]:=148;  cx2[qn+8]:=211;  cy1[qn+8]:=30;   cy2[qn+8]:=49;   ct[qn+8]:=1;  // r1
      controls[qn+9]:=59;     cx1[qn+9]:=148;  cx2[qn+9]:=211;  cy1[qn+9]:=60;   cy2[qn+9]:=79;   ct[qn+9]:=1;  // r2
      controls[qn+10]:=32;    cx1[qn+10]:=148; cx2[qn+10]:=211; cy1[qn+10]:=90;  cy2[qn+10]:=109; ct[qn+10]:=1; // r3
      controls[qn+11]:=32;    cx1[qn+11]:=148; cx2[qn+11]:=211; cy1[qn+11]:=120; cy2[qn+11]:=139; ct[qn+11]:=1; // r4
      controls[qn+12]:=127;   cx1[qn+12]:=258; cx2[qn+12]:=321; cy1[qn+12]:=30;  cy2[qn+12]:=49;  ct[qn+12]:=1; // l1
      controls[qn+13]:=120;   cx1[qn+13]:=258; cx2[qn+13]:=321; cy1[qn+13]:=60;  cy2[qn+13]:=79;  ct[qn+13]:=1; // l2
      controls[qn+14]:=64;    cx1[qn+14]:=258; cx2[qn+14]:=321; cy1[qn+14]:=90;  cy2[qn+14]:=109; ct[qn+14]:=1; // l3
      controls[qn+15]:=0;     cx1[qn+15]:=258; cx2[qn+15]:=321; cy1[qn+15]:=120; cy2[qn+15]:=139; ct[qn+15]:=1; // l4

      controls[qn+16]:=0;     cx1[qn+16]:=258; cx2[qn+16]:=321; cy1[qn+16]:=150; cy2[qn+16]:=169; ct[qn+16]:=1; // adsr bias
      controls[qn+17]:=0;     cx1[qn+17]:=258; cx2[qn+17]:=321; cy1[qn+17]:=180; cy2[qn+17]:=199; ct[qn+17]:=1; // adsr key adjust
      controls[qn+18]:=0;     cx1[qn+18]:=258; cx2[qn+18]:=321; cy1[qn+18]:=210; cy2[qn+18]:=229; ct[qn+18]:=1; // output level

      controls[qn+19]:=0;     cx1[qn+19]:=358; cx2[qn+19]:=421; cy1[qn+19]:=30;  cy2[qn+19]:=49;  ct[qn+19]:=1; // velocity start value
      controls[qn+20]:=127;   cx1[qn+20]:=358; cx2[qn+20]:=421; cy1[qn+20]:=60;  cy2[qn+20]:=79;  ct[qn+20]:=1; // velocity end value
      controls[qn+21]:=0;     cx1[qn+21]:=358; cx2[qn+21]:=421; cy1[qn+21]:=90;  cy2[qn+21]:=109; ct[qn+21]:=1; // velocity curve

      controls[qn+22]:=qn+22; cx1[qn+22]:=358; cx2[qn+22]:=421; cy1[qn+22]:=150; cy2[qn+22]:=169; ct[qn+22]:=1; // key sense key
      controls[qn+23]:=qn+23; cx1[qn+23]:=358; cx2[qn+23]:=421; cy1[qn+23]:=180; cy2[qn+23]:=199; ct[qn+23]:=1; // key sense curve

      controls[qn+24]:=1000;  cx1[qn+24]:=108; cx2[qn+24]:=204; cy1[qn+24]:=300; cy2[qn+24]:=319; ct[qn+24]:=2; // freq* (s1)
      controls[qn+25]:=0;     cx1[qn+25]:=224; cx2[qn+25]:=320; cy1[qn+25]:=300; cy2[qn+25]:=319; ct[qn+25]:=4; // freq+ (s2)

      controls[qn+26]:=qn+26; cx1[qn+26]:=258; cx2[qn+26]:=321; cy1[qn+26]:=240; cy2[qn+26]:=259; ct[qn+26]:=1; // pan

      controls[qn+27]:=qn+27; cx1[qn+27]:=48;  cx2[qn+27]:=143; cy1[qn+27]:=330; cy2[qn+27]:=349; ct[qn+27]:=2; // C3 (freq* LFO)
      controls[qn+28]:=qn+28; cx1[qn+28]:=48;  cx2[qn+28]:=143; cy1[qn+28]:=360; cy2[qn+28]:=379; ct[qn+28]:=2; // C4 (freq+ LFO)
      controls[qn+29]:=qn+29; cx1[qn+29]:=200; cx2[qn+29]:=295; cy1[qn+29]:=330; cy2[qn+29]:=349; ct[qn+29]:=2; // C5 (vol* lfo)
      controls[qn+30]:=qn+30; cx1[qn+30]:=200; cx2[qn+30]:=295; cy1[qn+30]:=360; cy2[qn+30]:=379; ct[qn+30]:=2; // C6 (expr)
      controls[qn+31]:=qn+31; cx1[qn+31]:=358; cx2[qn+31]:=421; cy1[qn+31]:=240; cy2[qn+31]:=259; ct[qn+31]:=1; // C7 (pan LFO)

      controls[qn+32]:=0;     cx1[qn+32]:=58;  cx2[qn+32]:=425; cy1[qn+32]:=270; cy2[qn+32]:=289; ct[qn+32]:=3; // wavename

      controls[18]:=127; // operator 0 output
      controls[64+18]:=127; // operator 0 output
      controls[128+18]:=127; // operator 0 output
      controls[64+24]:=1006; // operator 0 output
      controls[128+24]:=994; // operator 0 output


      end;
  end;
controls[512]:=0; cx1[512]:=1124;  cx2[512]:=1203; cy1[512]:=862; cy2[512]:=881; ct[512]:=5;  // preset number
controls[513]:=0; cx1[513]:=1284;  cx2[513]:=1635; cy1[513]:=862; cy2[513]:=881; ct[513]:=6;  // preset name
controls[514]:=0; cx1[514]:=1652;  cx2[514]:=1731; cy1[514]:=862; cy2[514]:=881; ct[514]:=7;  // save button

  //  lfo1 - c3,lfo2-c4, c5,c6,c7 (pan)
for i:=0 to 3 do
  begin
  for j:=0 to 1 do
    begin
    qx:=443*i; qy:=388*j ; qc:=16*i+64*j; qn:=64*(i+4*j);
    box(sx+qx,sy+qy,440,384,18+qc);
    box(sx+408+qx,sy+330+qy,24,48,29+qc); outtextxyz(sx+408+qx,sy+330+qy,inttostr(i+4*j),19+qc,3,3);
    box(sx+358+qx,sy+346+qy,18,32,29+qc); outtextxyz(sx+358+qx,sy+346+qy,'C',19+qc,2,2);
    box(sx+382+qx,sy+346+qy,18,32,29+qc); outtextxyz(sx+382+qx,sy+346+qy,'P',19+qc,2,2);
    box(sx+308+qx,sy+346+qy,18,32,29+qc); outtextxyz(sx+308+qx,sy+346+qy,'S',19+qc,2,2);
    box(sx+332+qx,sy+346+qy,18,32,29+qc); outtextxyz(sx+332+qx,sy+346+qy,'M',19+qc,2,2);

    outtextxyz(8+sx+qx,2+sy+qy,'Mods',27+qc,2,1);
    outtextxyz(cx1[qn+0]+sx+qx-20,cy1[qn+0]+sy+qy+2,'0',27+qc,2,1);  box2(cx1[qn+0]+qx+sx,cy1[qn+0]+qy+sy,cx2[qn+0]+qx+sx,cy2[qn+0]+qy+sy,20+qc); outtextxyz(cx1[qn+0]+8+qx+sx,cy1[qn+0]+qy+sy+2,inttostr2(controls[qn+0],3),28+qc,2,1);
    outtextxyz(cx1[qn+1]+sx+qx-20,cy1[qn+1]+sy+qy+2,'1',27+qc,2,1);  box2(cx1[qn+1]+qx+sx,cy1[qn+1]+qy+sy,cx2[qn+1]+qx+sx,cy2[qn+1]+qy+sy,20+qc); outtextxyz(cx1[qn+1]+8+qx+sx,cy1[qn+1]+qy+sy+2,inttostr2(controls[qn+1],3),28+qc,2,1);
    outtextxyz(cx1[qn+2]+sx+qx-20,cy1[qn+2]+sy+qy+2,'2',27+qc,2,1);  box2(cx1[qn+2]+qx+sx,cy1[qn+2]+qy+sy,cx2[qn+2]+qx+sx,cy2[qn+2]+qy+sy,20+qc); outtextxyz(cx1[qn+2]+8+qx+sx,cy1[qn+2]+qy+sy+2,inttostr2(controls[qn+2],3),28+qc,2,1);
    outtextxyz(cx1[qn+3]+sx+qx-20,cy1[qn+3]+sy+qy+2,'3',27+qc,2,1);  box2(cx1[qn+3]+qx+sx,cy1[qn+3]+qy+sy,cx2[qn+3]+qx+sx,cy2[qn+3]+qy+sy,20+qc); outtextxyz(cx1[qn+3]+8+qx+sx,cy1[qn+3]+qy+sy+2,inttostr2(controls[qn+3],3),28+qc,2,1);
    outtextxyz(cx1[qn+4]+sx+qx-20,cy1[qn+4]+sy+qy+2,'4',27+qc,2,1);  box2(cx1[qn+4]+qx+sx,cy1[qn+4]+qy+sy,cx2[qn+4]+qx+sx,cy2[qn+4]+qy+sy,20+qc); outtextxyz(cx1[qn+4]+8+qx+sx,cy1[qn+4]+qy+sy+2,inttostr2(controls[qn+4],3),28+qc,2,1);
    outtextxyz(cx1[qn+5]+sx+qx-20,cy1[qn+5]+sy+qy+2,'5',27+qc,2,1);  box2(cx1[qn+5]+qx+sx,cy1[qn+5]+qy+sy,cx2[qn+5]+qx+sx,cy2[qn+5]+qy+sy,20+qc); outtextxyz(cx1[qn+5]+8+qx+sx,cy1[qn+5]+qy+sy+2,inttostr2(controls[qn+5],3),28+qc,2,1);
    outtextxyz(cx1[qn+6]+sx+qx-20,cy1[qn+6]+sy+qy+2,'6',27+qc,2,1);  box2(cx1[qn+6]+qx+sx,cy1[qn+6]+qy+sy,cx2[qn+6]+qx+sx,cy2[qn+6]+qy+sy,20+qc); outtextxyz(cx1[qn+6]+8+qx+sx,cy1[qn+6]+qy+sy+2,inttostr2(controls[qn+6],3),28+qc,2,1);
    outtextxyz(cx1[qn+7]+sx+qx-20,cy1[qn+7]+sy+qy+2,'7',27+qc,2,1);  box2(cx1[qn+7]+qx+sx,cy1[qn+7]+qy+sy,cx2[qn+7]+qx+sx,cy2[qn+7]+qy+sy,20+qc); outtextxyz(cx1[qn+7]+8+qx+sx,cy1[qn+7]+qy+sy+2,inttostr2(controls[qn+7],3),28+qc,2,1);


    outtextxyz(108+qx+sx,2+qy+sy,'ADSR',27+qc,2,1);

    outtextxyz(cx1[qn+8]+sx+qx-40,cy1[qn+8]+sy+qy+2,'R1',27+qc,2,1);  box2(cx1[qn+8]+qx+sx,cy1[qn+8]+qy+sy,cx2[qn+8]+qx+sx,cy2[qn+8]+qy+sy,20+qc); outtextxyz(cx1[qn+8]+8+qx+sx,cy1[qn+8]+qy+sy+2,inttostr2(controls[qn+8],3),28+qc,2,1);
    outtextxyz(cx1[qn+9]+sx+qx-40,cy1[qn+9]+sy+qy+2,'R2',27+qc,2,1);  box2(cx1[qn+9]+qx+sx,cy1[qn+9]+qy+sy,cx2[qn+9]+qx+sx,cy2[qn+9]+qy+sy,20+qc); outtextxyz(cx1[qn+9]+8+qx+sx,cy1[qn+9]+qy+sy+2,inttostr2(controls[qn+9],3),28+qc,2,1);
    outtextxyz(cx1[qn+10]+sx+qx-40,cy1[qn+10]+sy+qy+2,'R3',27+qc,2,1);  box2(cx1[qn+10]+qx+sx,cy1[qn+10]+qy+sy,cx2[qn+10]+qx+sx,cy2[qn+10]+qy+sy,20+qc); outtextxyz(cx1[qn+10]+8+qx+sx,cy1[qn+10]+qy+sy+2,inttostr2(controls[qn+10],3),28+qc,2,1);
    outtextxyz(cx1[qn+11]+sx+qx-40,cy1[qn+11]+sy+qy+2,'R4',27+qc,2,1);  box2(cx1[qn+11]+qx+sx,cy1[qn+11]+qy+sy,cx2[qn+11]+qx+sx,cy2[qn+11]+qy+sy,20+qc); outtextxyz(cx1[qn+11]+8+qx+sx,cy1[qn+11]+qy+sy+2,inttostr2(controls[qn+11],3),28+qc,2,1);

    outtextxyz(cx1[qn+12]+sx+qx-40,cy1[qn+12]+sy+qy+2,'L1',27+qc,2,1);  box2(cx1[qn+12]+qx+sx,cy1[qn+12]+qy+sy,cx2[qn+12]+qx+sx,cy2[qn+12]+qy+sy,20+qc); outtextxyz(cx1[qn+12]+8+qx+sx,cy1[qn+12]+qy+sy+2,inttostr2(controls[qn+12],3),28+qc,2,1);
    outtextxyz(cx1[qn+13]+sx+qx-40,cy1[qn+13]+sy+qy+2,'L2',27+qc,2,1);  box2(cx1[qn+13]+qx+sx,cy1[qn+13]+qy+sy,cx2[qn+13]+qx+sx,cy2[qn+13]+qy+sy,20+qc); outtextxyz(cx1[qn+13]+8+qx+sx,cy1[qn+13]+qy+sy+2,inttostr2(controls[qn+13],3),28+qc,2,1);
    outtextxyz(cx1[qn+14]+sx+qx-40,cy1[qn+14]+sy+qy+2,'L3',27+qc,2,1);  box2(cx1[qn+14]+qx+sx,cy1[qn+14]+qy+sy,cx2[qn+14]+qx+sx,cy2[qn+14]+qy+sy,20+qc); outtextxyz(cx1[qn+14]+8+qx+sx,cy1[qn+14]+qy+sy+2,inttostr2(controls[qn+14],3),28+qc,2,1);
    outtextxyz(cx1[qn+15]+sx+qx-40,cy1[qn+15]+sy+qy+2,'L4',27+qc,2,1);  box2(cx1[qn+15]+qx+sx,cy1[qn+15]+qy+sy,cx2[qn+15]+qx+sx,cy2[qn+15]+qy+sy,20+qc); outtextxyz(cx1[qn+15]+8+qx+sx,cy1[qn+15]+qy+sy+2,inttostr2(controls[qn+15],3),28+qc,2,1);

    outtextxyz(cx1[qn+16]+sx+qx-150,cy1[qn+16]+sy+qy+2,'ADSR Bias',27+qc,2,1);  box2(cx1[qn+16]+qx+sx,cy1[qn+16]+qy+sy,cx2[qn+16]+qx+sx,cy2[qn+16]+qy+sy,20+qc); outtextxyz(cx1[qn+16]+8+qx+sx,cy1[qn+16]+qy+sy+2,inttostr2(controls[qn+16],3),28+qc,2,1);
    outtextxyz(cx1[qn+17]+sx+qx-150,cy1[qn+17]+sy+qy+2,'ADSR Key',27+qc,2,1);  box2(cx1[qn+17]+qx+sx,cy1[qn+17]+qy+sy,cx2[qn+17]+qx+sx,cy2[qn+17]+qy+sy,20+qc); outtextxyz(cx1[qn+17]+8+qx+sx,cy1[qn+17]+qy+sy+2,inttostr2(controls[qn+17],3),28+qc,2,1);
    outtextxyz(cx1[qn+18]+sx+qx-150,cy1[qn+18]+sy+qy+2,'Output',27+qc,2,1);  box2(cx1[qn+18]+qx+sx,cy1[qn+18]+qy+sy,cx2[qn+18]+qx+sx,cy2[qn+18]+qy+sy,20+qc); outtextxyz(cx1[qn+18]+8+qx+sx,cy1[qn+18]+qy+sy+2,inttostr2(controls[qn+18],3),28+qc,2,1);
    outtextxyz(cx1[qn+26]+sx+qx-150,cy1[qn+26]+sy+qy+2,'Pan',27+qc,2,1);  box2(cx1[qn+26]+qx+sx,cy1[qn+26]+qy+sy,cx2[qn+26]+qx+sx,cy2[qn+26]+qy+sy,20+qc); outtextxyz(cx1[qn+26]+8+qx+sx,cy1[qn+26]+qy+sy+2,inttostr2(controls[qn+26],3),28+qc,2,1);

    outtextxyz(cx1[qn+32]+qx+sx-50,272+qy+sy,'Spl',27+qc,2,1);  box2(cx1[qn+32]+qx+sx,cy1[qn+32]+qy+sy,cx2[qn+32]+qx+sx,cy2[qn+32]+qy+sy,20+qc); outtextxyz(cx1[qn+32]+8+qx+sx,cy1[qn+32]+qy+sy+2,sounds[controls[qn+32]].name,28+qc,2,1);

    s:=inttostr3(controls[qn+24],5);
    outtextxyz(8+qx+sx,302+qy+sy,'Freq *',27+qc,2,1);
       box2(cx1[qn+24]+qx+sx,cy1[qn+24]+qy+sy,cx2[qn+24]+qx+sx,cy2[qn+24]+qy+sy,20+qc);
         outtextxyz(cx1[qn+24]+8+qx+sx,cy1[qn+24]+qy+sy+2,s,28+qc,2,1);
    s:=inttostr3(controls[qn+25],5);
     if controls[qn+25]>=0 then outtextxyz(207+qx+sx,302+qy+sy,'+',27+qc,2,1) else outtextxyz(207+qx+sx,302+qy+sy,'-',27+qc,2,1);
         box2(cx1[qn+25]+qx+sx,cy1[qn+25]+qy+sy,cx2[qn+25]+qx+sx,cy2[qn+25]+qy+sy,20+qc);
           outtextxyz(cx1[qn+25]+8+qx+sx,cy1[qn+25]+qy+sy+2,s,28+qc,2,1);



    // A min velocity B max velocity C curve 0 lin 1 inv lin 2 U 3 n


    outtextxyz(336+sx+qx,2+sy+qy,'Vel',27+qc,2,1);

    outtextxyz(cx1[qn+19]+sx+qx-20,cy1[qn+19]+sy+qy+2,'A',27+qc,2,1);  box2(cx1[qn+19]+qx+sx,cy1[qn+19]+qy+sy,cx2[qn+19]+qx+sx,cy2[qn+19]+qy+sy,20+qc); outtextxyz(cx1[qn+19]+8+qx+sx,cy1[qn+19]+qy+sy+2,inttostr2(controls[qn+19],3),28+qc,2,1);
    outtextxyz(cx1[qn+20]+sx+qx-20,cy1[qn+20]+sy+qy+2,'B',27+qc,2,1);  box2(cx1[qn+20]+qx+sx,cy1[qn+20]+qy+sy,cx2[qn+20]+qx+sx,cy2[qn+20]+qy+sy,20+qc); outtextxyz(cx1[qn+20]+8+qx+sx,cy1[qn+20]+qy+sy+2,inttostr2(controls[qn+20],3),28+qc,2,1);
    outtextxyz(cx1[qn+21]+sx+qx-20,cy1[qn+21]+sy+qy+2,'C',27+qc,2,1);  box2(cx1[qn+21]+qx+sx,cy1[qn+21]+qy+sy,cx2[qn+21]+qx+sx,cy2[qn+21]+qy+sy,20+qc); outtextxyz(cx1[qn+21]+8+qx+sx,cy1[qn+21]+qy+sy+2,inttostr2(controls[qn+21],3),28+qc,2,1);

    outtextxyz(336+sx+qx,122+sy+qy,'Key S',27+qc,2,1);

    outtextxyz(cx1[qn+22]+sx+qx-20,cy1[qn+22]+sy+qy+2,'K',27+qc,2,1);  box2(cx1[qn+22]+qx+sx,cy1[qn+22]+qy+sy,cx2[qn+22]+qx+sx,cy2[qn+22]+qy+sy,20+qc); outtextxyz(cx1[qn+22]+8+qx+sx,cy1[qn+22]+qy+sy+2,inttostr2(controls[qn+22],3),28+qc,2,1);
    outtextxyz(cx1[qn+23]+sx+qx-20,cy1[qn+23]+sy+qy+2,'C',27+qc,2,1);  box2(cx1[qn+23]+qx+sx,cy1[qn+23]+qy+sy,cx2[qn+23]+qx+sx,cy2[qn+23]+qy+sy,20+qc); outtextxyz(cx1[qn+23]+8+qx+sx,cy1[qn+23]+qy+sy+2,inttostr2(controls[qn+23],3),28+qc,2,1);

    outtextxyz(cx1[qn+31]+sx+qx-34,cy1[qn+31]+sy+qy+2,'C7',27+qc,2,1);  box2(cx1[qn+31]+qx+sx,cy1[qn+31]+qy+sy,cx2[qn+31]+qx+sx,cy2[qn+31]+qy+sy,20+qc); outtextxyz(cx1[qn+31]+8+qx+sx,cy1[qn+31]+qy+sy+2,inttostr2(controls[qn+31],3),28+qc,2,1);
    outtextxyz(cx1[qn+27]+sx+qx-36,cy1[qn+27]+sy+qy+2,'C3',27+qc,2,1);  box2(cx1[qn+27]+qx+sx,cy1[qn+27]+qy+sy,cx2[qn+27]+qx+sx,cy2[qn+27]+qy+sy,20+qc); outtextxyz(cx1[qn+27]+8+qx+sx,cy1[qn+27]+qy+sy+2,inttostr3(controls[qn+27],5),28+qc,2,1);
    outtextxyz(cx1[qn+28]+sx+qx-36,cy1[qn+28]+sy+qy+2,'C4',27+qc,2,1);  box2(cx1[qn+28]+qx+sx,cy1[qn+28]+qy+sy,cx2[qn+28]+qx+sx,cy2[qn+28]+qy+sy,20+qc); outtextxyz(cx1[qn+28]+8+qx+sx,cy1[qn+28]+qy+sy+2,inttostr3(controls[qn+28],5),28+qc,2,1);
    outtextxyz(cx1[qn+29]+sx+qx-36,cy1[qn+29]+sy+qy+2,'C5',27+qc,2,1);  box2(cx1[qn+29]+qx+sx,cy1[qn+29]+qy+sy,cx2[qn+29]+qx+sx,cy2[qn+29]+qy+sy,20+qc); outtextxyz(cx1[qn+29]+8+qx+sx,cy1[qn+29]+qy+sy+2,inttostr3(controls[qn+29],5),28+qc,2,1);
    outtextxyz(cx1[qn+30]+sx+qx-36,cy1[qn+30]+sy+qy+2,'C6',27+qc,2,1);  box2(cx1[qn+30]+qx+sx,cy1[qn+30]+qy+sy,cx2[qn+30]+qx+sx,cy2[qn+30]+qy+sy,20+qc); outtextxyz(cx1[qn+30]+8+qx+sx,cy1[qn+30]+qy+sy+2,inttostr3(controls[qn+30],5),28+qc,2,1);



    end;
  end;
qc+=16;
outtextxyz(cx1[512]-100,cy1[512]+2,'Preset',27+qc,2,1);  box2(cx1[512],cy1[512],cx2[512],cy2[512],20+qc); outtextxyz(cx1[512]+8,cy1[512]+2,inttostr2(controls[512],4),28+qc,2,1);
outtextxyz(cx1[513]-68, cy1[513]+2,'Name',  27+qc,2,1);  box2(cx1[513],cy1[513],cx2[513],cy2[513],20+qc); outtextxyz(cx1[513]+8,cy1[513]+2,presetnames[controls[513]],28+qc,2,1);
box2(cx1[514],cy1[514],cx2[514],cy2[514],20+qc); outtextxyz(cx1[514]+8,cy1[514]+2,'Save',28+qc,2,1);


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
sss:=timetostr(now);
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
outtextxyz(1500,1070,sss,248,2,2);


//oscilloscope

box2(12,860,896,1047,178);
box2(14,950,894,951,40);
box2(14,1014,894,1015,40);
box2(14,886,894,887,40);
for j:=20 to 840 do if abs(scope[j])<46000 then box(24+j,950-scope[j] div 512,2,2,190);

//scj:=0;


raml^[$1801e]:=raml^[$1800B];
mousex:=dpeek($6002c)-64;
mousey:=dpeek($6002e)-40;
//box(1040,860,400,120,0); outtextxyz(1040,860,sounds[waveidx].name,15,2,2);  outtextxyz(1040,940,floattostr(transpose),15,2,2);   outtextxyz(1040,900,ss1,15,2,2);
//box(1400,860,380,50,0);  outtextxyz(1400,860,floattostr(1/(96000*att)),15,2,2);
//box(1400,900,300,100,0); outtextxyz(1400,900,floattostr(att),42,2,2);


for i:=0 to 514 do
  begin
  qx:=443*((i div 64) mod 4);
  qy:=388*(i div 256);
  qc:=16*(i div 64);
  if i>511 then begin qx:=-sx; qy:=-sy; end;
  if (ct[i]>0) and ((mousex<sx+qx+cx1[i]) or (mousex>sx+qx+cx2[i]) or (mousey<sy+qy+cy1[i]) or (mousey>sy+qy+cy2[i])) and (cs[i]=1) then  // mouse out of selected param
    begin
    cs[i]:=0;
    if ct[i]<>6 then box2(cx1[i]+qx+sx,cy1[i]+qy+sy,cx2[i]+qx+sx,cy2[i]+qy+sy,20+qc);
    if ct[i]=1 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],3),28+qc,2,1);
     if (ct[i]=2) or (ct[i]=4) then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),28+qc,2,1);
    if ct[i]=3 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,sounds[controls[i]].name,28+qc,2,1);
    if ct[i]=5 then outtextxyz(cx1[i]+8,cy1[i]+2,inttostr2(controls[i],4),28+qc,2,1);
//    if ct[i]=6 then outtextxyz(cx1[i]+8,cy1[i]+2,presetnames[controls[i]],28+qc,2,1);
    if ct[i]=7 then outtextxyz(cx1[514]+8,cy1[514]+2,'Save',28+qc,2,1);
    end;

  if (ct[i]>0) and (mousex>=sx+qx+cx1[i]) and (mousex<=sx+qx+cx2[i]) and (mousey>=sy+qy+cy1[i]) and (mousey<=sy+qy+cy2[i]) and (cs[i]=0) then // mouse on not selected control
    begin
    cs[i]:=1;
    if ct[i]<>6 then box2(cx1[i]+qx+sx,cy1[i]+qy+sy,cx2[i]+qx+sx,cy2[i]+qy+sy,28+qc);
    if ct[i]=1 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],3),20+qc,2,1);
    if (ct[i]=2) or (ct[i]=4) then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
    if ct[i]=3 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,sounds[controls[i]].name,20+qc,2,1);
    if ct[i]=5 then outtextxyz(cx1[i]+8,cy1[i]+2,inttostr2(controls[i],4),20+qc,2,1);
//    if ct[i]=6 then outtextxyz(cx1[i]+8,cy1[i]+2,presetnames[controls[i]],20+qc,2,1);
    if ct[i]=7 then outtextxyz(cx1[i]+8,cy1[i]+2,'Save',20+qc,2,1);
    end;

  if (ct[i]>0) and (mousex>=sx+qx+cx1[i]+24) and (mousex<=sx+qx+cx2[i]) and (mousey>=sy+qy+cy1[i]) and (mousey<=sy+qy+cy2[i]) and (cs[i]=1) and (peek($60032)=127) then // mouse on right of selected control and wheelup
    begin
    poke($60032,0);
    cs[i]:=1;
    if (ct[i]=1) or (ct[i]=2) or (ct[i]=3) or (ct[i]=5) then
      begin
      controls[i]-=1;
      if controls[i]<0 then controls[i]:=0;
      end;
    if (ct[i]=4) then
      begin
      controls[i]-=1;
      if controls[i]<-9999 then controls[i]:=-9999;
      end;
 
    if ct[i]<6 then box2(cx1[i]+qx+sx,cy1[i]+qy+sy,cx2[i]+qx+sx,cy2[i]+qy+sy,28+qc);
    if ct[i]=1 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],3),20+qc,2,1);
    if ct[i]=2 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
    if ct[i]=4 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
    if ct[i]=5 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],4),20+qc,2,1);
    if ct[i]=4 then begin box2(cx1[i]+qx+sx-15,cy1[i]+qy+sy,cx1[i]+qx+sx-1,cy2[i]+qy+sy,18+qc); if controls[i]>=0 then outtextxyz(207+qx+sx,302+qy+sy,'+',27+qc,2,1) else outtextxyz(207+qx+sx,302+qy+sy,'-',27+qc,2,1);end;
    if ct[i]=3 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,sounds[controls[i]].name,20+qc,2,1);
    end;

    if (ct[i]>0) and (mousex>=sx+qx+cx1[i]) and (mousex<sx+qx+cx1[i]+24) and (mousey>=sy+qy+cy1[i]) and (mousey<=sy+qy+cy2[i]) and (cs[i]=1) and (peek($60032)=127) then // mouse on left of selected control and wheelup
      begin
      poke($60032,0);
      cs[i]:=1;
      if (ct[i]=1) or (ct[i]=3) then
        begin
        controls[i]-=10;
        if controls[i]<0 then controls[i]:=0;
        end;
      if (ct[i]=4) then
        begin
        controls[i]-=100;
        if controls[i]<-9999 then controls[i]:=-9999;
        end;
      if (ct[i]=2) or (ct[i]=5) then
        begin
        controls[i]-=100;
        if controls[i]<0 then controls[i]:=0;
        end;


    if ct[i]<6 then box2(cx1[i]+qx+sx,cy1[i]+qy+sy,cx2[i]+qx+sx,cy2[i]+qy+sy,28+qc);
    if ct[i]=1 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],3),20+qc,2,1);
    if ct[i]=2 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
    if ct[i]=4 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
    if ct[i]=4 then begin box2(cx1[i]+qx+sx-15,cy1[i]+qy+sy,cx1[i]+qx+sx-1,cy2[i]+qy+sy,18+qc); if controls[i]>=0 then outtextxyz(207+qx+sx,302+qy+sy,'+',27+qc,2,1) else outtextxyz(207+qx+sx,302+qy+sy,'-',27+qc,2,1);end;
    if ct[i]=5 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],4),20+qc,2,1);
    if ct[i]=3 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,sounds[controls[i]].name,20+qc,2,1);
    end;

    if (ct[i]>0) and (mousex>=sx+qx+cx1[i]+24) and (mousex<=sx+qx+cx2[i]) and (mousey>=sy+qy+cy1[i]) and (mousey<=sy+qy+cy2[i]) and (cs[i]=1) and (peek($60032)=129) then // mouse on right of selected control and wheeldown
      begin
      poke($60032,0);
      cs[i]:=1;
      if (ct[i]=1) then
        begin
        controls[i]+=1;
        if controls[i]>127 then controls[i]:=127;
        end;
      if (ct[i]=4) or (ct[i]=2) or (ct[i]=5) then
        begin
        controls[i]+=1;
        if controls[i]>9999 then controls[i]:=9999;
        end;
      if (ct[i]=3) then
        begin
        controls[i]+=1;
        if controls[i]>=soundindex then controls[i]:=soundindex-1;
        end;

      if ct[i]<6 then box2(cx1[i]+qx+sx,cy1[i]+qy+sy,cx2[i]+qx+sx,cy2[i]+qy+sy,28+qc);
      if ct[i]=1 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],3),20+qc,2,1);
      if ct[i]=2 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
      if ct[i]=4 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
      if ct[i]=4 then begin box2(cx1[i]+qx+sx-15,cy1[i]+qy+sy,cx1[i]+qx+sx-1,cy2[i]+qy+sy,18+qc); if controls[i]>=0 then outtextxyz(207+qx+sx,302+qy+sy,'+',27+qc,2,1) else outtextxyz(207+qx+sx,302+qy+sy,'-',27+qc,2,1);end;
     if ct[i]=5 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],4),20+qc,2,1);
     if ct[i]=3 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,sounds[controls[i]].name,20+qc,2,1);
      end;

    if (ct[i]>0) and (mousex>=sx+qx+cx1[i]) and (mousex<sx+qx+cx1[i]+24) and (mousey>=sy+qy+cy1[i]) and (mousey<=sy+qy+cy2[i]) and (cs[i]=1) and (peek($60032)=129) then // mouse on left of selected control and wheeldown
      begin
      poke($60032,0);
      cs[i]:=1;
      if (ct[i]=1) then
        begin
        controls[i]+=10;
        if controls[i]>127 then controls[i]:=127;
        end;
      if (ct[i]=4) or (ct[i]=2) or (ct[i]=5) then
        begin
        controls[i]+=100;
        if controls[i]>9999 then controls[i]:=9999;
        end;
      if (ct[i]=3) then
        begin
        controls[i]+=10;
        if controls[i]>=soundindex then controls[i]:=soundindex-1;
        end;

      if ct[i]<6 then box2(cx1[i]+qx+sx,cy1[i]+qy+sy,cx2[i]+qx+sx,cy2[i]+qy+sy,28+qc);
      if ct[i]=1 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],3),20+qc,2,1);
      if ct[i]=2 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
      if ct[i]=4 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr3(controls[i],5),20+qc,2,1);
      if ct[i]=4 then begin box2(cx1[i]+qx+sx-15,cy1[i]+qy+sy,cx1[i]+qx+sx-1,cy2[i]+qy+sy,18+qc); if controls[i]>=0 then outtextxyz(207+qx+sx,302+qy+sy,'+',27+qc,2,1) else outtextxyz(207+qx+sx,302+qy+sy,'-',27+qc,2,1);end;
      if ct[i]=5 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,inttostr2(controls[i],4),20+qc,2,1);
      if ct[i]=3 then outtextxyz(cx1[i]+8+qx+sx,cy1[i]+qy+sy+2,sounds[controls[i]].name,20+qc,2,1);
      end;



  end;
poke($60032,0);
end;


end.

