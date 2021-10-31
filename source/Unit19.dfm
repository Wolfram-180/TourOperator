object FTransfer: TFTransfer
  Left = 296
  Top = 251
  BorderStyle = bsToolWindow
  Caption = #1058#1088#1072#1085#1089#1092#1077#1088
  ClientHeight = 432
  ClientWidth = 647
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
  object Label2: TLabel
    Left = 480
    Top = 339
    Width = 55
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label1: TLabel
    Left = 257
    Top = 339
    Width = 102
    Height = 13
    Caption = #1055#1091#1085#1082#1090' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1103
  end
  object Label3: TLabel
    Left = 129
    Top = 339
    Width = 82
    Height = 13
    Caption = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label4: TLabel
    Left = 1
    Top = 339
    Width = 98
    Height = 13
    Caption = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label5: TLabel
    Left = 384
    Top = 339
    Width = 42
    Height = 13
    Caption = #1042#1088#1077#1084#1103' 1'
  end
  object Label6: TLabel
    Left = 432
    Top = 339
    Width = 42
    Height = 13
    Caption = #1042#1088#1077#1084#1103' 2'
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 647
    Height = 337
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Codeid'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    OnClick = dxDBGrid1Click
    DataSource = DataSource1
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'trdb'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    object dxDBGrid1Codeid: TdxDBGridMaskColumn
      Visible = False
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Codeid'
    end
    object dxDBGrid1p1str: TdxDBGridLookupColumn
      Caption = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      Width = 137
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p1str'
    end
    object dxDBGrid1p2str: TdxDBGridLookupColumn
      Caption = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
      Width = 144
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p2str'
    end
    object dxDBGrid1p3str: TdxDBGridLookupColumn
      Caption = #1055#1091#1085#1082#1090' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1103
      Width = 142
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p3str'
    end
    object dxDBGrid1St: TdxDBGridCurrencyColumn
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'St'
      Nullable = False
    end
    object dxDBGrid1p1: TdxDBGridMaskColumn
      Visible = False
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p1'
    end
    object dxDBGrid1p2: TdxDBGridMaskColumn
      Visible = False
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p2'
    end
    object dxDBGrid1p3: TdxDBGridMaskColumn
      Visible = False
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p3'
    end
    object dxDBGrid1t1: TdxDBGridColumn
      Caption = #1042#1088#1077#1084#1103' 1'
      Width = 47
      BandIndex = 0
      RowIndex = 0
      FieldName = 't1'
    end
    object dxDBGrid1t2: TdxDBGridColumn
      Caption = #1042#1088#1077#1084#1103' 2'
      Sorted = csUp
      Width = 63
      BandIndex = 0
      RowIndex = 0
      FieldName = 't2'
    end
    object ColumnA_B: TdxDBGridColumn
      Caption = #1058#1080#1087
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'a_b'
    end
  end
  object b1: TcxButton
    Left = 537
    Top = 354
    Width = 110
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 1
    OnClick = b1Click
  end
  object b2: TcxButton
    Left = 537
    Top = 378
    Width = 110
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = b2Click
  end
  object b3: TcxButton
    Left = 537
    Top = 402
    Width = 110
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = b3Click
  end
  object sti: TcxTextEdit
    Left = 480
    Top = 354
    Width = 57
    Height = 21
    TabOrder = 4
    Text = '0'
    OnKeyPress = stiKeyPress
  end
  object ste: TcxTextEdit
    Left = 480
    Top = 378
    Width = 57
    Height = 21
    TabOrder = 5
    Text = '0'
    OnKeyPress = steKeyPress
  end
  object p1i: TcxComboBox
    Left = 0
    Top = 354
    Width = 129
    Height = 21
    Properties.DropDownRows = 11
    TabOrder = 6
    Text = #1085#1077#1090
  end
  object p2i: TcxComboBox
    Left = 128
    Top = 354
    Width = 129
    Height = 21
    Properties.DropDownRows = 11
    TabOrder = 7
    Text = #1058#1091#1083#1072
  end
  object p3i: TcxComboBox
    Left = 256
    Top = 354
    Width = 129
    Height = 21
    Properties.DropDownRows = 11
    TabOrder = 8
    Text = #1085#1077#1090
  end
  object p1e: TcxComboBox
    Left = 0
    Top = 378
    Width = 129
    Height = 21
    Properties.DropDownRows = 11
    TabOrder = 9
  end
  object p2e: TcxComboBox
    Left = 128
    Top = 378
    Width = 129
    Height = 21
    Properties.DropDownRows = 11
    TabOrder = 10
  end
  object p3e: TcxComboBox
    Left = 256
    Top = 378
    Width = 129
    Height = 21
    Properties.DropDownRows = 11
    TabOrder = 11
  end
  object t1i: TcxMaskEdit
    Left = 384
    Top = 354
    Width = 41
    Height = 21
    Properties.EditMask = '!90:00;1;_'
    Properties.MaxLength = 0
    TabOrder = 12
    Text = '09:00'
  end
  object t2i: TcxMaskEdit
    Left = 432
    Top = 354
    Width = 41
    Height = 21
    Properties.EditMask = '!90:00;1;_'
    Properties.MaxLength = 0
    TabOrder = 13
    Text = '09:00'
  end
  object t1e: TcxMaskEdit
    Left = 384
    Top = 378
    Width = 41
    Height = 21
    Properties.EditMask = '!90:00;1;_'
    Properties.MaxLength = 0
    TabOrder = 14
    Text = '  :  '
  end
  object t2e: TcxMaskEdit
    Left = 432
    Top = 378
    Width = 41
    Height = 21
    Properties.EditMask = '!90:00;1;_'
    Properties.MaxLength = 0
    TabOrder = 15
    Text = '  :  '
  end
  object rg1: TcxRadioGroup
    Left = 96
    Top = 400
    Width = 353
    Height = 31
    Caption = ' '#1090#1080#1087' '#1090#1088#1072#1085#1089#1092#1077#1088#1072' '
    ItemIndex = 0
    Properties.Columns = 4
    Properties.Items = <
      item
        Caption = #1072#1074#1090'.'
      end
      item
        Caption = #1073#1083#1086#1082
      end
      item
        Caption = #1085#1077#1089#1090#1072#1085#1076#1072#1088#1090
      end
      item
        Caption = #1074#1089#1077
      end>
    TabOrder = 16
  end
  object DataSource1: TDataSource
    DataSet = DM.TransQ
    Left = 54
    Top = 24
  end
  object q1: TADOQuery
    Connection = DM.ac
    Parameters = <>
    Left = 8
    Top = 24
  end
end
