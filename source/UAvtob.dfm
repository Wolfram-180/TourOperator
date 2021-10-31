object FAvtob: TFAvtob
  Left = 14
  Top = 239
  BorderStyle = bsToolWindow
  Caption = #1040#1074#1090#1086#1073#1091#1089#1099
  ClientHeight = 387
  ClientWidth = 988
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
  object Label1: TLabel
    Left = 6
    Top = 304
    Width = 33
    Height = 13
    Caption = #1052#1072#1088#1082#1072
  end
  object Label2: TLabel
    Left = 74
    Top = 304
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
  end
  object Label3: TLabel
    Left = 125
    Top = 304
    Width = 37
    Height = 13
    Caption = #1061#1086#1079#1103#1080#1085
  end
  object Label4: TLabel
    Left = 210
    Top = 304
    Width = 126
    Height = 13
    Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
  end
  object Label5: TLabel
    Left = 342
    Top = 304
    Width = 32
    Height = 13
    Caption = #1069#1090#1072#1078#1080
  end
  object Label6: TLabel
    Left = 380
    Top = 304
    Width = 80
    Height = 13
    Caption = #1055#1083#1072#1085' 1'#1075#1086' '#1101#1090#1072#1078#1072
  end
  object Label7: TLabel
    Left = 510
    Top = 304
    Width = 80
    Height = 13
    Caption = #1055#1083#1072#1085' 2'#1075#1086' '#1101#1090#1072#1078#1072
  end
  object Label9: TLabel
    Left = 640
    Top = 304
    Width = 57
    Height = 13
    Caption = #1042#1086#1076#1080#1090#1077#1083#1100' 1'
  end
  object Label10: TLabel
    Left = 732
    Top = 304
    Width = 57
    Height = 13
    Caption = #1042#1086#1076#1080#1090#1077#1083#1100' 2'
  end
  object Label8: TLabel
    Left = 817
    Top = 304
    Width = 24
    Height = 13
    Caption = #1062' ('#1040')'
  end
  object gr: TdxDBGrid
    Left = 0
    Top = 0
    Width = 985
    Height = 301
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'id'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 0
    OnClick = grClick
    ArrowsColor = 16706006
    DataSource = ds
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'avtob'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = grCustomDrawCell
    object grid: TdxDBGridMaskColumn
      Caption = #1048#1044
      Sorted = csUp
      Width = 47
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object grmarka: TdxDBGridColumn
      Caption = #1052#1072#1088#1082#1072
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'marka'
    end
    object grnomer: TdxDBGridColumn
      Caption = #1053#1086#1084#1077#1088
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nomer'
    end
    object grhoz: TdxDBGridColumn
      Caption = #1061#1086#1079#1103#1080#1085
      Width = 214
      BandIndex = 0
      RowIndex = 0
      FieldName = 'hoz'
    end
    object grkont: TdxDBGridColumn
      Caption = #1050#1086#1085#1090#1072#1082#1090
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'kont'
    end
    object gret: TdxDBGridMaskColumn
      Caption = #1069#1090#1072#1078#1077#1081
      Width = 49
      BandIndex = 0
      RowIndex = 0
      FieldName = 'et'
    end
    object grpl1: TdxDBGridColumn
      Caption = #1055#1083#1072#1085' 1'#1075#1086' '#1101#1090#1072#1078#1072
      Width = 119
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pl1'
    end
    object grpl2: TdxDBGridColumn
      Caption = #1055#1083#1072#1085' 2'#1075#1086' '#1101#1090#1072#1078#1072
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pl2'
    end
    object grvod1: TdxDBGridMaskColumn
      Caption = #1042#1086#1076#1080#1090#1077#1083#1100' 1'
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'vod_n1'
    end
    object grColumn10: TdxDBGridColumn
      Caption = #1042#1086#1076#1080#1090#1077#1083#1100' 2'
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'vod_n2'
    end
    object grColumn11: TdxDBGridColumn
      Caption = #1062
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'c'
    end
  end
  object dz: TcxButton
    Left = 866
    Top = 320
    Width = 120
    Height = 21
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 1
    OnClick = dzClick
  end
  object iz: TcxButton
    Left = 866
    Top = 342
    Width = 120
    Height = 21
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = izClick
  end
  object uz: TcxButton
    Left = 866
    Top = 364
    Width = 120
    Height = 21
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = uzClick
  end
  object md: TcxTextEdit
    Left = 3
    Top = 320
    Width = 70
    Height = 21
    TabOrder = 4
  end
  object mi: TcxTextEdit
    Left = 3
    Top = 342
    Width = 70
    Height = 21
    TabOrder = 5
  end
  object nd: TcxTextEdit
    Left = 71
    Top = 320
    Width = 50
    Height = 21
    TabOrder = 6
  end
  object ni: TcxTextEdit
    Left = 71
    Top = 342
    Width = 50
    Height = 21
    TabOrder = 7
  end
  object hd: TcxTextEdit
    Left = 119
    Top = 320
    Width = 90
    Height = 21
    TabOrder = 8
  end
  object hi: TcxTextEdit
    Left = 119
    Top = 342
    Width = 90
    Height = 21
    TabOrder = 9
  end
  object kd: TcxTextEdit
    Left = 207
    Top = 320
    Width = 137
    Height = 21
    TabOrder = 10
  end
  object ki: TcxTextEdit
    Left = 207
    Top = 342
    Width = 137
    Height = 21
    TabOrder = 11
  end
  object ed: TcxComboBox
    Left = 342
    Top = 320
    Width = 35
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '1'
      '2')
    TabOrder = 12
    Text = '1'
  end
  object ei: TcxComboBox
    Left = 342
    Top = 342
    Width = 35
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '1'
      '2')
    TabOrder = 13
    Text = '1'
  end
  object p1d: TcxTextEdit
    Left = 375
    Top = 320
    Width = 82
    Height = 21
    TabOrder = 14
  end
  object p1i: TcxTextEdit
    Left = 375
    Top = 342
    Width = 82
    Height = 21
    TabOrder = 15
  end
  object o1d: TcxButton
    Left = 457
    Top = 320
    Width = 48
    Height = 21
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 16
    OnClick = o1dClick
  end
  object o1i: TcxButton
    Left = 457
    Top = 342
    Width = 48
    Height = 21
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 17
    OnClick = o1iClick
  end
  object p2d: TcxTextEdit
    Left = 505
    Top = 320
    Width = 82
    Height = 21
    TabOrder = 18
  end
  object p2i: TcxTextEdit
    Left = 505
    Top = 342
    Width = 82
    Height = 21
    TabOrder = 19
  end
  object o2d: TcxButton
    Left = 587
    Top = 320
    Width = 48
    Height = 21
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 20
    OnClick = o2dClick
  end
  object o2i: TcxButton
    Left = 587
    Top = 342
    Width = 48
    Height = 21
    Caption = #1054#1073#1079#1086#1088
    TabOrder = 21
    OnClick = o2iClick
  end
  object v1: TcxComboBox
    Left = 635
    Top = 320
    Width = 94
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 22
  end
  object v2: TcxComboBox
    Left = 727
    Top = 320
    Width = 89
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 23
  end
  object v1i: TcxComboBox
    Left = 635
    Top = 342
    Width = 94
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 24
  end
  object v2i: TcxComboBox
    Left = 727
    Top = 342
    Width = 89
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 25
  end
  object ci: TcxComboBox
    Left = 814
    Top = 320
    Width = 51
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 26
  end
  object ce: TcxComboBox
    Left = 814
    Top = 342
    Width = 51
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 27
  end
  object ds: TDataSource
    DataSet = DM.Avt
    Left = 32
    Top = 56
  end
  object od: TOpenDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Options = [ofHideReadOnly, ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofShareAware, ofNoReadOnlyReturn, ofNoNetworkButton, ofEnableSizing, ofDontAddToRecent]
    Left = 96
    Top = 56
  end
end
