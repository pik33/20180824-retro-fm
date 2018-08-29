unit fmsynth;

{$mode objfpc}{$H+}

interface


uses
  Classes, SysUtils;

type PSinglesample=^TSinglesample;
     TSingleSample=single; //array[0..1] of single;

type PSingleStereosample=^TSinglesample;
     TSingleStereoSample=array[0..1] of single;

type TFmOperator=class
     freq:single;
     c3,c4,c5,c6:single;
     lfo1,lfo2,lfo3:single;
     mul0,mul1,mul2,mul3,mul4,mul5,mul6,mul7:single;
     wptr:PSingleSample;
     wlength,wlstart,wlend:integer;  //?
     adsrstate:integer;
     adsrval:single;
     ar1,av1,ar2,av2,ar3,av3,ar4,av4:single;
     adsrbias:single;
     vel,keysense,expr:single;
     pa,pa2:single;
     wavemode:integer;
     intpa:integer;
     outputtable:PSingleSample;
     function getsample:TSingleSample;
     procedure init;
     constructor create(mode:integer;outs:pointer);
     destructor destroy;
     end;

type TFmVoice=class
     operators:array[0..7] of TFmOperator;
     outputs:array[0..7] of TSingleSample;
     outptmuls:array[0..7] of single;
  //   constructor create;
  //   function getsample:TSingleSample;
     end;



var flogtable:array[0..65535] of single;
    foutputtable:array[0..8191] of single;
    fnotes:array[0..127] of single;
    fopdata:array[0..65535] of single;
    fmoperator:TFmOperator;







implementation
    uses retro;

procedure initflogtable ;

var i:integer;
    q,q2:double;

begin
q:=1;
//q2:=0.999841363784793800909651;
q2:= 0.99989460157410704627595119007091;
for i:=65535 downto 0 do
  begin
  flogtable[i]:=q;
  q:=q*q2;
  end;
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

var q:single;
    i:integer;

begin
outputtable:=outs;
if mode=0 then
  begin
  wptr:=getmem(8*65536);
  for i:=0 to 65535 do
    begin
    q:=sin(2*pi*i/65536);
    wptr[i]:=q;
    end;
  wlength:=65536;

  end;
end;

destructor TFmOperator.destroy;

begin
freemem(wptr);
end;

procedure TFmOperator.init; // test init @ 1 kHz

begin

freq:=1000*(65536/192000);    //341
c3:=1;
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
wlength:=65536;
adsrstate:=0;
adsrval:=0;
ar1:=1/1920;
ar2:=-1/19200;
ar3:=-1/19200;
ar4:=-1/1920000;;
av1:=0.9;
av2:=0.75;
av3:=0.5;
av4:=0;
adsrbias:=0;
vel:=1;
keysense:=1;
expr:=1;
end;



function TFmOperator.getsample:TSingleSample;


var res64a:double;
    modulator:single;
    i,j:integer;
    sample:TSingleSample;
    freq2:single;

begin

//ft:=gettime;
//for i:=1 to 1000 do begin

freq2:=(freq+(c3*lfo1))*c4*lfo2;

// stage2: compute the modulator


modulator:=foutputtable[0]*mul0
+foutputtable[1]*mul1
+foutputtable[2]*mul2
+foutputtable[3]*mul3
+foutputtable[4]*mul4
+foutputtable[5]*mul5
+foutputtable[6]*mul6
+foutputtable[7]*mul7;

pa:=pa+freq2;
//pa2:=pa+modulator;

// pa is 32 bit; n bit used for addressing
// todo: what if the sample is looped??

// stage 3
// load the sample

if wavemode=0 then
  begin
  if pa>wlength-0.5 then
     pa:=pa-wlength;
  pa2:=pa+modulator;
  if pa2>wlength-1 then repeat pa2:=pa2-wlength until pa2<=wlength-1;
  end
else
  begin
  if adsrstate<5 then
    begin
    if pa>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend;
    end
  else
    begin
    if pa>=wlength-1 then pa:=wlength-1;
    end;
  pa2:=pa+modulator;
  if pa2>wlend-1 then repeat pa:=pa-wlend+wlstart until pa<=wlend-1;
  end;
intpa:=round(pa2);
sample:=wptr[intpa];

 //        stage 4
 //       Compute ADSR

// adsrstates: 0-idle, 1 attack,2 decay1, 3 decay2, 4 sustain, 5 release

if adsrstate=5 then  // release
  begin
  adsrval:=adsrval+ar4;
  if ar4<0 then begin if adsrval<av4 then adsrstate:=0; end
         else begin if adsrval>av4 then adsrstate:=0; end;
  end
else if adsrstate=3 then  // release
  begin
  adsrval:=adsrval+ar3;
  if ar3<0 then begin if adsrval<av3 then adsrstate:=4; end
         else begin if adsrval>av3 then adsrstate:=4; end;
  end
else if adsrstate=2 then  // release
  begin
  adsrval:=adsrval+ar2;
  if ar2<0 then begin if adsrval<av2 then adsrstate:=3; end
         else begin if adsrval>av2 then adsrstate:=3;  end;
  end
else if adsrstate=1 then  // release
  begin
  adsrval:=adsrval+ar1;
  if ar1<0 then begin if adsrval<av1 then adsrstate:=2; end
         else begin if adsrval>av1 then adsrstate:=2; end;
  end;

if adsrstate<>0 then sample:=sample*flogtable[round(65535*((1-adsrbias)*adsrval)+adsrbias)] else sample:=0;

sample:=sample*c5*lfo3;
sample:=sample*(1-keysense+vel*keysense);
sample:=sample*c6*expr;




// TODO: pan
//                       end;
//ftt:=gettime-ft;

result:=sample;

end;

initialization

initflogtable;

end.

