object frmReport: TfrmReport
  Left = 0
  Top = 0
  Caption = 'frmReport'
  ClientHeight = 497
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object RzDBGrid1: TRzDBGrid
    Left = 40
    Top = 78
    Width = 609
    Height = 211
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'p_id'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fullname'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ocup_name'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'leave_date'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'leave_type_name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'leave_time'
        Visible = True
      end>
  end
  object dt_end: TRzDateTimePicker
    Left = 40
    Top = 51
    Width = 186
    Height = 21
    Date = 43353.758791817130000000
    Format = ''
    Time = 43353.758791817130000000
    TabOrder = 1
  end
  object dt_start: TRzDateTimePicker
    Left = 40
    Top = 24
    Width = 186
    Height = 21
    Date = 43353.758849571760000000
    Format = ''
    Time = 43353.758849571760000000
    TabOrder = 2
  end
  object RzButton1: TRzButton
    Left = 248
    Top = 24
    Caption = 'RzButton1'
    TabOrder = 3
    OnClick = RzButton1Click
  end
  object UniQuery1: TUniQuery
    Connection = DataModule2.UniConnection1
    SQL.Strings = (
      'SELECT'
      'person.p_id,'
      
        'CONCAT(pre_name.pre_name,person.fname,'#39' '#39',person.lname) as fulln' +
        'ame,'
      'pre_name.pre_name,'
      'person.fname,'
      'person.lname,'
      'person.dob,'
      'TIMESTAMPDIFF(YEAR, person.dob, CURDATE()) AS age,'
      'occupation.ocup_name,'
      'leave_tb.leave_date,'
      'leave_type.leave_type_name,'
      'count(leave_tb.leave_type) leave_time'
      'FROM'
      'person'
      'INNER JOIN leave_tb ON person.p_id = leave_tb.p_id'
      
        'INNER JOIN leave_type ON leave_tb.leave_type = leave_type.leave_' +
        'type_code'
      'INNER JOIN pre_name ON person.pre_name = pre_name.pre_code'
      'INNER JOIN occupation ON person.occup = occupation.occup_code'
      '#WHERE leave_date BETWEEN '#39'2018-01-01'#39' AND '#39'2018-12-31'#39
      'WHERE leave_date BETWEEN :d_start AND :d_end'
      'GROUP BY leave_type.leave_type_name '
      'ORDER BY leave_tb.p_id')
    Left = 232
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd_start'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'd_end'
        Value = nil
      end>
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 352
    Top = 360
  end
end
