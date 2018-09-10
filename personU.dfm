object frmPerson: TfrmPerson
  Left = 0
  Top = 0
  Caption = 'frmPerson'
  ClientHeight = 500
  ClientWidth = 742
  Color = 16632428
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object RzGroupBox1: TRzGroupBox
    Left = 24
    Top = 8
    Width = 481
    Height = 273
    Caption = '  '#3585#3619#3629#3585#3586#3657#3629#3617#3641#3621#3610#3640#3588#3621#3634#3585#3619
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 32
      Top = 40
      Width = 50
      Height = 16
      Caption = #3588#3635#3609#3635#3627#3609#3657#3634
      Transparent = True
    end
    object RzLabel2: TRzLabel
      Left = 66
      Top = 72
      Width = 16
      Height = 16
      Caption = #3594#3639#3656#3629
      Transparent = True
    end
    object RzLabel3: TRzLabel
      Left = 58
      Top = 104
      Width = 24
      Height = 16
      Caption = #3626#3585#3640#3621
      Transparent = True
    end
    object RzLabel4: TRzLabel
      Left = 48
      Top = 136
      Width = 34
      Height = 16
      Caption = #3623#3633#3609#3648#3585#3636#3604
      Transparent = True
    end
    object Label1: TLabel
      Left = 239
      Top = 40
      Width = 37
      Height = 16
      Caption = 'Label1'
    end
    object RzLabel5: TRzLabel
      Left = 48
      Top = 176
      Width = 31
      Height = 16
      Caption = #3629#3634#3594#3637#3614
      Transparent = True
    end
    object Label2: TLabel
      Left = 277
      Top = 176
      Width = 37
      Height = 16
      Caption = 'Label2'
    end
    object lbID: TLabel
      Left = 312
      Top = 24
      Width = 4
      Height = 16
    end
    object txt_name: TRzEdit
      Left = 88
      Top = 69
      Width = 186
      Height = 24
      Text = ''
      TabOrder = 0
    end
    object txt_lname: TRzEdit
      Left = 88
      Top = 101
      Width = 186
      Height = 24
      Text = ''
      TabOrder = 1
    end
    object DtDOB: TRzDateTimePicker
      Left = 88
      Top = 133
      Width = 186
      Height = 24
      Date = 43353.440841597220000000
      Format = ''
      Time = 43353.440841597220000000
      TabOrder = 2
    end
    object btnSave: TRzButton
      Left = 16
      Top = 224
      Width = 82
      Height = 33
      Caption = #3610#3633#3609#3607#3638#3585
      TabOrder = 3
      OnClick = btnSaveClick
    end
    object btnUpdate: TRzButton
      Left = 104
      Top = 224
      Width = 82
      Height = 33
      Caption = #3649#3585#3657#3652#3586
      TabOrder = 4
      OnClick = btnUpdateClick
    end
    object btnDelete: TRzButton
      Left = 192
      Top = 224
      Width = 82
      Height = 33
      Caption = #3621#3610
      TabOrder = 5
      OnClick = btnDeleteClick
    end
    object btnRefresh: TRzButton
      Left = 280
      Top = 224
      Width = 82
      Height = 33
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591
      TabOrder = 6
      OnClick = btnRefreshClick
    end
    object btnExit: TRzButton
      Left = 376
      Top = 224
      Width = 82
      Height = 33
      Caption = #3629#3629#3585
      TabOrder = 7
      OnClick = btnExitClick
    end
    object CBprename: TRzDBLookupComboBox
      Left = 88
      Top = 39
      Width = 145
      Height = 24
      KeyField = 'pre_code'
      ListField = 'pre_name'
      ListSource = DSCombo
      TabOrder = 8
      OnClick = CBprenameClick
    end
    object CbOccup: TRzDBLookupComboBox
      Left = 85
      Top = 176
      Width = 186
      Height = 24
      KeyField = 'occup_code'
      ListField = 'ocup_name'
      ListSource = DSOccu
      TabOrder = 9
      OnClick = CbOccupClick
    end
  end
  object RzDBGrid1: TRzDBGrid
    Left = 22
    Top = 288
    Width = 674
    Height = 169
    DataSource = DSShowData
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = RzDBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'p_id'
        Title.Caption = #3619#3627#3633#3626
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pre_name'
        Title.Caption = #3588#3635#3609#3635#3627#3609#3657#3634
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fname'
        Title.Caption = #3594#3639#3656#3629
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lname'
        Title.Caption = #3626#3585#3640#3621
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dob'
        Title.Caption = #3623#3633#3609#3648#3604#3639#3629#3609#3611#3637' '#3648#3585#3636#3604
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'occup'
        Title.Caption = #3629#3634#3594#3637#3614
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_sav'
        Title.Caption = #3623#3633#3609#3607#3637#3656#3610#3633#3609#3607#3638#3585
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = #3626#3606#3634#3609#3632
        Width = 50
        Visible = True
      end>
  end
  object qryUnitity: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO person'
      '  (p_id, pre_name, fname, lname, dob, occup, date_sav, status)'
      'VALUES'
      
        '  (:p_id, :pre_name, :fname, :lname, :dob, :occup, :date_sav, :s' +
        'tatus)')
    SQLDelete.Strings = (
      'DELETE FROM person'
      'WHERE'
      '  p_id = :Old_p_id')
    SQLUpdate.Strings = (
      'UPDATE person'
      'SET'
      
        '  p_id = :p_id, pre_name = :pre_name, fname = :fname, lname = :l' +
        'name, dob = :dob, occup = :occup, date_sav = :date_sav, status =' +
        ' :status'
      'WHERE'
      '  p_id = :Old_p_id')
    SQLLock.Strings = (
      'SELECT * FROM person'
      'WHERE'
      '  p_id = :Old_p_id'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT p_id, pre_name, fname, lname, dob, occup, date_sav, statu' +
        's FROM person'
      'WHERE'
      '  p_id = :p_id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM person')
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `person`')
    Left = 544
    Top = 224
  end
  object DSShowData: TDataSource
    DataSet = qryShowData
    Left = 296
    Top = 400
  end
  object qryCombo: TUniQuery
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT'
      'pre_name.pre_code,'
      'pre_name.pre_name'
      'FROM'
      'pre_name')
    Left = 344
    Top = 64
  end
  object DSCombo: TDataSource
    DataSet = qryCombo
    Left = 424
    Top = 64
  end
  object qryShowData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO person'
      '  (p_id, pre_name, fname, lname, dob, occup, date_sav, status)'
      'VALUES'
      
        '  (:p_id, :pre_name, :fname, :lname, :dob, :occup, :date_sav, :s' +
        'tatus)')
    SQLDelete.Strings = (
      'DELETE FROM person'
      'WHERE'
      '  p_id = :Old_p_id')
    SQLUpdate.Strings = (
      'UPDATE person'
      'SET'
      
        '  p_id = :p_id, pre_name = :pre_name, fname = :fname, lname = :l' +
        'name, dob = :dob, occup = :occup, date_sav = :date_sav, status =' +
        ' :status'
      'WHERE'
      '  p_id = :Old_p_id')
    SQLLock.Strings = (
      'SELECT * FROM person'
      'WHERE'
      '  p_id = :Old_p_id'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT p_id, pre_name, fname, lname, dob, occup, date_sav, statu' +
        's FROM person'
      'WHERE'
      '  p_id = :p_id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM person')
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `person`')
    Left = 296
    Top = 344
  end
  object qryOccu: TUniQuery
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT'
      'occupation.occup_code,'
      'occupation.ocup_name'
      'FROM'
      'occupation')
    Left = 400
    Top = 168
  end
  object DSOccu: TDataSource
    DataSet = qryOccu
    Left = 456
    Top = 168
  end
end
