unit Unit1;

interface

uses
  SettingsUnit,
  MainUnit,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure Clean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Clean;
begin
main.clean;
settings.clean;

end;

procedure TForm1.N2Click(Sender: TObject);
begin
Clean;
Setting.create;
Setting.print(Form1);
end;

end.
