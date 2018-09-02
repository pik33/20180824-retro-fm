unit midi;

// pik33@o2.pl



{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mmsystem;

const maxmidi=16;

var devicenames:array[0..maxmidi-1] of string;
    mididata:cardinal;
    midireceived:integer;
    callback:integer;
    buffer: array[0..255] of cardinal;
    bs:byte=0;
    be:byte=0;

function readbuffer:cardinal;
procedure writebuffer(a:integer);

procedure openmidi;

var
SysExBuffer: array[0..2047] of AnsiChar;
SysExHeader: _midihdr ;

implementation

uses retro;

function readbuffer:cardinal;

begin
if be<>bs then
  begin
  result:=buffer[bs];
  bs+=1
  end
else result:=$FFFFFFFF;
end;

procedure writebuffer(a:integer);

begin
if be<>bs-1 then
  begin
  buffer[be]:=a;
  be+=1;
  end;
end;





{ The Callback-Procedure receives MIDI data on interrupt : }
procedure MidiInCallback( aMidiInHandle: PHMIDIIN; aMsg: Integer; aInstance,
                          aMidiData, aTimeStamp: integer); stdcall;

begin

callback:=integer(amsg);
case aMsg of
  MIM_DATA:
    begin
    box(500,500,100,100,40);
    writebuffer(amididata);
       // midi data
       //mididata:=amididata;
       //midireceived:=1;
    end;
  MIM_LONGDATA:
     begin
      // sysex
      end;
    MIM_ERROR:
    begin
     // error
     end;
    MIM_LONGERROR:
     begin

     // long data error);
     end;
  end;
end;


procedure openmidi;

var i,inputs:integer;
    result:mmresult;
    caps:TMidiInCaps;
    handle: THandle;

begin
  try
    inputs:= MidiInGetNumDevs;
  except
    inputs:= 0;
  end;

if inputs>maxmidi then inputs:=maxmidi;
for i:=0 to maxmidi-1 do devicenames[i]:='';
if inputs>0 then
  begin
  for i:=0 to inputs-1 do
    begin
    result := midiInGetDevCaps(i, @caps, SizeOf(TMidiInCaps));
    if result = MMSYSERR_NOERROR then devicenames[i]:=(StrPas(caps.szPname));
    end;
  end;

result := midiInOpen( @handle, 0 {devindex}, cardinal(@midiInCallback),
                          0 {devindex}, CALLBACK_FUNCTION);


//box(100,100,400,200,0);
//outtextxyz(100,100,inttostr(result),15,2,2);
//for i:=0 to inputs do outtextxyz(100,132+32*i,devicenames[i],15,2,2);
Result := midiInPrepareHeader(Handle, @SysExHeader, SizeOf(TMidiHdr));
Result := midiInAddBuffer( Handle, @SysExHeader, SizeOf(TMidiHdr));
Result := midiInStart( Handle);
//outtextxyz(100,164,inttostr(result),15,2,2);
end;


end.
