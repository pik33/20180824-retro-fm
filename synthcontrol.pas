unit synthcontrol;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,math,fmsynth;


const maxchannel=24;


type TSynthCtrl = class(TThread)
     private
     protected
       procedure Execute; override;
     public
       Constructor Create(CreateSuspended : boolean);
     end;

  type TOperatorDesc=record

     freq:myfloat;
     mul0,mul1,mul2,mul3,mul4,mul5,mul6,mul7:myfloat;
     wave:TMultiSample;
     wlength,wlstart,wlend:myfloat;
     ar1,av1,ar2,av2,ar3,av3,ar4,av4:myfloat;
     adsrbias:myfloat;
     freqmod:myfloat;
     pan:myfloat;
     end;

  type TInstrDesc=record
     name:string;
     operators:array[0..7] of TOperatorDesc;
     outputtable:array[0..7] of myfloat;
     end;

 type controlarray=array[0..527] of integer;


var channels:array[0..maxchannel-1] of int64;
    notes:array[0..127,0..4] of integer;
    instruments:array[0..192] of TInstrDesc;

    ss1:string;
    keymap2:array[0..255] of byte=(
 //    0   1   2   3   4   5   6   7   8   9
     000,000,000,000,049,057,053,000,000,054, // 000
     056,058,079,000,061,063,060,059,081,083, // 010
     067,072,051,074,077,055,069,000,076,050, // 020
     066,068,000,000,073,075,000,078,080,000, // 030
     000,000,087,000,072,094,074,076,092,000, // 040
     078,080,082,000,085,087,000,090,000,000, // 050
     000,000,000,000,000,000,000,000,000,000, // 060
     100,101,102,000,000,000,000,000,000,000, // 070
     000,000,000,000,000,000,000,000,000,000, // 080
     000,095,000,096,000,000,000,000,067,064, // 090
     063,081,000,066,068,089,070,000,073,071, // 100
     069,091,093,077,083,061,084,088,065,079, // 110
     062,086,060,000,000,000,000,000,000,000, // 120
     000,000,000,000,000,000,000,000,000,000, // 130
     000,000,000,000,000,000,000,000,000,000, // 140
     000,000,000,000,000,000,000,000,000,000, // 150
     000,000,000,000,000,000,000,000,000,000, // 160
     000,000,000,000,000,000,000,000,000,000, // 170
     000,000,000,000,000,000,000,000,000,000, // 180
     000,000,000,000,000,000,000,000,000,000, // 190
     000,000,000,000,000,000,000,000,000,000, // 200
     000,000,000,000,000,000,000,000,000,000, // 210
     000,000,000,000,000,059,000,000,000,000, // 220
     000,000,000,000,000,000,000,000,000,000, // 230
     000,000,000,000,000,000,000,000,000,000, // 240
     000,000,000,000,000,000);                // 250

     acontrols: controlarray;
     cx1,cy1,cx2,cy2,ct,cs:array[0..527] of integer;

     presets: array[0..9999] of controlarray;
     presetnames:array[0..9999] of string[31];
     currentpreset:integer=0;

function allocatechannel(mode:integer):integer;
procedure deallocatechannel(channel:integer);
procedure noteon(channel,note,velocity,preset:integer);
procedure noteoff(channel, note:integer);

implementation
uses retro,midi,umain;

procedure arpeggiator(md:integer);

// a simple arpeggio test

const aa:cardinal=0;
const aaa:cardinal=0;
const aaaa:cardinal=0;
const n1:cardinal=0;
const n2:cardinal=0;
const n3:cardinal=0;
const l:cardinal=0;
const ttt:int64=0;


begin

if md<>0 then
  begin
  aa:=md and $FF;
  aaa:=(md and $FF00) shr 8;
  aaaa:=(md and $FF0000) shr 16 ;
  end;


if (aa=144) and (aaaa>0) then
  begin n1:=aaa; n2:=aaa+4; n3:=aaa+7; ttt:=gettime; end;
if (aa=144) and (aaaa=0) and (aaa=n1) then
  begin n1:=0; n2:=0; n3:=0; end;
//box(0,0,100,100,0); outtextxy(0,0,inttostr(ttt),42);
if (n1>0) and (gettime>ttt+20000) then
  begin
  l+=1; if l>3 then l:=1;
  if l=1 then writebuffer(aa+(n2 shl 8) + (aaaa shl 16))
  else if l=2 then writebuffer(aa+(n3 shl 8) + (aaaa shl 16))
  else if l=3 then writebuffer(aa+(n1 shl 8) + (aaaa shl 16));
  ttt+=20000;

  end;

end;

constructor TSynthCtrl.Create(CreateSuspended : boolean);

begin
  FreeOnTerminate := True;
  inherited Create(CreateSuspended);
end;


procedure deallocatechannel(channel:integer);

begin
channels[channel]:=-$7FFFFFFFFFFFFFFF+abs(channels[channel]);
end;

procedure TSynthCtrl.execute;

label p101,p999;

var md,aa,aaa,aaaa,f:cardinal;
    i,j,ch:integer;
    key:cardinal;

begin
for i:=0 to maxchannel-1 do channels[i]:=0;
for j:=0 to 4 do for i:=0 to 127 do notes[i,j]:=maxchannel;

repeat

key:=readkeybuffer;
if key=32 then for i:=0 to 7 do voices[0].operators[i].adsrstate:=1;
if key=32+$10000 then for i:=0 to 7 do voices[0].operators[i].adsrstate:=5;
if key<>$FFFFFFFF then
  begin
  if key<$10000 then
    begin
    key:=key and 255;
    key:=keymap2[key];
    if key>0 then md:=144+key shl 8+$600000 else md:=$FFFFFFFF;
    end
  else
    begin
    key:=key and 255;
    key:=keymap2[key];
    if key>0 then md:=144+key shl 8 else md:=$FFFFFFFF;
    end;
  goto p101;
  end;

md:=readbuffer;
// arpeggiator(0);


p101:
if md<>$FFFFFFFF then
  begin
//  arpeggiator(md);
  aa:=md and $FF;
  aaa:=(md and $FF00) shr 8;
  aaaa:=(md and $FF0000) shr 16 ;

 if aa=192 then //preset control
   begin
   acontrols:=presets[aaa];
   refreshcontrols;
   goto p999;
   end;


  midireceived:=0;
  f:=round(7492*power(2,(aaa-69)/12));
  if (aa=144) and (aaaa>0) then
    begin
    ch:=allocatechannel(1);
    if ch<maxchannel then
      begin
      for i:=0 to 127 do if notes[i,0]=ch then notes[i,0]:=maxchannel;
      notes[aaa,0]:=ch;
      noteon(ch,aaa,aaaa,0);
      end;
    end;
  if (aa=144) and (aaaa=0) then
    begin
    i:=-1;
    ch:=notes[aaa,0];
    noteoff(ch,aaa);
    deallocatechannel(ch);
    notes[aaa,0]:=maxchannel;
    end;
p999: 
//box2(900,860,1019,1047,33);
  blit($F000000,900,916,$F000000,900,900,120,128,1792,1792);
  box(900,1028,120,16,33);
  outtextxy(904,1028,inttostr(aa),15);
  outtextxy(944,1028,inttostr(aaa),15);
  outtextxy(984,1028,inttostr(aaaa),15);
  end;

sleep(1)
until terminated;
end;

function allocatechannel(mode:integer):integer;

// find the free channel and allocate it
// if all channels busy, send noteoff to the oldest channel if mode 1
// or return maxchannel if mode 0

label p101;

var i,q:integer;
    f:int64;


begin
i:=0;
while i<maxchannel do if channels[i]=0 then goto p101 else i+=1;
while i<maxchannel do if channels[i]<0 then goto p101 else i+=1;

p101:
if i<maxchannel then
  begin
  result:=i;
  channels[i]:=gettime;
  end
else if (i=maxchannel) and (mode=0) then
  begin
  result:=maxchannel;
  end
else
  begin
  i:=0;
  f:=channels[0];
  q:=0;
  while i<maxchannel do
    begin
    if channels[i]<f then
      begin
      f:=channels[i];
      q:=i;
      end;
    i+=1;
    end;
  result:=q;
  channels[q]:=gettime;
  end;
//    box(1000,200,200,100,0); outtextxyz(1000,200,inttostr(result),15,2,2);
end;

procedure noteon(channel,note,velocity,preset:integer);


label p999;
var i:integer;
    f,m:double;
    test:double;
    vel:integer;

begin
if (channel>=maxchannel) or (channel<0) then goto p999;
f:=fnotes[note] ;
voices[channel].setfreq(0);
for i:=0 to 7 do  voices[channel].operators[i].pa:=0;

for i:=0 to 7 do
  begin

  if acontrols[64*i+19]>acontrols[64*i+20] then
    vel:=128*acontrols[64*i+20]+((128*velocity*(acontrols[64*i+19]-acontrols[64*i+20])) div 127)
  else vel:=128*velocity;
  voices[channel].operators[i].vel:=flogtable[49152+vel];
  end;
voices[channel].outmuls[0]:=flogtable1[acontrols[18]];
voices[channel].outmuls[1]:=flogtable1[acontrols[64+18]];
voices[channel].outmuls[2]:=flogtable1[acontrols[128+18]];
voices[channel].outmuls[3]:=flogtable1[acontrols[192+18]];
voices[channel].outmuls[4]:=flogtable1[acontrols[256+18]];
voices[channel].outmuls[5]:=flogtable1[acontrols[320+18]];
voices[channel].outmuls[6]:=flogtable1[acontrols[384+18]];
voices[channel].outmuls[7]:=flogtable1[acontrols[448+18]];

//for i:=0 to 7 do  voices[channel].operators[i].init;

for i:=0 to 7 do  voices[channel].operators[i].wavemode:=1;
for i:=0 to 7 do  voices[channel].operators[i].wptr:=sounds[acontrols[64*i+32]].samples[sounds[acontrols[64*i+32]].notes[note-12]].wave;
for i:=0 to 7 do  voices[channel].operators[i].wlend:=sounds[acontrols[64*i+32]].samples[sounds[acontrols[64*i+32]].notes[note-12]].lend ;
for i:=0 to 7 do  voices[channel].operators[i].wlstart:=sounds[acontrols[64*i+32]].samples[sounds[acontrols[64*i+32]].notes[note-12]].lstart;
for i:=0 to 7 do  voices[channel].operators[i].wlength:=sounds[acontrols[64*i+32]].samples[sounds[acontrols[64*i+32]].notes[note-12]].len;
//ss1:=sounds[waveidx].samples[sounds[waveidx].notes[note-12]].name;
for i:=0 to 7 do  voices[channel].operators[i].freqmod:=sounds[acontrols[64*i+32]].samples[sounds[acontrols[64*i+32]].notes[note-12]].speed;


for i:=0 to 7 do voices[channel].operators[i].setfreq(f*power(2,transpose)*acontrols[24+64*i]/1000+acontrols[25+64*i]/1000);
for i:=0 to 7 do  voices[channel].operators[i].pa:=0;

for i:=0 to 7 do      begin
   if i=0 then att:=sqr(flogtable1[acontrols[8+64*i]])*sqrt(flogtable1[acontrols[8+64*i]]);


   voices[channel].operators[i].av1:=acontrols[12+64*i]/127;
   voices[channel].operators[i].av2:=acontrols[13+64*i]/127;


   voices[channel].operators[i].av3:=acontrols[14+64*i]/127;
   voices[channel].operators[i].av4:=acontrols[15+64*i]/127;

  m:=power(2,(acontrols[17+64*i]/64)*(note-60)/12);

   voices[channel].operators[i].ar1:=sqr(flogtable1[acontrols[8+64*i]])*sqrt(flogtable1[acontrols[8+64*i]])*m;

   voices[channel].operators[i].ar2:=sqr(flogtable1[acontrols[9+64*i]])*sqrt(flogtable1[acontrols[9+64*i]])*m;
   voices[channel].operators[i].ar3:=sqr(flogtable1[acontrols[10+64*i]])*sqrt(flogtable1[acontrols[10+64*i]])*m;
   voices[channel].operators[i].ar4:=sqr(flogtable1[acontrols[11+64*i]])*sqrt(flogtable1[acontrols[11+64*i]])*m;

   if voices[channel].operators[i].av2 < voices[channel].operators[i].av1 then voices[channel].operators[i].ar2*=-1;
   if voices[channel].operators[i].av3 < voices[channel].operators[i].av2 then voices[channel].operators[i].ar3*=-1;
   if voices[channel].operators[i].av4 < voices[channel].operators[i].av3 then voices[channel].operators[i].ar4*=-1;

   voices[channel].operators[i].mul0:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[0+64*i]];
   voices[channel].operators[i].mul1:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[1+64*i]];
   voices[channel].operators[i].mul2:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[2+64*i]];
   voices[channel].operators[i].mul3:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[3+64*i]];
   voices[channel].operators[i].mul4:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[4+64*i]];
   voices[channel].operators[i].mul5:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[5+64*i]];
   voices[channel].operators[i].mul6:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[6+64*i]];
   voices[channel].operators[i].mul7:=15*voices[channel].operators[i].freqmod*flogtable1[acontrols[7+64*i]];

   voices[channel].operators[i].adsrbias:=acontrols[16+64*i]/127;


   end;

for i:=0 to 7 do voices[channel].operators[i].adsrstate:=1;


//box(200,200,600,600,0);
//outtextxy(200,200,inttostr(voices[channel].operators[0].

p999:
end;




procedure noteoff(channel, note:integer);

label p999;
var i:integer;

begin
if channel<maxchannel then for i:=0 to 7 do voices[channel].operators[i].adsrstate:=5;
p999:
end;

end.

