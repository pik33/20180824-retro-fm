unit fmsynth;

{$mode objfpc}{$H+}

interface


uses
  Classes, SysUtils, math;

type myfloat=double;

type PSinglesample=^TSinglesample;
     TSingleSample=myfloat; //array[0..1] of single;

type PSingleStereosample=^TSingleStereosample;
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
     pan:myfloat;
     function getsample:TSingleSample;
     procedure init;
     procedure setfreq(afreq:myfloat);
     constructor create(mode:integer;outs:pointer);
     destructor destroy; override;
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
     note:integer;
     finetune:integer;
     end;

type TMultiSample=record
     name:string;
     samples:array[0..47] of TWaveSample1;
     notes:array[0..127] of integer;
     end;

     // C0=midi 12 - tracker 1

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
     c03=16.351597831287416763959505349330137242/2; //C-1


var flogtable:array[0..65540] of myfloat;
    flogtable1:array[0..127] of myfloat;
    foutputtable:array[0..8191] of myfloat;
    fnotes:array[0..127] of myfloat;
    fnotesn:array[0..127] of myfloat;
    fsinetable:array[-655360..655360] of myfloat;
//    fopdata:array[0..65535] of single;
    fmoperator:TFmOperator;
    voices:array [0..31] of TFmVoice;
    waves0:array [0..127] of TWaveSample0;
    waves1:array [0..16383] of TWaveSample1;
    sounds:array[0..8191] of TMultiSample;
       att:double=1/960;
    sampleindex0:integer=0;
    sampleindex1:integer=0;
    soundindex:integer=0;
    waveidx:integer=0;
    fftwave:^double;
    transpose:integer=0;
    natural:array[0..11] of double=(8.25,8.8,9.28125,9.9,10.3125,11,11.6015625,12.375,13.2,13.75,14.85,15.46875);

procedure initvoices;
procedure initsamples0;
procedure initsamples1;
procedure initsamples2;


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
  waves1[sampleindex1].name:=copy(sr.name,1,length(sr.name)-3);
  waves1[sampleindex1].wave:=getmem(8*1024);
  waves1[sampleindex1].len:=1024;
  waves1[sampleindex1].lend:=1024;
  waves1[sampleindex1].lstart:=0;
  waves1[sampleindex1].speed:=1024;
  waves1[sampleindex1].note:=0;
  waves1[sampleindex1].finetune:=0;

  fileread(fh,intwave,2048);
  for i:=0 to 1023 do waves1[sampleindex1].wave[i]:=intwave[i]/32768;
  fileclose(fh);

  sounds[soundindex].name:=waves1[sampleindex1].name;
  sounds[soundindex].samples[0]:= waves1[sampleindex1];
  for i:=0 to 127 do sounds[soundindex].notes[i]:=0;
    sampleindex1+=1;
  soundindex+=1;
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
  fileread(fh,dummy,21);  //text header
  fileread(fh,dummy,22);  // instr name
  for i:=0 to 21 do sounds[soundindex].name+=chr(dummy[i]);
  fileread(fh,dummy,21);
  fileread(fh,dummy,$e8);  //inst headers
  for i:=0 to 95 do sounds[soundindex].notes[i]:=dummy[i+2];
  fileread(fh,samplenum,2);
  for i:=0 to samplenum-1 do fileread(fh,sampleinfo[i],40);
  for i:=0 to samplenum-1 do
    begin
    waves1[sampleindex1].len:=sampleinfo[i].slen div 2;
    waves1[sampleindex1].name:='';
    for j:=0 to sampleinfo[i].snl-1 do waves1[sampleindex1].name+=sampleinfo[i].samplename[j];

    intwave:=getmem(sampleinfo[i].slen);
    waves1[sampleindex1].wave:=getmem(4*sampleinfo[i].slen+1024);
    fileread(fh,intwave^,sampleinfo[i].slen);
    integrator:=0;
    maxval:=0;

    for j:=0 to (sampleinfo[i].slen div 2)-1 do
      begin
      integrator+=intwave[j]/32768;
      if abs(integrator)>maxval then maxval:=abs(integrator);
      waves1[sampleindex1].wave[j]:=integrator;
      end;
    for j:= (sampleinfo[i].slen div 2) to (sampleinfo[i].slen div 2)+127 do
      begin
        waves1[sampleindex1].wave[j]:=0;       // add a silence to the end of the sample
      end;

 // normalize
    for j:=0 to (sampleinfo[i].slen div 2)-1 do waves1[sampleindex1].wave[j]*=1/maxval;
    freemem(intwave);
    if (sampleinfo[i].sampletype and 1) =0 then begin waves1[sampleindex1].lstart:=waves1[sampleindex1].len; waves1[sampleindex1].lend:=waves1[sampleindex1].len+127 ;  end else
    begin waves1[sampleindex1].lstart:=sampleinfo[i].sls div 2;
    waves1[sampleindex1].lend:=((sampleinfo[i].sls+sampleinfo[i].sll) div 2); end;

//    relnote 0 is c4 @ 8363 Hz!!!!     or is it c6??

    waves1[sampleindex1].speed:= 31.964988724534648167259106371593 *power(a212,sampleinfo[i].relnote + sampleinfo[i].finetune/128);

    sounds[soundindex].samples[i]:=waves1[sampleindex1];
    sampleindex1+=1;
  end;
  soundindex+=1;
  fileclose(fh);
  until (findnext(sr)<>0) or (sampleindex1=16384);
findclose(sr);
end;


procedure initsamples2;

label p999;

var sr,sr2:tsearchrec;
    i,j,fh:integer;
    currentdir2,currentdir3:string;
    dummy:array[0..15] of byte;
    intwave:Psmallint;
    filelength:int64;
    oldsi:integer;
    maxval:double;

begin
currentdir2:='C:\wav\';
if findfirst(currentdir2+'*',faDirectory,sr)=0 then
  repeat
  if (sr.name='.') or (sr.name='..') then goto p999;
  sounds[soundindex].name:=sr.name ;
  currentdir3:=currentdir2+sr.name ;
  oldsi:=sampleindex1;
  i:=0;
  if findfirst(currentdir3+'\*.wav',faanyfile,sr2)=0 then


   repeat
   fh:= fileopen(currentdir3+'\'+sr2.name,$40);
   filelength:=fileseek(fh,0,fsfromend)-44;
   fileseek(fh,44,fsfrombeginning);
   waves1[sampleindex1].name:=sr.name+' '+copy(sr2.name,1,length(sr2.name)-4);
   waves1[sampleindex1].wave:=getmem(4*filelength+1024);
   waves1[sampleindex1].len:=(filelength) div 2;
   waves1[sampleindex1].lend:=(filelength div 2)+128;
   waves1[sampleindex1].lstart:=filelength div 2;
   waves1[sampleindex1].speed:=1024;  // todo!
   waves1[sampleindex1].note:=0;
   waves1[sampleindex1].finetune:=0;
   intwave:=getmem(filelength);
   fileread(fh,intwave^,filelength) ;
   maxval:=0;
   for j:=0 to filelength div 2 do begin waves1[sampleindex1].wave[j]:=intwave[j]/32768; if (abs(intwave[j])/32768)>maxval then maxval:=abs(intwave[j])/32768; end;
   for j:=0 to (filelength div 2)-1 do waves1[sampleindex1].wave[j]*=1/maxval;
   freemem(intwave);
   sounds[soundindex].samples[i]:=waves1[sampleindex1];
   case sr2.name of
       'G2.wav':begin for j:=0 to 43-12 do sounds[soundindex].notes[j]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[43]; end;
       'G#2.wav':begin sounds[soundindex].notes[44-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[44]; end;
       'A2.wav':begin sounds[soundindex].notes[45-12]:=i;  sounds[soundindex].samples[i].speed:=400.90909090909090909090909090909; end;
       'A#2.wav':begin sounds[soundindex].notes[46-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[46]; end;
       'B2.wav':begin sounds[soundindex].notes[47-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[47]; end;
       'C3.wav':begin sounds[soundindex].notes[48-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[48]; end;
       'C#3.wav':begin sounds[soundindex].notes[49-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[49]; end;
       'D3.wav':begin sounds[soundindex].notes[50-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[50]; end;
       'D#3.wav':begin sounds[soundindex].notes[51-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[51]; end;
       'E3.wav':begin sounds[soundindex].notes[52-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[52]; end;
       'F3.wav':begin sounds[soundindex].notes[53-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[53]; end;
       'F#3.wav':begin sounds[soundindex].notes[54-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[54]; end;
       'G3.wav':begin sounds[soundindex].notes[55-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[55]; end;
       'G#3.wav':begin sounds[soundindex].notes[56-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[56]; end;
       'A3.wav':begin sounds[soundindex].notes[57-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[57]; end;
       'A#3.wav':begin sounds[soundindex].notes[58-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[58]; end;
       'B3.wav':begin sounds[soundindex].notes[59-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[59]; end;
       'C4.wav':begin sounds[soundindex].notes[60-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[60]; end;
       'C#4.wav':begin sounds[soundindex].notes[61-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[61]; end;
       'D4.wav':begin sounds[soundindex].notes[62-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[62]; end;
       'D#4.wav':begin sounds[soundindex].notes[63-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[63]; end;
       'E4.wav':begin sounds[soundindex].notes[64-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[64]; end;
       'F4.wav':begin sounds[soundindex].notes[65-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[65]; end;
       'F#4.wav':begin sounds[soundindex].notes[66-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[66]; end;
       'G4.wav':begin sounds[soundindex].notes[67-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[67]; end;
       'G#4.wav':begin sounds[soundindex].notes[68-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[68]; end;
       'A4.wav': begin sounds[soundindex].notes[69-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[69]; end;
       'A#4.wav':begin sounds[soundindex].notes[70-12]:=i; sounds[soundindex].samples[i].speed:=44100/fnotes[70]; end;
       'B4.wav':begin sounds[soundindex].notes[71-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[71]; end;
       'C5.wav':begin sounds[soundindex].notes[72-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[72]; end;
       'C#5.wav':begin sounds[soundindex].notes[73-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[73]; end;
       'D5.wav':begin sounds[soundindex].notes[74-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[74]; end;
       'D#5.wav':begin sounds[soundindex].notes[75-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[75]; end;
       'E5.wav':begin sounds[soundindex].notes[76-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[76]; end;
       'F5.wav':begin for j:=77 to 127 do sounds[soundindex].notes[j-12]:=i;sounds[soundindex].samples[i].speed:=44100/fnotes[77]; end;

       end;
   sampleindex1+=1;
   i+=1;
   until (findnext(sr2)<>0);
  soundindex+=1;

  p999:
until (findnext(sr)<>0);
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
for i:=0 to 127 do flogtable1[i]:=flogtable[512+512*i];
flogtable1[0]:=0;
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
inherited destroy;
end;

procedure TFmVoice.setfreq(afreq:myfloat);

var i:integer;

begin
for i:=0 to 7 do operators[i].setfreq(afreq);
// test
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
av3:=0.1;
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

if (adsrstate=0) then begin sample:=0; goto p999; end;

freq2:=(freq+(c3*lfo1))*c4*lfo2;

// stage2: compute the modulator

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

// stage 3: get a sample

if pa>=wlend then pa:=pa-wlend+wlstart;
pa2:=pa+modulator;
if pa2>=wlend then
    repeat pa2:=pa2-wlend+wlstart until pa2<wlend;
if pa2<0 then
    repeat pa2:=pa2+wlength until pa2>=0;
intpa:=trunc(pa2);
pa21:=intpa+1; if pa21>=wlength then pa21:=trunc(wlstart);
sample:=wptr[intpa];
s2:=wptr[pa21];
d:=pa2-intpa;
sample:=(1-d)*sample+d*s2;

// stage 4: compute ADSR

// adsrstates: 0 idle, 1 attack,2 decay1, 3 decay2, 4 sustain, 5 release 6 end

if adsrstate=4 then goto p101;    // todo: release can start from A1 or A2, not only S!

case adsrstate of
    6: if adsrval=0 then adsrstate:=0;
    5:   // release
         begin
         adsrval:=adsrval+ar4;
         if av4<=av3 then begin if adsrval<av4 then begin adsrval:=av4; adsrstate:=6; end; end
               else begin if adsrval>av4 then begin adsrval:=av4; adsrstate:=6; end; end;
         end;
    3:   // decay2
          begin
          adsrval:=adsrval+ar3;
          if av3<av2 then begin if adsrval<av3 then begin adsrval:=av3; adsrstate:=4; end; end
                 else begin if adsrval>av3 then begin adsrval:=av3; adsrstate:=4; end; end;
          end;
    2:   // decay
          begin
           adsrval:=adsrval+ar2;
          if av2<av1 then begin if adsrval<av2 then begin adsrval:=av2; adsrstate:=3; end; end
                 else begin if adsrval>av2 then begin adsrval:=av2; adsrstate:=3; end; end;
          end;
    1:  // attack
          begin
          adsrval:=adsrval+ar1;
          if av1<av4 then begin if adsrval<av1 then begin adsrval:=av1; adsrstate:=2; end; end
                  else begin if adsrval>av1 then begin  adsrval:=av1; adsrstate:=2; end;  end;
         end;
    end;
p101:
h1:=((1-adsrbias)*adsrval)+adsrbias;
if adsrstate<>0 then sample:=sample*flogtable[round(65535*h1)] else sample:=0;

sample:=sample*c5*lfo3;
h1:=1.000-keysense;
h1:=h1+vel*keysense;
h1:=h1*c6*expr;
sample:=sample*h1;

// TODO: pan
//                       end;
//ftt:=gettime-ft;
//if abs(sample)>1 then begin box(200,200,200,200,0); outtextxy(200,200,floattostr(sample),15); outtextxy(200,220,floattostr(pa2),15); outtextxy(200,240,floattostr(pa21),15); end;
p999:
result:=sample;

end;


procedure initnotes;

var i,j:integer;
    q:myfloat;

begin
q:=c03;
for i:=0 to 127 do
  begin
  fnotes[i]:=q;
  q:=q*a212;
  end;
for i:=0 to 10 do
  for j:=0 to 11 do
    if (12*i+j)<128 then fnotesn[12*i+j]:=natural[j]*power(2,i);

end;



initialization

initflogtable;
initfsinetable;
initnotes;

//initvoices;

end.

