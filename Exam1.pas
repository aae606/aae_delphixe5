unit Exam1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    procedure N7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses personU, leaveU, reportU;

procedure TfrmMain.N2Click(Sender: TObject);
begin
    Application.CreateForm(TfrmPerson,frmPerson);
end;

procedure TfrmMain.N3Click(Sender: TObject);
begin
    Application.CreateForm(TfrmLeave,frmLeave);
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
      Application.CreateForm(TfrmReport,frmReport);
end;

procedure TfrmMain.N7Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
