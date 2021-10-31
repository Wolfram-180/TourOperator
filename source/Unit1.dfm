object FClSearch: TFClSearch
  Left = 228
  Top = 171
  BorderStyle = bsToolWindow
  Caption = #1055#1086#1080#1089#1082' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 478
  ClientWidth = 683
  Color = clCream
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
    Left = 1
    Top = 1
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object l1: TLabel
    Left = 8
    Top = 40
    Width = 452
    Height = 13
    Caption = 
      #1050#1083#1080#1082#1085#1080#1090#1077' '#1085#1072' '#1079#1072#1087#1080#1089#1100' '#1082#1083#1080#1077#1085#1090#1072' '#1076#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1075#1086#1089#1090#1080#1085#1080#1094#1077',' +
      ' '#1087#1077#1088#1080#1086#1076#1077' '#1080' '#1079#1072#1103#1074#1082#1077'.'
  end
  object Label3: TLabel
    Left = 197
    Top = 1
    Width = 73
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1079#1072#1103#1074#1082#1080
  end
  object l2: TLabel
    Left = 8
    Top = 56
    Width = 3
    Height = 13
  end
  object te1: TcxTextEdit
    Left = 1
    Top = 14
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object b1: TcxButton
    Left = 122
    Top = 14
    Width = 75
    Height = 21
    Caption = #1055#1086#1080#1089#1082
    Default = True
    TabOrder = 1
    OnClick = b1Click
  end
  object g1: TdxDBGrid
    Left = 1
    Top = 72
    Width = 680
    Height = 401
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'id'
    SummaryGroups = <>
    SummarySeparator = ', '
    BorderStyle = bsNone
    TabOrder = 2
    OnClick = g1Click
    OnKeyUp = g1KeyUp
    DataSource = ds1
    Filter.Criteria = {00000000}
    IniFileName = 'grids.ini'
    IniSectionName = 'cl_find'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object g1id: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object g1f: TdxDBGridColumn
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'f'
    end
    object g1i: TdxDBGridColumn
      Caption = #1048#1084#1103
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'i'
    end
    object g1o: TdxDBGridColumn
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'o'
    end
    object g1a_b: TdxDBGridColumn
      Caption = #1040' / '#1041
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'a_b'
    end
    object g1nz: TdxDBGridMaskColumn
      Caption = #8470' '#1079#1072#1103#1074#1082#1080
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nz'
    end
    object g1nd: TdxDBGridColumn
      Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Width = 63
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nd'
    end
    object g1pol: TdxDBGridColumn
      Caption = #1055#1086#1083
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pol'
    end
    object g1adres: TdxDBGridColumn
      Caption = #1040#1076#1088#1077#1089
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'adres'
    end
    object g1tel: TdxDBGridColumn
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tel'
    end
    object g1pods: TdxDBGridColumn
      Caption = #1055#1086#1076#1089#1077#1083#1077#1085#1080#1077
      Width = 117
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pods'
    end
    object g1per: TdxDBGridColumn
      Caption = #1055#1077#1088#1080#1086#1076
      Width = 82
      BandIndex = 0
      RowIndex = 0
      FieldName = 'per'
    end
    object g1vikup: TdxDBGridColumn
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'vikup'
    end
    object g1gar_pis: TdxDBGridColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'gar_pis'
    end
    object g1bezmesta: TdxDBGridColumn
      Width = 108
      BandIndex = 0
      RowIndex = 0
      FieldName = 'bezmesta'
    end
    object g1proezd: TdxDBGridColumn
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'proezd'
    end
    object g1tip_proezda: TdxDBGridColumn
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tip_proezda'
    end
    object g1n: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'n'
    end
    object g1p: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p'
    end
    object g1tip: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tip'
    end
    object g1id_ag: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_ag'
    end
    object g1id_gost: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_gost'
    end
    object g1id_tr: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_tr'
    end
    object g1id_pit: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pit'
    end
    object g1id_n: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_n'
    end
    object g1id_m: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_m'
    end
    object g1id_kat: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_kat'
    end
    object g1id_po: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_po'
    end
    object g1id_pp: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pp'
    end
    object g1id_pv: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pv'
    end
    object g1id_pers: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pers'
    end
    object g1dr: TdxDBGridDateColumn
      Width = 39
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dr'
    end
    object g1data_zai: TdxDBGridDateColumn
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'data_zai'
    end
    object g1data_opl: TdxDBGridDateColumn
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'data_opl'
    end
    object g1agentcol: TdxDBGridLookupColumn
      Width = 148
      BandIndex = 0
      RowIndex = 0
      FieldName = 'agentcol'
    end
    object g1trcol: TdxDBGridLookupColumn
      Width = 122
      BandIndex = 0
      RowIndex = 0
      FieldName = 'trcol'
    end
    object g1pitcol: TdxDBGridLookupColumn
      Width = 116
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pitcol'
    end
    object g1katcol: TdxDBGridLookupColumn
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'katcol'
    end
    object g1pocol: TdxDBGridLookupColumn
      MaxLength = 100
      Width = 126
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pocol'
    end
    object g1ppcol: TdxDBGridLookupColumn
      MaxLength = 100
      Width = 148
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ppcol'
    end
    object g1pvcol: TdxDBGridLookupColumn
      MaxLength = 100
      Sorted = csUp
      Width = 127
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pvcol'
    end
    object g1annul: TdxDBGridColumn
      Width = 32
      BandIndex = 0
      RowIndex = 0
      FieldName = 'annul'
    end
    object g1oper: TdxDBGridColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'oper'
    end
    object g1oplata: TdxDBGridColumn
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'oplata'
    end
    object g1podtv: TdxDBGridColumn
      Width = 43
      BandIndex = 0
      RowIndex = 0
      FieldName = 'podtv'
    end
    object g1bez_pr: TdxDBGridColumn
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'bez_pr'
    end
    object g1n_vauch: TdxDBGridMaskColumn
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'n_vauch'
    end
    object g1data_podtv: TdxDBGridDateColumn
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'data_podtv'
    end
    object g1data_vauch: TdxDBGridDateColumn
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'data_vauch'
    end
    object g1stoim: TdxDBGridCurrencyColumn
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'stoim'
      Nullable = False
    end
    object g1oplacheno: TdxDBGridCurrencyColumn
      Width = 76
      BandIndex = 0
      RowIndex = 0
      FieldName = 'oplacheno'
      Nullable = False
    end
    object g1spo: TdxDBGridColumn
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'spo'
    end
    object g1new_cl: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'new_cl'
    end
    object g1sebest: TdxDBGridCurrencyColumn
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'sebest'
      Nullable = False
    end
  end
  object te2: TcxTextEdit
    Left = 197
    Top = 14
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object b2: TcxButton
    Left = 318
    Top = 14
    Width = 75
    Height = 21
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 4
    OnClick = b2Click
  end
  object cxButton1: TcxButton
    Left = 560
    Top = 14
    Width = 113
    Height = 21
    Caption = #1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 5
    OnClick = cxButton1Click
    Colors.Default = clGradientActiveCaption
    Colors.Normal = clGradientActiveCaption
    Colors.Hot = clRed
  end
  object ds1: TDataSource
    DataSet = q1
    Left = 47
    Top = 103
  end
  object q1: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from clients')
    Left = 8
    Top = 103
    object q1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object q1f: TWideStringField
      FieldName = 'f'
      Size = 50
    end
    object q1i: TWideStringField
      FieldName = 'i'
      Size = 50
    end
    object q1o: TWideStringField
      FieldName = 'o'
      Size = 50
    end
    object q1nd: TWideStringField
      FieldName = 'nd'
      Size = 50
    end
    object q1pol: TWideStringField
      FieldName = 'pol'
      Size = 50
    end
    object q1adres: TWideStringField
      FieldName = 'adres'
      Size = 50
    end
    object q1tel: TWideStringField
      FieldName = 'tel'
      Size = 50
    end
    object q1pods: TWideStringField
      FieldName = 'pods'
      Size = 50
    end
    object q1per: TWideStringField
      FieldName = 'per'
      Size = 50
    end
    object q1vikup: TWideStringField
      FieldName = 'vikup'
      Size = 50
    end
    object q1gar_pis: TWideStringField
      FieldName = 'gar_pis'
      Size = 50
    end
    object q1bezmesta: TWideStringField
      FieldName = 'bezmesta'
      Size = 50
    end
    object q1proezd: TWideStringField
      FieldName = 'proezd'
      Size = 50
    end
    object q1tip_proezda: TWideStringField
      FieldName = 'tip_proezda'
      Size = 50
    end
    object q1nz: TIntegerField
      FieldName = 'nz'
    end
    object q1n: TIntegerField
      FieldName = 'n'
    end
    object q1p: TIntegerField
      FieldName = 'p'
    end
    object q1tip: TIntegerField
      FieldName = 'tip'
    end
    object q1id_ag: TIntegerField
      FieldName = 'id_ag'
    end
    object q1id_gost: TIntegerField
      FieldName = 'id_gost'
    end
    object q1id_tr: TIntegerField
      FieldName = 'id_tr'
    end
    object q1id_pit: TIntegerField
      FieldName = 'id_pit'
    end
    object q1id_n: TIntegerField
      FieldName = 'id_n'
    end
    object q1id_m: TIntegerField
      FieldName = 'id_m'
    end
    object q1id_kat: TIntegerField
      FieldName = 'id_kat'
    end
    object q1id_po: TIntegerField
      FieldName = 'id_po'
    end
    object q1id_pp: TIntegerField
      FieldName = 'id_pp'
    end
    object q1id_pv: TIntegerField
      FieldName = 'id_pv'
    end
    object q1id_pers: TIntegerField
      FieldName = 'id_pers'
    end
    object q1dr: TDateTimeField
      FieldName = 'dr'
    end
    object q1data_zai: TDateTimeField
      FieldName = 'data_zai'
    end
    object q1data_opl: TDateTimeField
      FieldName = 'data_opl'
    end
    object q1agentcol: TStringField
      FieldKind = fkLookup
      FieldName = 'agentcol'
      LookupDataSet = DM.AgentQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Naimen'
      KeyFields = 'id_ag'
      Size = 200
      Lookup = True
    end
    object q1trcol: TStringField
      FieldKind = fkLookup
      FieldName = 'trcol'
      LookupDataSet = DM.TransQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'trstr'
      KeyFields = 'id_tr'
      Size = 200
      Lookup = True
    end
    object q1pitcol: TStringField
      FieldKind = fkLookup
      FieldName = 'pitcol'
      LookupDataSet = DM.Pit
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Pit'
      KeyFields = 'id_pit'
      Size = 200
      Lookup = True
    end
    object q1katcol: TStringField
      FieldKind = fkLookup
      FieldName = 'katcol'
      LookupDataSet = DM.Kat
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Kat'
      KeyFields = 'id_kat'
      Size = 200
      Lookup = True
    end
    object q1pocol: TStringField
      FieldKind = fkLookup
      FieldName = 'pocol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_po'
      Size = 200
      Lookup = True
    end
    object q1ppcol: TStringField
      FieldKind = fkLookup
      FieldName = 'ppcol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pp'
      Size = 200
      Lookup = True
    end
    object q1pvcol: TStringField
      FieldKind = fkLookup
      FieldName = 'pvcol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pv'
      Size = 200
      Lookup = True
    end
    object q1a_b: TWideStringField
      FieldName = 'a_b'
      Size = 50
    end
    object q1annul: TWideStringField
      FieldName = 'annul'
      Size = 4
    end
    object q1oper: TWideStringField
      FieldName = 'oper'
      Size = 50
    end
    object q1oplata: TWideStringField
      FieldName = 'oplata'
      Size = 50
    end
    object q1podtv: TWideStringField
      FieldName = 'podtv'
      Size = 50
    end
    object q1bez_pr: TWideStringField
      FieldName = 'bez_pr'
      Size = 5
    end
    object q1n_vauch: TIntegerField
      FieldName = 'n_vauch'
    end
    object q1data_podtv: TDateTimeField
      FieldName = 'data_podtv'
    end
    object q1data_vauch: TDateTimeField
      FieldName = 'data_vauch'
    end
    object q1stoim: TBCDField
      FieldName = 'stoim'
      Precision = 19
    end
    object q1oplacheno: TBCDField
      FieldName = 'oplacheno'
      Precision = 19
    end
    object q1spo: TWideStringField
      FieldName = 'spo'
      Size = 50
    end
    object q1new_cl: TIntegerField
      FieldName = 'new_cl'
    end
    object q1sebest: TBCDField
      FieldName = 'sebest'
      Precision = 19
    end
  end
end
