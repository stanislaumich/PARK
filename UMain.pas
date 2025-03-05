unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IniFiles;

type
  TFMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
 maxplaces = 12;

var
  FMain: TFMain;
  { ----------------- MAIN VARS  ------------------ }
  version: integer;
  placecount: integer;
  place:array[1..maxplaces] of integer;


  { /---------------- MAIN VARS  ------------------ }

implementation

{$R *.dfm}

procedure TFMain.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure readINI;
var
  ini: Tinifile;
  i: integer;
begin
  ini := Tinifile.Create(Extractfilepath(paramstr(0)) + '\settings.ini');
  version := ini.readinteger('VERSION', 'CURRENT', 0);
  ini.WriteInteger('VERSION', 'CURRENT', version);
  placecount := ini.readinteger('PARKING', 'placecount', 0);
  ini.WriteInteger('PARKING', 'placecount', placecount);
  for i:=1 to placecount do
   begin
     place[i] := ini.readinteger('PARKING', 'place'+inttostr(i), 0);
     ini.WriteInteger('PARKING', 'place'+inttostr(i), place[i]);
   end;



  ini.Free;
end;

procedure TFMain.FormCreate(Sender: TObject);

begin
  readINI;
end;

end.
