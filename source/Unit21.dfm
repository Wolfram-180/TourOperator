object FDati: TFDati
  Left = 411
  Top = 176
  BorderStyle = bsToolWindow
  Caption = #1044#1072#1090#1099' '#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1093' '#1079#1072#1077#1079#1076#1086#1074
  ClientHeight = 419
  ClientWidth = 325
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
    Left = 0
    Top = 339
    Width = 35
    Height = 13
    Caption = #1044#1072#1090#1072' 1'
  end
  object Label1: TLabel
    Left = 80
    Top = 339
    Width = 35
    Height = 13
    Caption = #1044#1072#1090#1072' 2'
  end
  object Label2: TLabel
    Left = 164
    Top = 339
    Width = 43
    Height = 13
    Caption = #1062#1077#1087#1086#1095#1082#1072
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 324
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
    IniSectionName = 'dati'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dxDBGrid1id: TdxDBGridMaskColumn
      Visible = False
      Width = 4022
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object dxDBGrid1d1: TdxDBGridDateColumn
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'd1'
    end
    object dxDBGrid1d2: TdxDBGridDateColumn
      Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'd2'
    end
    object dxDBGrid1graf: TdxDBGridMaskColumn
      Caption = #1062#1077#1087#1086#1095#1082#1072
      Width = 176
      BandIndex = 0
      RowIndex = 0
      FieldName = 'graf'
    end
  end
  object b1: TcxButton
    Left = 214
    Top = 352
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 1
    OnClick = b1Click
  end
  object b2: TcxButton
    Left = 214
    Top = 374
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = b2Click
  end
  object b3: TcxButton
    Left = 214
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
  object de2: TcxDateEdit
    Left = 82
    Top = 352
    Width = 83
    Height = 21
    TabOrder = 5
  end
  object se1: TcxSpinEdit
    Left = 164
    Top = 352
    Width = 49
    Height = 21
    Properties.MinValue = 1.000000000000000000
    TabOrder = 6
    Value = 1
  end
  object de3: TcxDateEdit
    Left = 0
    Top = 374
    Width = 83
    Height = 21
    TabOrder = 7
  end
  object de4: TcxDateEdit
    Left = 82
    Top = 374
    Width = 83
    Height = 21
    TabOrder = 8
  end
  object se2: TcxSpinEdit
    Left = 164
    Top = 374
    Width = 49
    Height = 21
    Properties.MinValue = 1.000000000000000000
    TabOrder = 9
    Value = 1
  end
  object ds1: TDataSource
    DataSet = DM.Periods
    Left = 14
    Top = 24
  end
end
