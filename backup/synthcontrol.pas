unit synthcontrol;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,math;


const maxchannel=3; // testing with SID


type TSynthCtrl = class(TThread)
     private
     protected
       procedure Execute; override;
     public
       Constructor Create(CreateSuspended : boolean);
     end;

var channels:array[0..maxchannel-1] of int64;
    notes:array[0..127] of integer;

    keymap2:array[0..255] of byte=(
 //    0   1   2   3   4   5   6   7   8   9
     000,000,000,000,049,057,053,000,000,054, // 000
     056,058,079,000,061,063,060,059,081,083, // 010
     067,072,051,074,077,055,069,052,076,050, // 020
     066,068,000,000,073,075,000,078,080,000, // 030
     000,000,087,000,072,094,074,076,092,000, // 040
     078,080,082,000,085,087,000,090,088,075, // 050
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


function allocatechannel(mode:integer):integer;
procedure deallocatechannel(channel:integer);
procedure noteon(channel,note,velocity,preset:integer);
procedure noteoff(channel, note:integer);

implementation
uses retro,midi,fmsynth;

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

label p101;

var md,aa,aaa,aaaa,f:cardinal;
    i,ch:integer;
    key:cardinal;

begin
for i:=0 to maxchannel-1 do channels[i]:=0;
for i:=0 to 127 do notes[i]:=maxchannel;

repeat

key:=readkeybuffer;
if key=32 then testoperator.adsrstate:=1;
if key=32+$10000 then testoperator.adsrstate:=5;
if key<>$FFFFFFFF then
  begin
  if key<$10000 then
    begin
    key:=key and 255;
    blit($F000000,100,432,$F000000,100,400,100,160,1792,1792);
    box(100,560,100,32,0);
    outtextxyz (100,560,inttostr(key),15,2,2);
    key:=keymap2[key];
    if key>0 then md:=144+key shl 8+$700000 else md:=$FFFFFFFF;
    end
  else
    begin
    blit($F000000,100,432,$F000000,100,400,100,160,1792,1792);
    box(100,560,100,32,0);
    outtextxyz (100,560,inttostr(key),15,2,2);
    key:=key and 255;
    key:=keymap2[key];
    if key>0 then md:=144+key shl 8 else md:=$FFFFFFFF;
    end;
  goto p101;
  end;

md:=readbuffer;

p101:
if md<>$FFFFFFFF then
  begin
  aa:=md and $FF;
  aaa:=(md and $FF00) shr 8;
  aaaa:=(md and $FF0000) shr 16 ;
  midireceived:=0;
  f:=round(7493*power(2,(aaa-69)/12));
  if (aa=144) and (aaaa>0) then
    begin
    ch:=allocatechannel(1);
    if ch<maxchannel then
      begin
      for i:=0 to 127 do if notes[i]=ch then notes[i]:=maxchannel;
      notes[aaa]:=ch;
      noteon(ch,aaa,aaaa,0);
      end;
    end;
  if (aa=144) and (aaaa=0) then
    begin
    i:=-1;
    ch:=notes[aaa];
    noteoff(ch,aaa);
    deallocatechannel(ch);
    notes[aaa]:=maxchannel;
    end;

  blit($F000000,300,396,$F000000,300,300,300,96,1792,1792);
  box(300,396,300,96,0);
  outtextxyz(300,396,inttostr(aa),15,2,2);
  outtextxyz(300,428,inttostr(aaa),15,2,2);
  outtextxyz(300,460,inttostr(aaaa),15,2,2);

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
end;


procedure noteon(channel,note,velocity,preset:integer);

// experimental version for SID
label p999;
var base,f:integer;

begin
if (channel>=maxchannel) or (channel<0) then goto p999;
base:=channel*7;
f:=round(7493*power(2,(note-69)/12));

  poke(base+$d400,f and 255);
  poke(base+$d401,f shr 8);
  poke(base+$d402,0);
  poke(base+$D403,8);
  poke(base+$d405,$18);
  poke(base+$d406,$8+(velocity shl 1) and $F0);
  poke($d418,$0f);
  poke(base+$d404,$41);
p999:
end;

procedure noteoff(channel, note:integer);

label p999;
var base:integer;

begin
if (channel>=maxchannel) or (channel<0) then goto p999;
base:=channel*7;
poke(base+$d404,$40);
p999:
end;

end.

