object FFirmMain: TFFirmMain
  Left = 712
  Top = 390
  BorderStyle = bsToolWindow
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  ClientHeight = 589
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 882
    Height = 567
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Codeid'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    OnDblClick = dxDBGrid1DblClick
    BandColor = clRed
    DataSource = DataSource1
    Filter.Criteria = {00000000}
    GroupNodeTextColor = 16105722
    IniFileName = 'grids.ini'
    IniSectionName = 'agent'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMouseScroll, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    object ColumnN: TdxDBGridCalcColumn
      Caption = #8470
      Width = 33
      BandIndex = 0
      RowIndex = 0
      FieldName = 'n'
    end
    object dxDBGrid1r: TdxDBGridLookupColumn
      Caption = #1056#1077#1075#1080#1086#1085
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'reg'
    end
    object dxDBGrid1pr: TdxDBGridLookupColumn
      Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
      Width = 123
      BandIndex = 0
      RowIndex = 0
      FieldName = 'podreg'
    end
    object dxDBGrid1Column5: TdxDBGridColumn
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Width = 187
      BandIndex = 0
      RowIndex = 0
      FieldName = 'naimen'
    end
    object ColumnOCH: TdxDBGridColumn
      Caption = #1054#1095#1077#1088#1077#1076#1085#1086#1089#1090#1100
      Sorted = csDown
      Width = 33
      BandIndex = 0
      RowIndex = 0
      FieldName = 'och'
    end
    object dxDBGrid1Column8: TdxDBGridColumn
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tfe'
    end
    object fax: TdxDBGridColumn
      Caption = #1060#1072#1082#1089
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fax'
    end
    object dxDBGrid1Column1: TdxDBGridColumn
      Caption = #1040#1076#1088#1077#1089' ('#1102#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081')'
      Width = 118
      BandIndex = 0
      RowIndex = 0
      FieldName = 'adres'
    end
    object email: TdxDBGridColumn
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Email'
    end
    object dxDBGrid1Column4: TdxDBGridColumn
      Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1086#1077' '#1083#1080#1094#1086
      Width = 98
      BandIndex = 0
      RowIndex = 0
      FieldName = 'kl'
    end
    object dxDBGrid1Column2: TdxDBGridColumn
      Caption = #1044#1080#1088#1077#1082#1090#1086#1088
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'direktor'
    end
    object dxDBGrid1Column14: TdxDBGridColumn
      Caption = #1042#1080#1076' '#1094#1077#1085#1099
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'C'
    end
    object adr_fak: TdxDBGridColumn
      Caption = #1040#1076#1088#1077#1089' ('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081')'
      Width = 142
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Adres_fak'
    end
    object pokup: TdxDBGridColumn
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Pokup'
    end
    object site: TdxDBGridColumn
      Caption = #1057#1072#1081#1090
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Site'
    end
    object ColumnCod: TdxDBGridColumn
      Caption = #1050#1086#1076
      Width = 33
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Codeid'
    end
    object ColumnOp: TdxDBGridColumn
      Caption = #1054#1087#1077#1088#1072#1090#1086#1088
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'oper'
    end
  end
  object Button1: TcxButton
    Left = 0
    Top = 568
    Width = 292
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TcxButton
    Left = 293
    Top = 568
    Width = 296
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TcxButton
    Left = 590
    Top = 568
    Width = 292
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = cxButton3Click
  end
  object DataSource1: TDataSource
    DataSet = DM.AgentQ
    Left = 32
    Top = 40
  end
end
