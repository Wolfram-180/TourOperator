object FPitanie: TFPitanie
  Left = 332
  Top = 194
  BorderStyle = bsToolWindow
  Caption = #1042#1080#1076#1099' '#1087#1080#1090#1072#1085#1080#1103
  ClientHeight = 423
  ClientWidth = 392
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
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 392
    Height = 353
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    OnClick = dxDBGrid1Click
    DataSource = ds1
    Filter.Criteria = {00000000}
    GroupNodeColor = 12970432
    IniFileName = 'grids.ini'
    IniSectionName = 'pit'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    object dxDBGrid1Pit: TdxDBGridMaskColumn
      Caption = #1042#1080#1076' '#1087#1080#1090#1072#1085#1080#1103
      Width = 318
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Pit'
    end
  end
  object cxButton1: TcxButton
    Left = 282
    Top = 354
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 282
    Top = 378
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 282
    Top = 402
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = cxButton3Click
  end
  object edit1: TcxTextEdit
    Left = 0
    Top = 354
    Width = 281
    Height = 21
    TabOrder = 4
  end
  object edit3: TcxTextEdit
    Left = 0
    Top = 378
    Width = 281
    Height = 21
    TabOrder = 5
  end
  object ds1: TDataSource
    DataSet = DM.Pit
    Left = 26
    Top = 46
  end
end
