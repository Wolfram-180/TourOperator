object FRegPodregNastr: TFRegPodregNastr
  Left = 132
  Top = 120
  BorderStyle = bsToolWindow
  Caption = #1056#1077#1075#1080#1086#1085#1099' '#1080' '#1087#1086#1076#1088#1077#1075#1080#1086#1085#1099
  ClientHeight = 490
  ClientWidth = 787
  Color = 16707535
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
    Left = 2
    Top = 3
    Width = 44
    Height = 13
    Caption = #1056#1077#1075#1080#1086#1085#1099
  end
  object Label2: TLabel
    Left = 394
    Top = 3
    Width = 63
    Height = 13
    Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085#1099
  end
  object reg_grid: TdxDBGrid
    Left = 2
    Top = 18
    Width = 391
    Height = 223
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Codeid'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    OnClick = reg_gridClick
    DataSource = DataSource1
    Filter.Criteria = {00000000}
    GroupNodeColor = 12057050
    IniFileName = 'grids.ini'
    IniSectionName = 'regdb'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = reg_gridCustomDrawCell
    object reg_gridCodeid: TdxDBGridMaskColumn
      Visible = False
      Width = 76
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object reg_gridReg: TdxDBGridMaskColumn
      Caption = #1056#1077#1075#1080#1086#1085
      Width = 362
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Reg'
    end
  end
  object e1: TcxTextEdit
    Left = 0
    Top = 266
    Width = 283
    Height = 21
    TabOrder = 1
  end
  object e0: TcxTextEdit
    Left = 0
    Top = 242
    Width = 283
    Height = 21
    TabOrder = 2
  end
  object cxButton1: TcxButton
    Left = 283
    Top = 242
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 283
    Top = 266
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 283
    Top = 290
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 5
    OnClick = cxButton3Click
  end
  object podreg_grid: TdxDBGrid
    Left = 394
    Top = 18
    Width = 392
    Height = 223
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Codeid'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 6
    OnClick = podreg_gridClick
    DataSource = DataSource2
    Filter.Criteria = {00000000}
    GroupNodeColor = 14410994
    IniFileName = 'grids.ini'
    IniSectionName = 'podregdb'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = podreg_gridCustomDrawCell
    object dxDBGrid1Podreg: TdxDBGridMaskColumn
      Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
      Width = 314
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Podreg'
    end
  end
  object e3: TcxTextEdit
    Left = 393
    Top = 266
    Width = 282
    Height = 21
    TabOrder = 7
  end
  object e2: TcxTextEdit
    Left = 393
    Top = 242
    Width = 282
    Height = 21
    TabOrder = 8
  end
  object cxButton4: TcxButton
    Left = 675
    Top = 242
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 9
    OnClick = cxButton4Click
  end
  object cxButton5: TcxButton
    Left = 675
    Top = 266
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 10
    OnClick = cxButton5Click
  end
  object cxButton6: TcxButton
    Left = 675
    Top = 290
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 11
    OnClick = cxButton6Click
  end
  object lb2: TcxListBox
    Left = 393
    Top = 312
    Width = 393
    Height = 177
    Columns = 2
    ItemHeight = 13
    TabOrder = 12
  end
  object cxButton8: TcxButton
    Left = 535
    Top = 287
    Width = 139
    Height = 25
    Caption = '/\'
    TabOrder = 13
    OnClick = cxButton8Click
  end
  object cxButton7: TcxButton
    Left = 394
    Top = 287
    Width = 140
    Height = 25
    Caption = '\/'
    TabOrder = 14
    OnClick = cxButton7Click
  end
  object DataSource1: TDataSource
    DataSet = DM.RegQ
    Left = 336
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = DM.PodRegQ
    Left = 424
    Top = 40
  end
end
