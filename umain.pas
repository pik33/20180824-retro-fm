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


const sx:integer=12;
      sy:integer=70;

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
      controls[qn+0]:=qn+0; cx1[qn+0]:=28; cx2[qn+0]:=91; cy1[qn+0]:=30; cy2[qn+0]:=49; // mod0
      controls[qn+1]:=qn+1; cx1[qn+1]:=28; cx2[qn+1]:=91; cy1[qn+1]:=60; cy2[qn+1]:=79; // mod1
      controls[qn+2]:=qn+2; cx1[qn+2]:=28; cx2[qn+2]:=91; cy1[qn+2]:=90; cy2[qn+2]:=109; // mod2
      controls[qn+3]:=qn+3; cx1[qn+3]:=28; cx2[qn+3]:=91; cy1[qn+3]:=120; cy2[qn+3]:=139; // mod3
      controls[qn+4]:=qn+4; cx1[qn+4]:=28; cx2[qn+4]:=91; cy1[qn+4]:=150; cy2[qn+4]:=169; // mod4
      controls[qn+5]:=qn+5; cx1[qn+5]:=28; cx2[qn+5]:=91; cy1[qn+5]:=180; cy2[qn+5]:=199; // mod5
      controls[qn+6]:=qn+6; cx1[qn+6]:=28; cx2[qn+6]:=93; cy1[qn+6]:=210; cy2[qn+6]:=229; // mod6
      controls[qn+7]:=qn+7; cx1[qn+7]:=28; cx2[qn+7]:=91; cy1[qn+7]:=240; cy2[qn+7]:=259; // mod7

      controls[qn+8]:=qn+8; cx1[qn+8]:=148; cx2[qn+8]:=211; cy1[qn+8]:=30; cy2[qn+8]:=49; // r1
      controls[qn+9]:=qn+9; cx1[qn+9]:=148; cx2[qn+9]:=211; cy1[qn+9]:=60; cy2[qn+9]:=79; // r2
      controls[qn+10]:=qn+10; cx1[qn+10]:=148; cx2[qn+10]:=211; cy1[qn+10]:=90; cy2[qn+10]:=109; // r3
      controls[qn+11]:=qn+11; cx1[qn+11]:=148; cx2[qn+11]:=211; cy1[qn+11]:=120; cy2[qn+11]:=139; // r4
      controls[qn+12]:=qn+12; cx1[qn+12]:=258; cx2[qn+12]:=321; cy1[qn+12]:=30; cy2[qn+12]:=49; // l1
      controls[qn+13]:=qn+13; cx1[qn+13]:=258; cx2[qn+13]:=321; cy1[qn+13]:=60; cy2[qn+13]:=79; // l2
      controls[qn+14]:=qn+14; cx1[qn+14]:=258; cx2[qn+14]:=321; cy1[qn+14]:=90; cy2[qn+14]:=109; // l3
      controls[qn+15]:=qn+15; cx1[qn+15]:=258; cx2[qn+15]:=321; cy1[qn+15]:=120; cy2[qn+15]:=139; // l4

      controls[qn+16]:=qn+16; cx1[qn+16]:=258; cx2[qn+16]:=321; cy1[qn+16]:=150; cy2[qn+16]:=169; // adsr bias
      controls[qn+17]:=qn+17; cx1[qn+17]:=258; cx2[qn+17]:=321; cy1[qn+17]:=180; cy2[qn+17]:=199; // adsr key adjust
      controls[qn+18]:=qn+18; cx1[qn+18]:=258; cx2[qn+18]:=321; cy1[qn+18]:=210; cy2[qn+18]:=229; // output level

      controls[qn+19]:=qn+19; cx1[qn+19]:=358; cx2[qn+19]:=421; cy1[qn+19]:=30; cy2[qn+19]:=49; // adsr bias
      controls[qn+20]:=qn+20; cx1[qn+20]:=358; cx2[qn+20]:=421; cy1[qn+20]:=60; cy2[qn+20]:=79; // adsr key adjust
      controls[qn+21]:=qn+21; cx1[qn+21]:=358; cx2[qn+21]:=421; cy1[qn+21]:=90; cy2[qn+21]:=109; // output level

      controls[qn+22]:=qn+22; cx1[qn+22]:=358; cx2[qn+22]:=421; cy1[qn+22]:=150; cy2[qn+22]:=169; // adsr key adjust
      controls[qn+23]:=qn+23; cx1[qn+23]:=358; cx2[qn+23]:=421; cy1[qn+23]:=180; cy2[qn+23]:=199; // output level


      end;
  end;
  // freq+, freq*, lfo1 - c3,lfo2-c4, c5,c6,c7 (pan)
for i:=0 to 3 do
  begin
  for j:=0 to 1 do
    begin
    qx:=443*i; qy:=388*j ; qc:=16*i+64*j; qn:=32*(i+4*j);
    box(sx+qx,sy+qy,440,384,18+qc);
    box(sx+408+qx,sy+320+qy,24,48,29+qc); outtextxyz(sx+408+qx,sy+320+qy,inttostr(i+4*j),19+qc,3,3);
    box(sx+358+qx,sy+320+qy,16,32,29+qc); outtextxyz(sx+358+qx,sy+320+qy,'C',19+qc,2,2);
    box(sx+378+qx,sy+320+qy,16,32,29+qc); outtextxyz(sx+378+qx,sy+320+qy,'P',19+qc,2,2);

    outtextxyz(8+sx+qx,2+sy+qy,'Mods',28+qc,2,1);
    outtextxyz(cx1[qn+0]+sx+qx-20,cy1[qn+0]+sy+qy+2,'0',28+qc,2,1);  box2(cx1[qn+0]+qx+sx,cy1[qn+0]+qy+sy,cx2[qn+0]+qx+sx,cy2[qn+0]+qy+sy,21+qc); outtextxyz(cx1[qn+0]+8+qx+sx,cy1[qn+0]+qy+sy+2,inttostr2(controls[qn+0],3),30+qc,2,1);
    outtextxyz(cx1[qn+1]+sx+qx-20,cy1[qn+1]+sy+qy+2,'1',28+qc,2,1);  box2(cx1[qn+1]+qx+sx,cy1[qn+1]+qy+sy,cx2[qn+1]+qx+sx,cy2[qn+1]+qy+sy,21+qc); outtextxyz(cx1[qn+1]+8+qx+sx,cy1[qn+1]+qy+sy+2,inttostr2(controls[qn+1],3),30+qc,2,1);
    outtextxyz(cx1[qn+2]+sx+qx-20,cy1[qn+2]+sy+qy+2,'2',28+qc,2,1);  box2(cx1[qn+2]+qx+sx,cy1[qn+2]+qy+sy,cx2[qn+2]+qx+sx,cy2[qn+2]+qy+sy,21+qc); outtextxyz(cx1[qn+2]+8+qx+sx,cy1[qn+2]+qy+sy+2,inttostr2(controls[qn+2],3),30+qc,2,1);
    outtextxyz(cx1[qn+3]+sx+qx-20,cy1[qn+3]+sy+qy+2,'3',28+qc,2,1);  box2(cx1[qn+3]+qx+sx,cy1[qn+3]+qy+sy,cx2[qn+3]+qx+sx,cy2[qn+3]+qy+sy,21+qc); outtextxyz(cx1[qn+3]+8+qx+sx,cy1[qn+3]+qy+sy+2,inttostr2(controls[qn+3],3),30+qc,2,1);
    outtextxyz(cx1[qn+4]+sx+qx-20,cy1[qn+4]+sy+qy+2,'4',28+qc,2,1);  box2(cx1[qn+4]+qx+sx,cy1[qn+4]+qy+sy,cx2[qn+4]+qx+sx,cy2[qn+4]+qy+sy,21+qc); outtextxyz(cx1[qn+4]+8+qx+sx,cy1[qn+4]+qy+sy+2,inttostr2(controls[qn+4],3),30+qc,2,1);
    outtextxyz(cx1[qn+5]+sx+qx-20,cy1[qn+5]+sy+qy+2,'5',28+qc,2,1);  box2(cx1[qn+5]+qx+sx,cy1[qn+5]+qy+sy,cx2[qn+5]+qx+sx,cy2[qn+5]+qy+sy,21+qc); outtextxyz(cx1[qn+5]+8+qx+sx,cy1[qn+5]+qy+sy+2,inttostr2(controls[qn+5],3),30+qc,2,1);
    outtextxyz(cx1[qn+6]+sx+qx-20,cy1[qn+6]+sy+qy+2,'6',28+qc,2,1);  box2(cx1[qn+6]+qx+sx,cy1[qn+6]+qy+sy,cx2[qn+6]+qx+sx,cy2[qn+6]+qy+sy,21+qc); outtextxyz(cx1[qn+6]+8+qx+sx,cy1[qn+6]+qy+sy+2,inttostr2(controls[qn+6],3),30+qc,2,1);
    outtextxyz(cx1[qn+7]+sx+qx-20,cy1[qn+7]+sy+qy+2,'7',28+qc,2,1);  box2(cx1[qn+7]+qx+sx,cy1[qn+7]+qy+sy,cx2[qn+7]+qx+sx,cy2[qn+7]+qy+sy,21+qc); outtextxyz(cx1[qn+7]+8+qx+sx,cy1[qn+7]+qy+sy+2,inttostr2(controls[qn+7],3),30+qc,2,1);


    outtextxyz(108+qx+sx,2+qy+sy,'ADSR',28+qc,2,1);

    outtextxyz(cx1[qn+8]+sx+qx-40,cy1[qn+8]+sy+qy+2,'R1',28+qc,2,1);  box2(cx1[qn+8]+qx+sx,cy1[qn+8]+qy+sy,cx2[qn+8]+qx+sx,cy2[qn+8]+qy+sy,21+qc); outtextxyz(cx1[qn+8]+8+qx+sx,cy1[qn+8]+qy+sy+2,inttostr2(controls[qn+8],3),30+qc,2,1);
    outtextxyz(cx1[qn+9]+sx+qx-40,cy1[qn+9]+sy+qy+2,'R2',28+qc,2,1);  box2(cx1[qn+9]+qx+sx,cy1[qn+9]+qy+sy,cx2[qn+9]+qx+sx,cy2[qn+9]+qy+sy,21+qc); outtextxyz(cx1[qn+9]+8+qx+sx,cy1[qn+9]+qy+sy+2,inttostr2(controls[qn+9],3),30+qc,2,1);
    outtextxyz(cx1[qn+10]+sx+qx-40,cy1[qn+10]+sy+qy+2,'R3',28+qc,2,1);  box2(cx1[qn+10]+qx+sx,cy1[qn+10]+qy+sy,cx2[qn+10]+qx+sx,cy2[qn+10]+qy+sy,21+qc); outtextxyz(cx1[qn+10]+8+qx+sx,cy1[qn+10]+qy+sy+2,inttostr2(controls[qn+10],3),30+qc,2,1);
    outtextxyz(cx1[qn+11]+sx+qx-40,cy1[qn+11]+sy+qy+2,'R4',28+qc,2,1);  box2(cx1[qn+11]+qx+sx,cy1[qn+11]+qy+sy,cx2[qn+11]+qx+sx,cy2[qn+11]+qy+sy,21+qc); outtextxyz(cx1[qn+11]+8+qx+sx,cy1[qn+11]+qy+sy+2,inttostr2(controls[qn+11],3),30+qc,2,1);

    outtextxyz(cx1[qn+12]+sx+qx-40,cy1[qn+12]+sy+qy+2,'L1',28+qc,2,1);  box2(cx1[qn+12]+qx+sx,cy1[qn+12]+qy+sy,cx2[qn+12]+qx+sx,cy2[qn+12]+qy+sy,21+qc); outtextxyz(cx1[qn+12]+8+qx+sx,cy1[qn+12]+qy+sy+2,inttostr2(controls[qn+12],3),30+qc,2,1);
    outtextxyz(cx1[qn+13]+sx+qx-40,cy1[qn+13]+sy+qy+2,'L2',28+qc,2,1);  box2(cx1[qn+13]+qx+sx,cy1[qn+13]+qy+sy,cx2[qn+13]+qx+sx,cy2[qn+13]+qy+sy,21+qc); outtextxyz(cx1[qn+13]+8+qx+sx,cy1[qn+13]+qy+sy+2,inttostr2(controls[qn+13],3),30+qc,2,1);
    outtextxyz(cx1[qn+14]+sx+qx-40,cy1[qn+14]+sy+qy+2,'L3',28+qc,2,1);  box2(cx1[qn+14]+qx+sx,cy1[qn+14]+qy+sy,cx2[qn+14]+qx+sx,cy2[qn+14]+qy+sy,21+qc); outtextxyz(cx1[qn+14]+8+qx+sx,cy1[qn+14]+qy+sy+2,inttostr2(controls[qn+14],3),30+qc,2,1);
    outtextxyz(cx1[qn+15]+sx+qx-40,cy1[qn+15]+sy+qy+2,'L4',28+qc,2,1);  box2(cx1[qn+15]+qx+sx,cy1[qn+15]+qy+sy,cx2[qn+15]+qx+sx,cy2[qn+15]+qy+sy,21+qc); outtextxyz(cx1[qn+15]+8+qx+sx,cy1[qn+15]+qy+sy+2,inttostr2(controls[qn+15],3),30+qc,2,1);

    outtextxyz(cx1[qn+16]+sx+qx-150,cy1[qn+16]+sy+qy+2,'ADSR Bias',28+qc,2,1);  box2(cx1[qn+16]+qx+sx,cy1[qn+16]+qy+sy,cx2[qn+16]+qx+sx,cy2[qn+16]+qy+sy,21+qc); outtextxyz(cx1[qn+16]+8+qx+sx,cy1[qn+16]+qy+sy+2,inttostr2(controls[qn+16],3),30+qc,2,1);
    outtextxyz(cx1[qn+17]+sx+qx-150,cy1[qn+17]+sy+qy+2,'ADSR Key',28+qc,2,1);  box2(cx1[qn+17]+qx+sx,cy1[qn+17]+qy+sy,cx2[qn+17]+qx+sx,cy2[qn+17]+qy+sy,21+qc); outtextxyz(cx1[qn+17]+8+qx+sx,cy1[qn+17]+qy+sy+2,inttostr2(controls[qn+17],3),30+qc,2,1);
    outtextxyz(cx1[qn+18]+sx+qx-150,cy1[qn+18]+sy+qy+2,'Output',28+qc,2,1);  box2(cx1[qn+18]+qx+sx,cy1[qn+18]+qy+sy,cx2[qn+18]+qx+sx,cy2[qn+18]+qy+sy,21+qc); outtextxyz(cx1[qn+18]+8+qx+sx,cy1[qn+18]+qy+sy+2,inttostr2(controls[qn+18],3),30+qc,2,1);

    outtextxyz(8+qx+sx,340+qy+sy,'Wave',28+qc,2,1);  box(8+qx+sx,360+qy+sy,23*16,20,21+qc); outtextxyz(16+qx+sx,362+qy+sy,'A long wave name 22 ch',30+qc,2,1);



    // A min velocity B max velocity C curve 0 lin 1 inv lin 2 U 3 n


    outtextxyz(336+sx+qx,2+sy+qy,'Vel',28+qc,2,1);

    outtextxyz(cx1[qn+19]+sx+qx-20,cy1[qn+19]+sy+qy+2,'A',28+qc,2,1);  box2(cx1[qn+19]+qx+sx,cy1[qn+19]+qy+sy,cx2[qn+19]+qx+sx,cy2[qn+19]+qy+sy,21+qc); outtextxyz(cx1[qn+19]+8+qx+sx,cy1[qn+19]+qy+sy+2,inttostr2(controls[qn+19],3),30+qc,2,1);
    outtextxyz(cx1[qn+20]+sx+qx-20,cy1[qn+20]+sy+qy+2,'B',28+qc,2,1);  box2(cx1[qn+20]+qx+sx,cy1[qn+20]+qy+sy,cx2[qn+20]+qx+sx,cy2[qn+20]+qy+sy,21+qc); outtextxyz(cx1[qn+20]+8+qx+sx,cy1[qn+20]+qy+sy+2,inttostr2(controls[qn+20],3),30+qc,2,1);
    outtextxyz(cx1[qn+21]+sx+qx-20,cy1[qn+21]+sy+qy+2,'C',28+qc,2,1);  box2(cx1[qn+21]+qx+sx,cy1[qn+21]+qy+sy,cx2[qn+21]+qx+sx,cy2[qn+21]+qy+sy,21+qc); outtextxyz(cx1[qn+21]+8+qx+sx,cy1[qn+21]+qy+sy+2,inttostr2(controls[qn+21],3),30+qc,2,1);


//    outtextxyz(350+qx,110+qy,'A',28+qc,2,2);  box(370+qx,110+qy,64,32,21+qc); outtextxyz(378+qx,110+qy,'127',30+qc,2,2);
//    outtextxyz(350+qx,150+qy,'B',28+qc,2,2);  box(370+qx,150+qy,64,32,21+qc); outtextxyz(378+qx,150+qy,'127',30+qc,2,2);
//    outtextxyz(350+qx,190+qy,'C',28+qc,2,2);  box(370+qx,190+qy,64,32,21+qc); outtextxyz(378+qx,190+qy,'127',30+qc,2,2);
//    outtextxyz(350+qx,230+qy,'Key S',28+qc,2,2);
//    outtextxyz(350+qx,270+qy,'K',28+qc,2,2);  box(370+qx,270+qy,64,32,21+qc); outtextxyz(378+qx,270+qy,'127',30+qc,2,2);
//    outtextxyz(350+qx,310+qy,'C',28+qc,2,2);  box(370+qx,310+qy,64,32,21+qc); outtextxyz(378+qx,310+qy,'127',30+qc,2,2);



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

