object frmLeave: TfrmLeave
  Left = 0
  Top = 0
  Caption = 'frmLeave'
  ClientHeight = 513
  ClientWidth = 968
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
    Left = 32
    Top = 24
    Width = 913
    Height = 481
    Caption = #3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621#3585#3634#3619#3621#3634
    TabOrder = 0
    Transparent = True
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 66
      Height = 16
      Caption = #3619#3627#3633#3626#3610#3640#3588#3621#3634#3585#3619
    end
    object lbDb_prename: TRzDBLabel
      Left = 96
      Top = 94
      Width = 124
      Height = 23
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataField = 'pre_name'
      DataSource = DSSearchID
    end
    object lbDb_fname: TRzDBLabel
      Left = 96
      Top = 141
      Width = 102
      Height = 23
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataField = 'fname'
      DataSource = DSSearchID
    end
    object lbDb_lname: TRzDBLabel
      Left = 96
      Top = 188
      Width = 100
      Height = 23
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataField = 'lname'
      DataSource = DSSearchID
    end
    object lbDb_occup: TRzDBLabel
      Left = 99
      Top = 235
      Width = 99
      Height = 23
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataField = 'ocup_name'
      DataSource = DSSearchID
    end
    object lbID: TLabel
      Left = 248
      Top = 40
      Width = 22
      Height = 16
      Caption = 'lbID'
    end
    object txt_id: TRzEdit
      Left = 96
      Top = 37
      Width = 57
      Height = 24
      Text = ''
      TabOrder = 0
    end
    object RzButton1: TRzButton
      Left = 159
      Top = 36
      Caption = #3588#3657#3609#3627#3634' '#3619#3627#3633#3626
      TabOrder = 1
      OnClick = RzButton1Click
    end
    object RzPanel1: TRzPanel
      Left = 16
      Top = 88
      Width = 74
      Height = 41
      Caption = #3588#3635#3609#3635#3627#3609#3657#3634
      TabOrder = 2
    end
    object RzPanel2: TRzPanel
      Left = 16
      Top = 135
      Width = 74
      Height = 41
      Caption = #3594#3639#3656#3629
      TabOrder = 3
    end
    object RzPanel3: TRzPanel
      Left = 16
      Top = 182
      Width = 74
      Height = 41
      Caption = #3626#3585#3640#3621
      TabOrder = 4
    end
    object RzPanel4: TRzPanel
      Left = 16
      Top = 229
      Width = 74
      Height = 41
      Caption = #3629#3634#3594#3637#3614
      TabOrder = 5
    end
    object RzGroupBox2: TRzGroupBox
      Left = 304
      Top = 17
      Width = 473
      Height = 440
      Caption = #3621#3634#3588#3619#3633#3657#3591#3609#3637#3657
      TabOrder = 6
      object Label2: TLabel
        Left = 72
        Top = 35
        Width = 23
        Height = 16
        Caption = #3623#3633#3609#3607#3637#3656
      end
      object Label3: TLabel
        Left = 24
        Top = 64
        Width = 75
        Height = 16
        Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3621#3634
      end
      object Leave_id: TLabel
        Left = 104
        Top = 96
        Width = 50
        Height = 16
        Caption = 'Leave_id'
      end
      object DtLeave: TRzDateTimePicker
        Left = 101
        Top = 27
        Width = 188
        Height = 24
        Date = 43353.589404942130000000
        Format = ''
        Time = 43353.589404942130000000
        TabOrder = 0
      end
      object CbLeaveType: TRzDBLookupComboBox
        Left = 105
        Top = 57
        Width = 184
        Height = 24
        KeyField = 'leave_type_code'
        ListField = 'leave_type_name'
        ListSource = DsLeaveType
        TabOrder = 1
      end
      object btnSave: TRzButton
        Left = 21
        Top = 128
        Caption = #3610#3633#3609#3607#3638#3585
        TabOrder = 2
        OnClick = btnSaveClick
      end
      object btnEdit: TRzButton
        Left = 102
        Top = 128
        Caption = #3649#3585#3657#3652#3586
        TabOrder = 3
        OnClick = btnEditClick
      end
      object btnDel: TRzButton
        Left = 183
        Top = 128
        Caption = #3621#3610
        TabOrder = 4
        OnClick = btnDelClick
      end
      object btnExit: TRzButton
        Left = 264
        Top = 128
        Caption = #3629#3629#3585
        TabOrder = 5
        OnClick = btnExitClick
      end
      object RzDBGrid1: TRzDBGrid
        Left = 21
        Top = 171
        Width = 329
        Height = 254
        DataSource = DsShowData
        ReadOnly = True
        TabOrder = 6
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
            Title.Caption = #3619#3627#3633#3626#3610#3640#3588#3621#3634#3585#3619
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'leave_date'
            Title.Caption = #3621#3634#3623#3633#3609#3607#3637#3656
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'leave_type_name'
            Title.Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3621#3634
            Width = 100
            Visible = True
          end>
      end
      object btnRefresh: TRzButton
        Left = 345
        Top = 126
        Caption = #3648#3619#3637#3618#3585#3604#3641
        TabOrder = 7
        OnClick = btnRefreshClick
      end
    end
  end
  object qrySearchID: TUniQuery
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT'
      'person.p_id,'
      'pre_name.pre_name,'
      'person.fname,'
      'person.lname,'
      'person.dob,'
      'occupation.ocup_name,'
      'person.date_sav,'
      'person.`status`'
      ''
      'FROM'
      'person'
      'INNER JOIN occupation ON person.pre_name = occupation.occup_code'
      'INNER JOIN pre_name ON person.pre_name = pre_name.pre_code'
      'WHERE person.p_id =:p_id')
    Left = 176
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_id'
        Value = nil
      end>
  end
  object DSSearchID: TDataSource
    DataSet = qrySearchID
    Left = 248
    Top = 16
  end
  object qryLeaveType: TUniQuery
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT * FROM `leave_type`')
    Left = 688
    Top = 64
  end
  object DsLeaveType: TDataSource
    DataSet = qryLeaveType
    Left = 776
    Top = 72
  end
  object DsShowData: TDataSource
    DataSet = qryShowData
    Left = 472
    Top = 344
  end
  object qryShowData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO leave_tb'
      '  (leave_id, p_id, leave_date, leave_type)'
      'VALUES'
      '  (:leave_id, :p_id, :leave_date, :leave_type)')
    SQLDelete.Strings = (
      'DELETE FROM leave_tb'
      'WHERE'
      '  leave_id = :Old_leave_id')
    SQLUpdate.Strings = (
      'UPDATE leave_tb'
      'SET'
      
        '  leave_id = :leave_id, p_id = :p_id, leave_date = :leave_date, ' +
        'leave_type = :leave_type'
      'WHERE'
      '  leave_id = :Old_leave_id')
    SQLLock.Strings = (
      'SELECT * FROM leave_tb'
      'WHERE'
      '  leave_id = :Old_leave_id'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT leave_id, p_id, leave_date, leave_type FROM leave_tb'
      'WHERE'
      '  leave_id = :leave_id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM leave_tb')
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT'
      'leave_tb.leave_id,'
      'leave_tb.p_id,'
      'leave_tb.leave_date,'
      'leave_tb.leave_type,'
      'leave_type.leave_type_name'
      'FROM'
      'leave_tb'
      
        'INNER JOIN leave_type ON leave_type.leave_type_code = leave_tb.l' +
        'eave_type'
      'WHERE p_id=:p_id'
      'ORDER BY leave_date DESC')
    Left = 464
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_id'
        Value = nil
      end>
  end
  object qryUtility: TUniQuery
    Connection = DataModule2.UniConnection1
    Left = 760
    Top = 128
  end
end
