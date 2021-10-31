object FBonus: TFBonus
  Left = 380
  Top = 143
  BorderStyle = bsToolWindow
  Caption = #1041#1086#1085#1091#1089#1085#1099#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 449
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 42
    Width = 68
    Height = 13
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 80
    Top = 42
    Width = 85
    Height = 13
    Caption = #1053#1072#1095#1072#1083#1086' '#1079#1072#1077#1079#1076#1072' '#1089
  end
  object Label3: TLabel
    Left = 200
    Top = 44
    Width = 12
    Height = 13
    Caption = #1087#1086
  end
  object Label4: TLabel
    Left = 80
    Top = 82
    Width = 43
    Height = 13
    Caption = #1057#1091#1084#1084#1072' 1'
  end
  object Label5: TLabel
    Left = 136
    Top = 82
    Width = 43
    Height = 13
    Caption = #1057#1091#1084#1084#1072' 2'
  end
  object Label6: TLabel
    Left = 192
    Top = 80
    Width = 17
    Height = 13
    Caption = '+ %'
  end
  object Label7: TLabel
    Left = 2
    Top = 4
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object l8: TLabel
    Left = 258
    Top = 23
    Width = 11
    Height = 13
    Caption = #8470
  end
  object dbg1: TdxDBGrid
    Left = 1
    Top = 232
    Width = 320
    Height = 192
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'nomer_prog'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    OnClick = dbg1Click
    DataSource = ds2
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'bp2'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dbg1nazv: TdxDBGridColumn
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      Width = 162
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nazv'
    end
    object dbg1nomer_prog: TdxDBGridMaskColumn
      Caption = #8470' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nomer_prog'
    end
    object dbg1d1: TdxDBGridDateColumn
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'd1'
    end
    object dbg1d2: TdxDBGridDateColumn
      Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'd2'
    end
  end
  object b1: TcxButton
    Left = 233
    Top = 96
    Width = 40
    Height = 21
    Caption = '+'
    TabOrder = 1
    OnClick = b1Click
  end
  object cb1: TcxCheckListBox
    Left = 1
    Top = 55
    Width = 72
    Height = 176
    Items = <>
    TabOrder = 2
  end
  object de1: TcxDateEdit
    Left = 80
    Top = 55
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object de2: TcxDateEdit
    Left = 200
    Top = 55
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object se1: TcxSpinEdit
    Left = 192
    Top = 96
    Width = 41
    Height = 21
    Properties.AssignedValues.MinValue = True
    Properties.MaxValue = 100.000000000000000000
    TabOrder = 5
  end
  object te1: TcxTextEdit
    Left = 0
    Top = 16
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object cxButton1: TcxButton
    Left = 274
    Top = 96
    Width = 40
    Height = 21
    Caption = '-'
    TabOrder = 7
    OnClick = cxButton1Click
  end
  object dbg2: TdxDBGrid
    Left = 80
    Top = 120
    Width = 241
    Height = 110
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 8
    OnClick = dbg2Click
    DataSource = ds1
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'bp1'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dbg2summa1: TdxDBGridCurrencyColumn
      Caption = #1057#1091#1084#1084#1072' 1'
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'summa1'
      Nullable = False
    end
    object dbg2summa2: TdxDBGridCurrencyColumn
      Caption = #1057#1091#1084#1084#1072' 2'
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'summa2'
      Nullable = False
    end
    object dbg2procent: TdxDBGridMaskColumn
      Caption = '+ '#1087#1088#1086#1094#1077#1085#1090
      BandIndex = 0
      RowIndex = 0
      FieldName = 'procent'
    end
  end
  object cxButton3: TcxButton
    Left = 9
    Top = 426
    Width = 56
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 9
    OnClick = cxButton3Click
  end
  object e1: TcxTextEdit
    Left = 80
    Top = 96
    Width = 49
    Height = 21
    TabOrder = 10
    OnKeyPress = cxTextEdit1KeyPress
  end
  object e2: TcxTextEdit
    Left = 136
    Top = 96
    Width = 49
    Height = 21
    TabOrder = 11
    OnKeyPress = e2KeyPress
  end
  object cxButton2: TcxButton
    Left = 66
    Top = 426
    Width = 87
    Height = 21
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103
    TabOrder = 12
    OnClick = cxButton2Click
  end
  object ds1: TDataSource
    DataSet = q1
    Left = 272
    Top = 136
  end
  object ds2: TDataSource
    DataSet = q2
    Left = 32
    Top = 264
  end
  object q1: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select summa1,summa2,procent from bonuses where nomer_prog=1')
    Left = 224
    Top = 136
    object q1summa1: TBCDField
      FieldName = 'summa1'
      Precision = 19
    end
    object q1summa2: TBCDField
      FieldName = 'summa2'
      Precision = 19
    end
    object q1procent: TSmallintField
      FieldName = 'procent'
    end
  end
  object q2: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select distinct nazv,nomer_prog,d1,d2 from bonuses order by nome' +
        'r_prog')
    Left = 80
    Top = 264
    object q2nazv: TWideStringField
      FieldName = 'nazv'
      Size = 200
    end
    object q2nomer_prog: TIntegerField
      FieldName = 'nomer_prog'
    end
    object q2d1: TDateTimeField
      FieldName = 'd1'
    end
    object q2d2: TDateTimeField
      FieldName = 'd2'
    end
  end
end
