object FVodiSop: TFVodiSop
  Left = 161
  Top = 180
  BorderStyle = bsToolWindow
  Caption = #1042#1086#1076#1080#1090#1077#1083#1080' '#1080' '#1089#1086#1087#1088#1086#1074#1086#1078#1076#1072#1102#1097#1080#1077
  ClientHeight = 425
  ClientWidth = 835
  Color = clSkyBlue
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 344
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 171
    Top = 344
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label3: TLabel
    Left = 283
    Top = 344
    Width = 68
    Height = 13
    Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object Label4: TLabel
    Left = 379
    Top = 344
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label5: TLabel
    Left = 462
    Top = 344
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label6: TLabel
    Left = 634
    Top = 344
    Width = 45
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object dxDBGrid1: TdxDBGrid
    Left = 2
    Top = 0
    Width = 831
    Height = 342
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'id'
    SummaryGroups = <>
    SummarySeparator = ', '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = dxDBGrid1Click
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = ds1
    Filter.Criteria = {00000000}
    GroupNodeColor = 16312036
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    IniFileName = 'grids.ini'
    IniSectionName = 'vsop'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMouseScroll, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoRowSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    object dxDBGrid1id: TdxDBGridMaskColumn
      Caption = #1048#1044
      Width = 35
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object dxDBGrid1Fio: TdxDBGridColumn
      Caption = #1060#1048#1054
      Width = 238
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fio'
    end
    object dxDBGrid1tip: TdxDBGridColumn
      Caption = #1058#1080#1087
      Width = 30
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tip'
    end
    object dxDBGrid1Ndok: TdxDBGridColumn
      Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Width = 116
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ndok'
    end
    object dxDBGrid1Dr: TdxDBGridDateColumn
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Dr'
    end
    object dxDBGrid1Adres: TdxDBGridColumn
      Caption = #1040#1076#1088#1077#1089
      Width = 129
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Adres'
    end
    object dxDBGrid1Tel: TdxDBGridColumn
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Width = 36
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tel'
    end
  end
  object e1: TcxTextEdit
    Left = 1
    Top = 358
    Width = 168
    Height = 21
    TabOrder = 1
  end
  object e2: TcxTextEdit
    Left = 1
    Top = 380
    Width = 168
    Height = 21
    TabOrder = 2
  end
  object cxButton1: TcxButton
    Left = 721
    Top = 358
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 721
    Top = 380
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 721
    Top = 402
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 5
    OnClick = cxButton3Click
  end
  object e3: TcxTextEdit
    Left = 282
    Top = 358
    Width = 95
    Height = 21
    TabOrder = 6
  end
  object e4: TcxTextEdit
    Left = 282
    Top = 380
    Width = 95
    Height = 21
    TabOrder = 7
  end
  object cb1: TcxComboBox
    Left = 168
    Top = 358
    Width = 115
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1074#1086#1076#1080#1090#1077#1083#1100
      #1089#1086#1087#1088#1086#1074#1086#1078#1076#1072#1102#1097#1080#1081)
    TabOrder = 8
    Text = #1074#1086#1076#1080#1090#1077#1083#1100
  end
  object cb2: TcxComboBox
    Left = 168
    Top = 380
    Width = 115
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1074#1086#1076#1080#1090#1077#1083#1100
      #1089#1086#1087#1088#1086#1074#1086#1078#1076#1072#1102#1097#1080#1081)
    TabOrder = 9
  end
  object d1: TcxDateEdit
    Left = 376
    Top = 358
    Width = 85
    Height = 21
    TabOrder = 10
  end
  object d2: TcxDateEdit
    Left = 376
    Top = 380
    Width = 85
    Height = 21
    TabOrder = 11
  end
  object e5: TcxTextEdit
    Left = 460
    Top = 358
    Width = 173
    Height = 21
    TabOrder = 12
  end
  object e6: TcxTextEdit
    Left = 460
    Top = 380
    Width = 173
    Height = 21
    TabOrder = 13
  end
  object e7: TcxTextEdit
    Left = 632
    Top = 358
    Width = 89
    Height = 21
    TabOrder = 14
  end
  object e8: TcxTextEdit
    Left = 632
    Top = 380
    Width = 89
    Height = 21
    TabOrder = 15
  end
  object ds1: TDataSource
    DataSet = DM.VSop
    Left = 36
    Top = 40
  end
end
