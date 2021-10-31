object FDop: TFDop
  Left = 515
  Top = 273
  Width = 450
  Height = 435
  BorderIcons = [biSystemMenu]
  Caption = #1044#1086#1087#1086#1083#1085#1077#1085#1080#1103
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object b1: TcxButton
    Left = 330
    Top = 2
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 0
    OnClick = b1Click
  end
  object b2: TcxButton
    Left = 330
    Top = 26
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 1
    OnClick = b2Click
  end
  object b3: TcxButton
    Left = 330
    Top = 50
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = b3Click
  end
  object te3: TcxTextEdit
    Left = 0
    Top = 330
    Width = 217
    Height = 21
    TabOrder = 3
  end
  object te4: TcxTextEdit
    Left = 0
    Top = 354
    Width = 217
    Height = 21
    TabOrder = 4
  end
  object g1: TdxDBGrid
    Left = 1
    Top = 0
    Width = 183
    Height = 129
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 5
    OnClick = g1Click
    DataSource = ds1
    Filter.Criteria = {00000000}
    GroupNodeColor = 12970432
    IniFileName = 'grids.ini'
    IniSectionName = 'dop_cats'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = g1CustomDrawCell
    object g1id: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object g1cat: TdxDBGridColumn
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      Width = 184
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cat'
    end
  end
  object b4: TcxButton
    Left = 330
    Top = 330
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 6
    OnClick = b4Click
  end
  object b5: TcxButton
    Left = 330
    Top = 354
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 7
    OnClick = b5Click
  end
  object b6: TcxButton
    Left = 330
    Top = 378
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 8
    OnClick = b6Click
  end
  object g2: TdxDBGrid
    Left = 1
    Top = 130
    Width = 439
    Height = 199
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 9
    OnClick = g2Click
    DataSource = ds2
    Filter.Criteria = {00000000}
    GroupNodeColor = 12970432
    IniFileName = 'grids.ini'
    IniSectionName = 'dops'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = g2CustomDrawCell
    object g2id: TdxDBGridMaskColumn
      Visible = False
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object g2naim: TdxDBGridColumn
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      Width = 278
      BandIndex = 0
      RowIndex = 0
      FieldName = 'naim'
    end
    object g2cat_id: TdxDBGridMaskColumn
      Visible = False
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cat_id'
    end
    object g2cat: TdxDBGridLookupColumn
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      Width = 161
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cat'
    end
  end
  object cb1: TcxComboBox
    Left = 216
    Top = 330
    Width = 114
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Sorted = True
    Properties.OnChange = cb1PropertiesChange
    TabOrder = 10
    OnMouseDown = cb1MouseDown
  end
  object cb2: TcxComboBox
    Left = 216
    Top = 354
    Width = 114
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Sorted = True
    Properties.OnChange = cb2PropertiesChange
    TabOrder = 11
    OnMouseDown = cb2MouseDown
  end
  object te1: TcxTextEdit
    Left = 185
    Top = 2
    Width = 144
    Height = 21
    TabOrder = 12
  end
  object te2: TcxTextEdit
    Left = 185
    Top = 26
    Width = 144
    Height = 21
    TabOrder = 13
  end
  object ds1: TDataSource
    DataSet = DM.Dopcat
    Left = 18
    Top = 46
  end
  object ds2: TDataSource
    DataSet = DM.Dops
    Left = 18
    Top = 168
  end
end
