object FKarti: TFKarti
  Left = 307
  Top = 125
  BorderStyle = bsToolWindow
  Caption = #1056#1072#1089#1089#1072#1076#1082#1072
  ClientHeight = 539
  ClientWidth = 994
  Color = 16249550
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
    Left = 88
    Top = 48
    Width = 70
    Height = 13
    Caption = #1042#1089#1077' '#1072#1074#1090#1086#1073#1091#1089#1099
  end
  object Label2: TLabel
    Left = 88
    Top = 88
    Width = 93
    Height = 13
    Caption = #1040#1074#1090#1086#1073#1091#1089#1099' '#1094#1077#1087#1086#1095#1082#1080
  end
  object Label3: TLabel
    Left = 259
    Top = 128
    Width = 106
    Height = 13
    Caption = #1054#1073#1098#1077#1082#1090' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103
  end
  object Label4: TLabel
    Left = 544
    Top = 16
    Width = 55
    Height = 13
    Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
    Visible = False
  end
  object Label5: TLabel
    Left = 472
    Top = 16
    Width = 68
    Height = 13
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
    Visible = False
  end
  object Label6: TLabel
    Left = 256
    Top = 8
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label7: TLabel
    Left = 368
    Top = 8
    Width = 43
    Height = 13
    Caption = #1062#1077#1087#1086#1095#1082#1072
  end
  object Label8: TLabel
    Left = 115
    Top = 128
    Width = 55
    Height = 13
    Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
  end
  object gr: TdxDBGrid
    Left = 2
    Top = 200
    Width = 543
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
    OnClick = grClick
    DataSource = ds
    DefaultRowHeight = 23
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'map'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandSizing, edgoColumnSizing]
    OptionsDB = [edgoCancelOnExit, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
    object grn: TdxDBGridColumn
      Caption = #1056#1103#1076
      Width = 27
      BandIndex = 0
      RowIndex = 0
      FieldName = 'n'
    end
    object grm1: TdxDBGridColumn
      Alignment = taCenter
      Caption = #1052#1077#1089#1090#1086' 1'
      HeaderAlignment = taCenter
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'm1'
    end
    object grm2: TdxDBGridColumn
      Alignment = taCenter
      Caption = #1052#1077#1089#1090#1086' 2'
      HeaderAlignment = taCenter
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'm2'
    end
    object grm: TdxDBGridColumn
      Alignment = taCenter
      Caption = #1055#1088#1086#1093#1086#1076' ('#1084#1077#1089#1090#1086' 5)'
      HeaderAlignment = taCenter
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'm'
    end
    object grm3: TdxDBGridColumn
      Alignment = taCenter
      Caption = #1052#1077#1089#1090#1086' 3'
      HeaderAlignment = taCenter
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'm3'
    end
    object grm4: TdxDBGridColumn
      Alignment = taCenter
      Caption = #1052#1077#1089#1090#1086' 4'
      HeaderAlignment = taCenter
      Width = 107
      BandIndex = 0
      RowIndex = 0
      FieldName = 'm4'
    end
  end
  object va: TcxComboBox
    Left = 88
    Top = 64
    Width = 161
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 1
    OnMouseDown = vaMouseDown
  end
  object ca: TcxComboBox
    Left = 88
    Top = 104
    Width = 161
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 2
  end
  object cn: TcxComboBox
    Left = 472
    Top = 32
    Width = 73
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 3
    Visible = False
    OnMouseDown = cnMouseDown
  end
  object cp: TcxComboBox
    Left = 544
    Top = 32
    Width = 153
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.Sorted = True
    TabOrder = 4
    Visible = False
    OnMouseDown = cpMouseDown
  end
  object co: TcxComboBox
    Left = 256
    Top = 144
    Width = 201
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.Sorted = True
    TabOrder = 5
    OnMouseDown = coMouseDown
  end
  object rg1: TcxRadioGroup
    Left = 512
    Top = 56
    Width = 313
    Height = 33
    Caption = ' '#1092#1080#1083#1100#1090#1088' '#1082#1083#1080#1077#1085#1090#1086#1074' '
    ItemIndex = 2
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = #1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      end
      item
        Caption = #1087#1086#1076#1088#1077#1075#1080#1086#1085
      end
      item
        Caption = #1086#1073#1098#1077#1082#1090
      end>
    TabOrder = 6
    Visible = False
  end
  object de: TcxDateEdit
    Left = 256
    Top = 24
    Width = 105
    Height = 21
    Properties.OnChange = dePropertiesChange
    TabOrder = 7
  end
  object c: TcxComboBox
    Left = 368
    Top = 24
    Width = 49
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.OnChange = cPropertiesChange
    TabOrder = 8
  end
  object rg2: TcxRadioGroup
    Left = 256
    Top = 60
    Width = 237
    Height = 64
    Caption = ' '#1074#1099#1073#1086#1088' '#1072#1074#1090#1086#1073#1091#1089#1072' '
    ItemIndex = 1
    Properties.Items = <
      item
        Caption = #1074#1089#1077
      end
      item
        Caption = #1094#1077#1087#1086#1095#1082#1072
      end>
    TabOrder = 10
  end
  object e: TcxComboBox
    Left = 341
    Top = 91
    Width = 31
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '1'
      '2')
    TabOrder = 11
    Text = '1'
  end
  object st: TStaticText
    Left = 341
    Top = 75
    Width = 29
    Height = 17
    Caption = #1101#1090#1072#1078
    TabOrder = 12
  end
  object b1: TcxButton
    Left = 377
    Top = 68
    Width = 56
    Height = 53
    Caption = #1074#1086#1081#1090#1080' '#1074' '#1088#1077#1078#1080#1084' '#1088#1072#1089#1089#1072#1076#1082#1080
    TabOrder = 9
    WordWrap = True
    OnClick = b1Click
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
  end
  object rg3: TcxRadioGroup
    Left = 88
    Top = 8
    Width = 153
    Height = 33
    Caption = ' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '
    ItemIndex = 0
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = #1090#1091#1076#1072
      end
      item
        Caption = #1086#1073#1088#1072#1090#1085#1086
      end>
    TabOrder = 13
  end
  object b2: TcxButton
    Left = 211
    Top = 168
    Width = 236
    Height = 25
    Caption = #1074#1099#1074#1077#1089#1090#1080' '#1082#1083#1080#1077#1085#1090#1086#1074
    TabOrder = 14
    OnClick = b2Click
  end
  object dxDBGrid1: TdxDBGrid
    Left = 544
    Top = 1
    Width = 449
    Height = 496
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'id'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 15
    OnClick = grClick
    DataSource = ds2
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'rass'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dxDBGrid1id: TdxDBGridMaskColumn
      Visible = False
      Width = 41
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object dxDBGrid1ra: TdxDBGridColumn
      Caption = #1056#1103#1076' '#1090#1091#1076#1072
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ra'
    end
    object dxDBGrid1ma: TdxDBGridColumn
      Caption = #1052#1077#1089#1090#1086' '#1090#1091#1076#1072
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ma'
    end
    object dxDBGrid1ea: TdxDBGridColumn
      Caption = #1069#1090#1072#1078' '#1090#1091#1076#1072
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ea'
    end
    object dxDBGrid1avt_nazv: TdxDBGridColumn
      Caption = #1040#1074#1090#1086#1073#1091#1089' '#1090#1091#1076#1072
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'avt_nazv'
    end
    object dxDBGrid1nz: TdxDBGridMaskColumn
      Caption = #8470' '#1079#1072#1103#1074#1082#1080
      Width = 43
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nz'
    end
    object dxDBGrid1f: TdxDBGridColumn
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'f'
    end
    object dxDBGrid1i: TdxDBGridColumn
      Caption = #1048#1084#1103
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'i'
    end
    object dxDBGrid1dt_begin: TdxDBGridDateColumn
      Caption = #1053#1072#1095#1072#1083#1086' '#1079#1072#1077#1079#1076#1072
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dt_begin'
    end
    object dxDBGrid1dt_end: TdxDBGridDateColumn
      Caption = #1050#1086#1085#1077#1094' '#1079#1072#1077#1079#1076#1072
      Width = 56
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dt_end'
    end
    object dxDBGrid1proezd: TdxDBGridColumn
      Caption = #1055#1088#1086#1077#1079#1076
      Width = 94
      BandIndex = 0
      RowIndex = 0
      FieldName = 'proezd'
    end
    object dxDBGrid1id_avt: TdxDBGridColumn
      Visible = False
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_avt'
    end
    object dxDBGrid1id_avt_o: TdxDBGridColumn
      Visible = False
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_avt_o'
    end
    object dxDBGrid1rao: TdxDBGridColumn
      Caption = #1056#1103#1076' '#1086#1073#1088#1072#1090#1085#1086
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'rao'
    end
    object dxDBGrid1mao: TdxDBGridColumn
      Caption = #1052#1077#1089#1090#1086' '#1086#1073#1088#1072#1090#1085#1086
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'mao'
    end
    object dxDBGrid1eao: TdxDBGridColumn
      Caption = #1069#1090#1072#1078' '#1086#1073#1088#1072#1090#1085#1086
      Width = 76
      BandIndex = 0
      RowIndex = 0
      FieldName = 'eao'
    end
    object dxDBGrid1avt_nazv_o: TdxDBGridColumn
      Caption = #1040#1074#1090#1086#1073#1091#1089' '#1086#1073#1088#1072#1090#1085#1086
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'avt_nazv_o'
    end
  end
  object b3: TcxButton
    Left = 434
    Top = 68
    Width = 56
    Height = 53
    Caption = #1074#1099#1081#1090#1080' '#1080#1079' '#1088#1077#1078#1080#1084#1072' '#1088#1072#1089#1089#1072#1076#1082#1080
    TabOrder = 16
    WordWrap = True
    OnClick = b3Click
    LookAndFeel.NativeStyle = False
  end
  object b4: TcxButton
    Left = 552
    Top = 504
    Width = 75
    Height = 25
    Caption = #1047#1072#1085#1103#1090#1100
    Enabled = False
    TabOrder = 17
    OnClick = b4Click
  end
  object b5: TcxButton
    Left = 632
    Top = 504
    Width = 75
    Height = 25
    Caption = #1054#1089#1074#1086#1073#1086#1076#1080#1090#1100
    Enabled = False
    TabOrder = 18
    OnClick = b5Click
  end
  object b6: TcxButton
    Left = 122
    Top = 168
    Width = 88
    Height = 25
    Caption = #1086#1090#1095#1077#1090
    TabOrder = 19
    WordWrap = True
    OnClick = b6Click
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
  end
  object cbpodreg: TcxComboBox
    Left = 112
    Top = 144
    Width = 145
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.Sorted = True
    TabOrder = 20
    OnMouseDown = cbpodregMouseDown
  end
  object ds: TDataSource
    DataSet = DM.Map
    Left = 40
    Top = 288
  end
  object ds2: TDataSource
    DataSet = DM.RassQ
    Left = 584
    Top = 48
  end
end
