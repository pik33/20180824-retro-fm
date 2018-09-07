unit fmsynth;

{$mode objfpc}{$H+}

interface


uses
  Classes, SysUtils, math;

type myfloat=double;

type PSinglesample=^TSinglesample;
     TSingleSample=myfloat; //array[0..1] of single;

type PSingleStereosample=^TSinglesample;
     TSingleStereoSample=array[0..1] of myfloat;

type TFmOperator=class
     freq:myfloat;
     c3,c4,c5,c6:myfloat;
     lfo1,lfo2,lfo3:myfloat;
     mul0,mul1,mul2,mul3,mul4,mul5,mul6,mul7:myfloat;
     wptr:PsingleSample;
     wlength,wlstart,wlend:myfloat;  //?
     adsrstate:integer;
     adsrval:myfloat;
     ar1,av1,ar2,av2,ar3,av3,ar4,av4:myfloat;
     av,ar:myfloat;
     adsrbias:myfloat;
     vel,keysense,expr:myfloat;
     pa,pa2:myfloat;
     wavemode:integer;
     intpa:integer;
     freqmod:myfloat;
     outputtable:PSingleSample;
     function getsample:TSingleSample;
     procedure init;
     procedure setfreq(afreq:myfloat);
     constructor create(mode:integer;outs:pointer);
     destructor destroy;
     end;

type TFmVoice=class
     operators:array[0..7] of TFmOperator;
     outputs:array[0..7] of TSingleSample;
     outmuls:array[0..7] of single;
    constructor create;
    function getsample:TSingleSample;
     procedure setfreq(afreq:myfloat);
     end;

type TWaveSample1=record
     name:string;
     len,lstart,lend:integer;
     speed:myfloat;
     wave:^myfloat;
     end;

type TWaveSample0=record
     name:string;
     wave:array[0..1023] of double;
     end;


type TSampleinfo=record
     slen,sls,sll:cardinal;
     vol:byte;
     finetune:shortint;
     sampletype,pan:byte;
     relnote:shortint;
     snl:byte;
     samplename:array[0..21] of char;
     end;

const

     a212=1.0594630943592953098431053149397484958; //2^1/12
     c03=16.351597831287416763959505349330137242/2; //C-4

var flogtable:array[0..65540] of myfloat;
    foutputtable:array[0..8191] of myfloat;
    fnotes:array[0..127] of myfloat;
    fsinetable:array[-655360..655360] of myfloat;
//    fopdata:array[0..65535] of single;
    fmoperator:TFmOperator;
    voices:array [0..31] of TFmVoice;
    waves0:array [0..127] of TWaveSample0;
    waves1:array [0..16383] of TWaveSample1;
       att:double=1/960;
    sampleindex0:integer=0;
    sampleindex1:integer=0;
    waveidx:integer=0;
    fftwave:^double;
    transpose:integer=0;

procedure initvoices;
procedure initsamples0;
procedure initsamples1;


implementation
    uses retro,unit1;

procedure initsamples0;

var sr:tsearchrec;
    i,fh:integer;
    currentdir2:string;
    dummy:array[0..15] of byte;
    intwave:array[0..1024] of smallint;

begin
currentdir2:='C:\s\';
if findfirst(currentdir2+'*.s2',faAnyFile,sr)=0 then
  repeat
  fh:=fileopen(currentdir2+sr.name,$40);
  fileread(fh,dummy,16);
  waves0[sampleindex0].name:=copy(sr.name,1,length(sr.name)-3); ;
  fileread(fh,intwave,2048);
  for i:=0 to 1023 do waves0[sampleindex0].wave[i]:=intwave[i]/32768;
  fileclose(fh);
  sampleindex0+=1;
  until (findnext(sr)<>0) or (sampleindex0=128);
findclose(sr);
end;


procedure initsamples1;


var sr:tsearchrec;
    k,j,i,fh:integer;
    currentdir2:string;
    dummy:array[0..255] of byte;
    intwave:PSmallint;
    samplenum:word;
    sampleinfo:array[0..31] of TSampleInfo ;
    integrator:double;
    maxval:double;
    ffti: integer;
    fftv: double;

begin
currentdir2:='C:\xi\';
if findfirst(currentdir2+'*.xi',faAnyFile,sr)=0 then
  repeat
  fh:=fileopen(currentdir2+sr.name,$40);
  fileread(fh,dummy,$40);  //text header
  fileread(fh,dummy,$e8);  //inst headers
  fileread(fh,samplenum,2);
  for i:=0 to samplenum-1 do fileread(fh,sampleinfo[i],40);
  for i:=0 to samplenum-1 do
    begin
    waves1[sampleindex1].len:=sampleinfo[i].slen div 2;
    waves1[sampleindex1].name:='';
    for j:=0 to sampleinfo[i].snl do waves1[sampleindex1].name+=sampleinfo[i].samplename[j];
    intwave:=getmem(sampleinfo[i].slen);
    waves1[sampleindex1].wave:=getmem(4*sampleinfo[i].slen+16);
    fileread(fh,intwave^,sampleinfo[i].slen);
    integrator:=0;
    maxval:=0;

    for j:=0 to (sampleinfo[i].slen div 2)-1 do
      begin
      integrator+=intwave[j]/32768;
      if abs(integrator)>maxval then maxval:=abs(integrator);
      waves1[sampleindex1].wave[j]:=integrator;
      end;
//    fftwave:=getmem(4*sampleinfo[i].slen+16);
//    integrator:=0;
//    for j:=0 to (sampleinfo[i].slen div 2)-1 do
//      begin
//      integrator+=waves1[sampleindex1].wave[j];
//      fftwave[j]:=integrator;
//      end;
 // normalize
    for j:=0 to (sampleinfo[i].slen div 2)-1 do waves1[sampleindex1].wave[j]*=1/maxval;
 //   form1.fft1.fft;
//    maxval:=0;
//    for j:=600 to 65535 do
  //    begin
   //   if j>400 then k:=j else k:=800-j;
//      fftv:= sqr(form1.fft1.transformeddata[j].real)+sqr(form1.fft1.transformeddata[j].imag);
//      if (fftv/j)>maxval then begin maxval:=fftv/j; ffti:=j;end;
//      end;


    // 1 period=ffti
  //  waves1[sampleindex1].speed:= (524288/ffti); //836; //(ffti*96000/524288)*
                               //power(a212,sampleinfo[i].relnote);
   freemem(intwave);
//   freemem(fftwave);
    if (sampleinfo[i].sampletype and 1) =0 then begin waves1[sampleindex1].lstart:=waves1[sampleindex1].len-1 ; waves1[sampleindex1].lend:=waves1[sampleindex1].len ;  end else
    begin waves1[sampleindex1].lstart:=sampleinfo[i].sls div 2;
    waves1[sampleindex1].lend:=((sampleinfo[i].sls+sampleinfo[i].sll) div 2); end;
    waves1[sampleindex1].speed:=31.569678791045951421351411329291*power(a212,sampleinfo[i].relnote+sampleinfo[i].finetune/128);
    sampleindex1+=1;
  end;
  fileclose(fh);
  until (findnext(sr)<>0) or (sampleindex1=16384);
findclose(sr);
end;



procedure initvoices;

var i:integer;

begin
for i:=0 to 31 do
  voices[i]:=TFmVoice.create;
end;

constructor TFmVoice.create;

var i:integer;

begin
for i:=0 to 7 do operators[i]:=TFmOperator.create(0,@outputs);
for i:=0 to 7 do operators[i].init;
for i:=0 to 7 do operators[i].outputtable:=@outputs;
outmuls[0]:=1;
for i:=1 to 7 do outmuls[i]:=0;
end;


function TFmVoice.getsample:TSingleSample;

var i,j:integer;
    output:myfloat;

begin
for i:=0 to 7 do
  outputs[i]:=operators[i].getsample;
output:=0;
for i:=0 to 7 do output+=outmuls[i]*outputs[i];
result:=output;
end;




procedure initflogtable ;

var i:integer;
    q,q2:myfloat;

begin
q:=1;
//q2:=0.999841363784793800909651;
q2:= 0.99989460157410704627595119007091;
for i:=65540 downto 0 do
  begin
  if i>65535 then flogtable[i]:=1
  else
    begin
    flogtable[i]:=q;
    q:=q*q2;
    end;
  end;
flogtable[0]:=0;
end;

procedure initfsinetable ;

var i:integer;


begin
for i:=-655360 to 655360 do fsinetable[i]:=sin(2*pi*i/1024);
end;

operator := (b:integer):TSingleStereoSample;

begin
result[0]:=b;
result[1]:=b;
end;

operator *(a:TSingleStereoSample;b:single):TSingleStereoSample;

begin
result[0]:=a[0]*b;
result[1]:=a[1]*b;
end;

constructor TFmOperator.create(mode:integer;outs:pointer);

var q:myfloat;
    i:integer;

begin
outputtable:=outs;
if mode=0 then wptr:=@fsinetable;
  //begin
  //wptr:=getmem(8*65536);
  //for i:=0 to 65535 do
  //  begin
  //  q:=sin(2*pi*i/65536);
  //  wptr[i]:=q;
  //  end;



 // wlength:=65536;
  wlength:=1024;

//  end;
end;

destructor TFmOperator.destroy;

begin
freemem(wptr);
end;

procedure TFmVoice.setfreq(afreq:myfloat);

var i:integer;

begin
for i:=0 to 7 do operators[i].setfreq(afreq);
// test
operators[1].setfreq(1.0043*afreq);
operators[2].setfreq(1.006*afreq);
operators[3].setfreq(1.0017*afreq);
operators[4].setfreq(0.995*afreq);
operators[5].setfreq(0.991*afreq);
operators[6].setfreq(0.9939*afreq);
operators[7].setfreq(0.9961*afreq);


end;

procedure TFmOperator.setfreq(afreq:myfloat);

begin
if wavemode=0 then freq:=afreq*wlength/96000
else freq:=(afreq*freqmod)/96000 ;// afreq*freqmod;
end;

procedure TFmOperator.init; // test init @ 1 kHz

begin

freq:=440*(65536/96000);    //341
c3:=0;
c4:=1;
c5:=1;
c6:=1;
lfo1:=1;
lfo2:=1;
lfo3:=1;
mul0:=0;
mul1:=0;
mul2:=0;
mul3:=0;
mul4:=0;
mul5:=0;
mul6:=0;
mul7:=0;
wlength:=1024;//65536;
adsrstate:=0;
adsrval:=0;
ar1:=1/96;
ar2:=-1/96000;
ar3:=-1/960000;
ar4:=-3/960000;
av1:=1;
av2:=0.95;
av3:=0.9;
av4:=0.0;
adsrbias:=0;
vel:=1;
keysense:=1;
expr:=1;




end;



function TFmOperator.getsample:TSingleSample;

label p101,p999;

var res64a:myfloat;
    modulator:myfloat;
    i,j:integer;
    sample:TSingleSample;
    freq2:myfloat;
    h1:myfloat;
    pa21:integer;
    d,s2:double;

begin

if (adsrstate=0) or ((adsrstate=6) and (adsrval=0)) then begin sample:=0; goto p999; end;
//ft:=gettime;
//for i:=1 to 1000 do begin

freq2:=(freq+(c3*lfo1))*c4*lfo2;

// stage2: compute the modulator
           {
h1:= outputtable[0]*mul0  ;
h1+= outputtable[1]*mul1  ;
h1+= outputtable[2]*mul2  ;
h1+= outputtable[3]*mul3  ;
h1+= outputtable[4]*mul4  ;
h1+= outputtable[5]*mul5  ;
h1+= outputtable[6]*mul6  ;
h1+= outputtable[7]*mul7  ;
       modulator:=h1;}

modulator:=outputtable[0]*mul0
+outputtable[1]*mul1
+outputtable[2]*mul2
+outputtable[3]*mul3
+outputtable[4]*mul4
+outputtable[5]*mul5
+outputtable[6]*mul6
+outputtable[7]*mul7;

pa:=pa+freq2;
pa2:=pa+modulator;

// pa is 32 bit; n bit used for addressing
// todo: what if the sample is looped??

// stage 3
// load the sample

if wavemode=0 then
  begin
  if pa>=wlength then
      pa:=pa-wlength;

  pa2:=pa+modulator;

  if pa2>=wlength then
    repeat pa2:=pa2-wlength until pa2<wlength;
  if pa2<0 then
    repeat pa2:=pa2+wlength until pa2>0;
  end

else

  begin
  if pa>=wlend then
    pa:=pa-wlend+wlstart;

  pa2:=pa+modulator;

  if pa2>=wlend then
    repeat pa2:=pa2-wlend+wlstart until pa2<wlend;
  if pa2<0 then
    repeat pa2:=pa2+wlength until pa2>=0;
  end;

intpa:=trunc(pa2);
pa21:=intpa+1; if pa21>=wlength then
       if wavemode=0 then pa21:=0 else pa21:=trunc(wlstart);
sample:=wptr[intpa];
s2:=wptr[pa21];
d:=pa2-intpa;
sample:=(1-d)*sample+d*s2;
 //        stage 4
 //       Compute ADSR

// adsrstates: 0-idle, 1 attack,2 decay1, 3 decay2, 4 sustain, 5 release

if adsrstate = 5 then   // release
  begin
  adsrval:=adsrval+ar4;
  if ar4<0 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=6; end; end
         else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=6; end; end;
  goto p101;
  end;
 if adsrstate =   3 then  // release
  begin
  adsrval:=adsrval+ar3;
  if ar3<0 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
         else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
  goto p101;
  end;
    if adsrstate= 2 then  // release
  begin
   adsrval:=adsrval+ar2;
  if ar2<0 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
         else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
  goto p101;
  end;
    if adsrstate=1 then    // release
  begin
  adsrval:=adsrval+ar1;
  if ar1<0 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
          else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
p101:
 end;

h1:=((1-adsrbias)*adsrval)+adsrbias;
if adsrstate<>0 then sample:=sample*flogtable[round(65535*h1)] else sample:=0;

//sample:=sample*c5*lfo3;
h1:=1.000-keysense;
h1:=h1+vel*keysense;
h1:=h1*c6*expr;
sample:=sample*h1;
//sample:=sample*(1.000-keysense+vel*keysense);
//sample:=sample*c6*expr;
//if sample>1 then
//  sample:=1;
//if sample<-1 then
//  sample:=-1;




// TODO: pan
//                       end;
//ftt:=gettime-ft;
//if abs(sample)>1 then begin box(200,200,200,200,0); outtextxy(200,200,floattostr(sample),15); outtextxy(200,220,floattostr(pa2),15); outtextxy(200,240,floattostr(pa21),15); end;
p999:
result:=sample;

end;


procedure initnotes;

var i:integer;
    q:myfloat;

begin
q:=c03;
for i:=0 to 127 do
  begin
  fnotes[i]:=q;
  q:=q*a212;
  end;
end;



initialization

initflogtable;
initfsinetable;
initnotes;

//initvoices;

end.

