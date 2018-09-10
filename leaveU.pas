unit leaveU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS,
  DBAccess, Uni, RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzDBLbl,
  Vcl.DBCtrls, RzDBCmbo, Vcl.ComCtrls, RzDTP, Vcl.Grids, Vcl.DBGrids, RzDBGrid;

type
  TfrmLeave = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    txt_id: TRzEdit;
    RzButton1: TRzButton;
    qrySearchID: TUniQuery;
    DSSearchID: TDataSource;
    lbDb_prename: TRzDBLabel;
    lbDb_fname: TRzDBLabel;
    lbDb_lname: TRzDBLabel;
    lbDb_occup: TRzDBLabel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    DtLeave: TRzDateTimePicker;
    Label2: TLabel;
    CbLeaveType: TRzDBLookupComboBox;
    Label3: TLabel;
    btnSave: TRzButton;
    btnEdit: TRzButton;
    btnDel: TRzButton;
    btnExit: TRzButton;
    qryLeaveType: TUniQuery;
    DsLeaveType: TDataSource;
    DsShowData: TDataSource;
    lbID: TLabel;
    RzDBGrid1: TRzDBGrid;
    qryShowData: TUniQuery;
    qryUtility: TUniQuery;
    Leave_id: TLabel;
    btnRefresh: TRzButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzButton1Click(Sender: TObject);
    procedure btnExitClick(Sender: TObject);

    procedure insert;
    procedure update;
    procedure delete;
    procedure clearAll;
    procedure showData;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure RzDBGrid1CellClick(Column: TColumn);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeave: TfrmLeave;

implementation

{$R *.dfm}

uses myDM;

procedure TfrmLeave.btnDelClick(Sender: TObject);
begin
     try
         delete;
         showData;
                clearAll;
     except

     end;
end;

procedure TfrmLeave.btnEditClick(Sender: TObject);
begin
    try
      update;
      showData;
             clearAll;
    except

    end;
end;

procedure TfrmLeave.btnExitClick(Sender: TObject);
begin
    frmLeave.Close;
end;

procedure TfrmLeave.btnRefreshClick(Sender: TObject);
begin
    with qryShowData do
    begin
       if active then close;
          params.ParamByName('p_id').Value := trim( txt_id.Text );
          open;
    end;
end;

procedure TfrmLeave.btnSaveClick(Sender: TObject);
begin
     try
       insert;
       showData;
       clearAll;
     except

     end;
end;

procedure TfrmLeave.clearAll;
begin
    {

    }
    DtLeave.Date := Now();
    CbLeaveType.ClearKeyValue;
end;

procedure TfrmLeave.delete;
begin
   {
DELETE FROM leave_tb WHERE leave_id = :Old_leave_id
   }
         with qryUtility do
         begin
            if Active then close;
            sql.Clear;
sql.Add('DELETE FROM leave_tb WHERE leave_id = :Old_leave_id');
params.ParamByName('Old_leave_id').Value := Leave_id.Caption;
Execute;

         end;

end;

procedure TfrmLeave.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    frmLeave := nil;
end;

procedure TfrmLeave.FormShow(Sender: TObject);
begin
     with qryLeaveType do
     begin
       if Active  then Close;
       open;

     end;
end;

procedure TfrmLeave.insert;
begin
 {
 INSERT INTO leave_tb
  (leave_id, p_id, leave_date, leave_type)
VALUES (:leave_id, :p_id, :leave_date, :leave_type)
 }
 with qryUtility do
 begin
   if Active  then Close;
   sql.Clear;
sql.Add('INSERT INTO leave_tb ');
sql.Add('( p_id, leave_date, leave_type) ');
sql.Add('VALUES ( :p_id, :leave_date, :leave_type)');
params.ParamByName('p_id').Value :=txt_id.Text;
params.ParamByName('leave_date').AsDate := DtLeave.Date;
params.ParamByName('leave_type').Value := CbLeaveType.KeyValue;

Execute

 end;
end;

procedure TfrmLeave.RzButton1Click(Sender: TObject);
begin
{

}
     if txt_id.Text <>'' then
     begin
     with qrySearchID do
     begin
       if Active then Close;
        params.ParamByName('p_id').Value :=Trim(txt_id.Text);
       open;
     end;

     end;

     qryShowData.Close;
     clearAll;

end;

procedure TfrmLeave.RzDBGrid1CellClick(Column: TColumn);
var lev_id : integer;
begin
lev_id := qryShowData.FieldByName('leave_id').AsInteger;
Leave_id.Caption := IntToStr( qryShowData.FieldByName('leave_id').AsInteger );
    with qryShowData do
      begin
          DtLeave.Date := FieldByName('leave_date').AsDateTime;
          CbLeaveType.KeyValue := FieldByName('leave_type').Value;
      end;
end;

procedure TfrmLeave.showData;
begin
    {

    }
    with qryShowData do
    begin
      if Active then Close;
      params.ParamByName('p_id').Value := txt_id.Text;
      open;
    end;

end;

procedure TfrmLeave.update;
begin
{
UPDATE leave_tb SET
leave_id = :leave_id, p_id = :p_id, leave_date = :leave_date, leave_type = :leave_type
WHERE leave_id = :Old_leave_id
}

  with qryUtility do
  begin
    if Active then Close;
    sql.Clear;
sql.Add('UPDATE leave_tb SET ');
sql.Add('p_id = :p_id, leave_date = :leave_date, leave_type = :leave_type');
sql.Add('WHERE leave_id = :Old_leave_id');
params.ParamByName('p_id').Value :=txt_id.Text;
params.ParamByName('leave_date').AsDate := DtLeave.Date;
params.ParamByName('leave_type').Value := CbLeaveType.KeyValue;
params.ParamByName('Old_leave_id').Value := Leave_id.Caption;
Execute;
  end;

end;

end.
