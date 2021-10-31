object FKatNom: TFKatNom
  Left = 412
  Top = 141
  BorderStyle = bsToolWindow
  Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080' '#1085#1086#1084#1077#1088#1086#1074
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
  object Label1: TLabel
    Left = 3
    Top = 344
    Width = 53
    Height = 13
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
  end
  object Label4: TLabel
    Left = 214
    Top = 344
    Width = 26
    Height = 13
    Caption = #1052#1077#1089#1090
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 392
    Height = 342
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Codeid'
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
    DataSource = DataSource1
    Filter.Criteria = {00000000}
    GroupNodeColor = 16312036
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    IniFileName = 'grids.ini'
    IniSectionName = 'kat'
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
    object dxDBGrid1Codeid: TdxDBGridMaskColumn
      Visible = False
      Width = 27
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Codeid'
    end
    object dxDBGrid1Kat: TdxDBGridMaskColumn
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      Width = 339
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kat'
    end
    object dxDBGrid1Column3: TdxDBGridColumn
      Caption = #1052#1077#1089#1090
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kr'
    end
  end
  object edit1: TcxTextEdit
    Left = 1
    Top = 358
    Width = 211
    Height = 21
    TabOrder = 1
  end
  object Edit3: TcxTextEdit
    Left = 1
    Top = 380
    Width = 211
    Height = 21
    TabOrder = 2
  end
  object edit2: TcxTextEdit
    Left = 212
    Top = 358
    Width = 49
    Height = 21
    Properties.ReadOnly = True
    TabOrder = 3
    Text = '0'
  end
  object edit4: TcxTextEdit
    Left = 212
    Top = 380
    Width = 49
    Height = 21
    Properties.ReadOnly = True
    TabOrder = 4
    Text = '0'
  end
  object cxButton1: TcxButton
    Left = 282
    Top = 358
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 282
    Top = 380
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 6
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 282
    Top = 402
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 7
    OnClick = cxButton3Click
  end
  object cxSpinButton1: TcxSpinButton
    Left = 261
    Top = 358
    Width = 20
    Height = 21
    Associate = edit2
    AutoSize = False
    Properties.Alignment.Horz = taCenter
    Properties.AssignedValues.MinValue = True
    Properties.MaxValue = 100.000000000000000000
    TabOrder = 8
  end
  object cxSpinButton2: TcxSpinButton
    Left = 261
    Top = 380
    Width = 20
    Height = 21
    Associate = edit4
    AutoSize = False
    Properties.AssignedValues.MinValue = True
    Properties.MaxValue = 100.000000000000000000
    Style.ButtonTransparency = ebtNone
    Style.Shadow = False
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = DM.Kat
    Left = 92
    Top = 56
  end
  object Q1: TADOQuery
    Connection = DM.ac
    Parameters = <>
    Left = 24
    Top = 56
  end
end
