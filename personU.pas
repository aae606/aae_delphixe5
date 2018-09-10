unit personU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,
  RzPanel, Data.DB, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, RzDBGrid,
  RzButton, RzCmboBx, Vcl.ComCtrls, RzDTP, Vcl.Mask, RzEdit, Vcl.DBCtrls,
  RzDBCmbo;

type
  TfrmPerson = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    txt_name: TRzEdit;
    txt_lname: TRzEdit;
    DtDOB: TRzDateTimePicker;
    btnSave: TRzButton;
    btnUpdate: TRzButton;
    btnDelete: TRzButton;
    btnRefresh: TRzButton;
    btnExit: TRzButton;
    RzDBGrid1: TRzDBGrid;
    qryUnitity: TUniQuery;
    DSShowData: TDataSource;
    CBprename: TRzDBLookupComboBox;
    qryCombo: TUniQuery;
    DSCombo: TDataSource;
    Label1: TLabel;
    qryShowData: TUniQuery;
    RzLabel5: TRzLabel;
    CbOccup: TRzDBLookupComboBox;
    Label2: TLabel;
    qryOccu: TUniQuery;
    DSOccu: TDataSource;
    lbID: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBprenameClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure Insert;
    procedure UPdate;
    procedure Delete;
    procedure ShowData;
    procedure clearAll;
    procedure CbOccupClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure RzDBGrid1CellClick(Column: TColumn);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPerson: TfrmPerson;

implementation

{$R *.dfm}

uses myDM;

procedure TfrmPerson.btnDeleteClick(Sender: TObject);
begin
     try
       Delete;
       ShowData;
       clearAll;
     except

     end;
end;

procedure TfrmPerson.btnExitClick(Sender: TObject);
begin
    frmPerson.Close;
end;

procedure TfrmPerson.btnRefreshClick(Sender: TObject);
begin
      ShowData;
end;

procedure TfrmPerson.btnSaveClick(Sender: TObject);
begin

     try
       Insert;
       ShowData;
       clearAll;
     except

     end;
end;

procedure TfrmPerson.btnUpdateClick(Sender: TObject);
begin

     try
       UPdate;
       ShowData;
       clearAll;
     except

     end;
end;

procedure TfrmPerson.CbOccupClick(Sender: TObject);
begin
     Label2.Caption := CbOccup.KeyValue;

end;

procedure TfrmPerson.CBprenameClick(Sender: TObject);
begin
    Label1.Caption := CBprename.KeyValue;
end;

procedure TfrmPerson.clearAll;
begin
      //Clear Form
      CBprename.ClearKeyValue;
      txt_name.Clear;
      txt_lname.Clear;
      DtDOB.Date := Now();
      CbOccup.ClearKeyValue;

end;

procedure TfrmPerson.Delete;
begin


  {
  DELETE FROM person WHERE p_id = :Old_p_id
  }

  with qryUnitity do
  begin
    if Active then  Close;
    sql.Clear;
sql.Add('DELETE FROM person WHERE p_id = :Old_p_id ');
Params.ParamByName('Old_p_id').Value := lbID.Caption;
Execute;

  end;


end;

procedure TfrmPerson.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    frmPerson := nil;
end;

procedure TfrmPerson.FormShow(Sender: TObject);
begin
       if qryCombo.active then  Close;
       qryCombo.Open;

       if qryOccu.Active then Close;
       qryOccu.Open;


end;

procedure TfrmPerson.Insert;
begin
  {
    INSERT INTO person
  (p_id, pre_name, fname, lname, dob, occup, date_sav, status)
VALUES
  (:p_id, :pre_name, :fname, :lname, :dob, :occup, :date_sav, :status)

  }
  with qryUnitity do
  begin
  if Active then Close;
    sql.Clear;
    sql.Add('INSERT INTO person  ');
    sql.Add('(p_id, pre_name, fname, lname, dob, occup, date_sav, status)  ' +
     'VALUES  ');
    sql.Add('(:p_id, :pre_name, :fname, :lname, :dob, :occup, :date_sav, ' +
     ':status) ');

      Params.ParamByName('pre_name').Value := Label1.Caption;
      Params.ParamByName('fname').Value := txt_name.Text;
      Params.ParamByName('lname').Value := txt_lname.Text;
      Params.ParamByName('dob').AsDate := DtDOB.Date;
      Params.ParamByName('occup').Value := Label2.Caption;
      Params.ParamByName('date_sav').AsDate := Now();
      Params.ParamByName('status').Value := 'y';

       Execute;
       ShowData;

     end;
end;

procedure TfrmPerson.RzDBGrid1CellClick(Column: TColumn);
var p_id : integer;
begin
  p_id := qryShowData.FieldByName('p_id').AsInteger;
  lbID.Caption :=IntToStr( qryShowData.FieldByName('p_id').AsInteger);
    with qryShowData do
    begin
//      if Active then Close;
//      sql.Clear;
//      sql.Add('SELECT	* FROM	person WHERE	person.p_id = :p_id ');
//      Params.ParamByName('p_id').AsInteger := p_id;
//      open;
      CBprename.KeyValue := FieldByName('pre_name').Value;
      txt_name.Text := FieldByName('fname').Value;
      txt_lname.Text := FieldByName('lname').value;
      DtDOB.Date := FieldByName('dob').AsDateTime;
      CbOccup.KeyValue := FieldByName('occup').Value;

    end;
end;

procedure TfrmPerson.ShowData;
begin
    with qryShowData do
    begin
       if Active then Close;
       open;
    end;
end;

procedure TfrmPerson.UPdate;
begin
    {
    UPDATE person SET
  p_id = :p_id, pre_name = :pre_name, fname = :fname, lname = :lname, dob = :dob,
   occup = :occup, date_sav = :date_sav, status = :status WHERE p_id = :Old_p_id

  }
    with qryUnitity do
    begin
      if Active then Close;
      sql.Clear;
sql.Add('UPDATE person SET ');
sql.Add(' pre_name = :pre_name, fname = :fname, lname = :lname, dob = :dob, ');
sql.Add('occup = :occup WHERE p_id = :Old_p_id');

      Params.ParamByName('pre_name').Value := Label1.Caption;
      Params.ParamByName('fname').Value := txt_name.Text;
      Params.ParamByName('lname').Value := txt_lname.Text;
      Params.ParamByName('dob').AsDate := DtDOB.Date;
      Params.ParamByName('occup').Value := Label2.Caption;
      Params.ParamByName('Old_p_id').Value := lbID.Caption;
      //Params.ParamByName('date_sav').AsDate := Now();
      //Params.ParamByName('status').Value := 'y';

       Execute;

    end;

end;

end.
