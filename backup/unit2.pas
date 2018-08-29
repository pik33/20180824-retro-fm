unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, midi;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  openmidi;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if callback<>0 then
  begin
    form2.memo1.lines.add(inttostr(mididata));
    form2.memo1.lines.add(inttostr(callback));

    callback:=0;
    midireceived:=0;

    end;
end;

end.

