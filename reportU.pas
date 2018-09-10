unit reportU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, Data.DB, MemDS, DBAccess, Uni;

type
  TfrmReport = class(TForm)
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    RzDBGrid1: TRzDBGrid;
    dt_end: TRzDateTimePicker;
    dt_start: TRzDateTimePicker;
    RzButton1: TRzButton;
    procedure RzButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReport: TfrmReport;

implementation

{$R *.dfm}

uses myDM;

procedure TfrmReport.RzButton1Click(Sender: TObject);
begin
     with UniQuery1 do
      begin
         if active  then close;
         params.ParamByName('d_start').AsDate := dt_start.Date;
         params.ParamByName('d_end').AsDate := dt_end.Date;
         open;

      end;
end;

end.
