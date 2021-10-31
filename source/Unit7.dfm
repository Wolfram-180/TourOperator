object FDati_Nestand: TFDati_Nestand
  Left = 656
  Top = 102
  BorderStyle = bsToolWindow
  Caption = #1044#1072#1090#1099' '#1085#1077#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1093' '#1079#1072#1077#1079#1076#1086#1074
  ClientHeight = 420
  ClientWidth = 321
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 4
    Top = 339
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label2: TLabel
    Left = 84
    Top = 339
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label1: TLabel
    Left = 138
    Top = 339
    Width = 45
    Height = 13
    Caption = #1042'/'#1042#1099#1077#1079#1076
  end
  object dxDBGrid1: TdxDBGrid
    Left = 1
    Top = 0
    Width = 319
    Height = 337
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'id'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    OnClick = dxDBGrid1Click
    DataSource = ds1
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'dati_nest_inp'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dxDBGrid1id: TdxDBGridMaskColumn
      Visible = False
      Width = 18859
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object dxDBGrid1d1: TdxDBGridDateColumn
      Caption = #1044#1072#1090#1072
      Width = 114
      BandIndex = 0
      RowIndex = 0
      FieldName = 'd1'
    end
    object dxDBGrid1graf: TdxDBGridMaskColumn
      Caption = #1058#1080#1087' '#1076#1072#1090#1099
      Width = 122
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tip'
    end
    object dxDBGrid1Column4: TdxDBGridColumn
      Caption = #1042'/'#1074#1099#1077#1079#1076
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'v_v'
    end
  end
  object b1: TcxButton
    Left = 209
    Top = 352
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 1
    OnClick = b1Click
  end
  object b2: TcxButton
    Left = 209
    Top = 374
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = b2Click
  end
  object b3: TcxButton
    Left = 209
    Top = 396
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = b3Click
  end
  object de1: TcxDateEdit
    Left = 0
    Top = 352
    Width = 83
    Height = 21
    TabOrder = 4
  end
  object de3: TcxDateEdit
    Left = 0
    Top = 374
    Width = 83
    Height = 21
    TabOrder = 5
  end
  object cb1: TcxComboBox
    Left = 82
    Top = 352
    Width = 55
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1040
      #1041)
    Properties.OnChange = cb1PropertiesChange
    TabOrder = 6
  end
  object cb2: TcxComboBox
    Left = 82
    Top = 374
    Width = 55
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1040
      #1041)
    Properties.OnChange = cb2PropertiesChange
    TabOrder = 7
  end
  object cb3: TcxComboBox
    Left = 136
    Top = 352
    Width = 73
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1074#1098#1077#1079#1076
      #1074#1099#1077#1079#1076)
    Properties.OnChange = cb1PropertiesChange
    TabOrder = 8
  end
  object cb4: TcxComboBox
    Left = 136
    Top = 374
    Width = 73
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1074#1098#1077#1079#1076
      #1074#1099#1077#1079#1076)
    Properties.OnChange = cb2PropertiesChange
    TabOrder = 9
  end
  object ds1: TDataSource
    DataSet = DM.Nest_d
    Left = 14
    Top = 32
  end
end
