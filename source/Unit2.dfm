object FPodtver: TFPodtver
  Left = 260
  Top = 229
  BorderStyle = bsToolWindow
  Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
  ClientHeight = 317
  ClientWidth = 690
  Color = clMoneyGreen
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
    Left = 0
    Top = 208
    Width = 74
    Height = 13
    Caption = #1055#1077#1088#1074#1072#1103' '#1091#1089#1083#1091#1075#1072
  end
  object Label2: TLabel
    Left = 120
    Top = 208
    Width = 92
    Height = 13
    Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1091#1089#1083#1091#1075#1072
  end
  object Label3: TLabel
    Left = 360
    Top = 208
    Width = 92
    Height = 13
    Caption = #1056#1072#1089#1095#1077#1090' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
  end
  object Label4: TLabel
    Left = 360
    Top = 283
    Width = 77
    Height = 13
    Caption = #1048#1090#1086#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077
  end
  object Label5: TLabel
    Left = 360
    Top = 246
    Width = 51
    Height = 13
    Caption = #1050#1086#1084#1080#1089#1089#1080#1103
  end
  object Label6: TLabel
    Left = 240
    Top = 208
    Width = 59
    Height = 13
    Caption = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099
  end
  object Label7: TLabel
    Left = 480
    Top = 208
    Width = 53
    Height = 13
    Caption = #1052#1077#1085#1077#1076#1078#1077#1088
  end
  object Label8: TLabel
    Left = 240
    Top = 246
    Width = 42
    Height = 13
    Caption = #8470' '#1089#1095#1077#1090#1072
  end
  object tr1: TdxDBTreeList
    Left = 1
    Top = 2
    Width = 688
    Height = 199
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'id'
    ParentField = 'p'
    TabOrder = 11
    DataSource = ds2
    IniFileName = 'grids.ini'
    IniSectionName = 'z_stat'
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoStoreToIniFile, etoTabThrough]
    RootValue = '-1'
    TreeLineColor = clGrayText
    object tr1id: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id'
    end
    object katColumn: TdxDBTreeListColumn
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1085#1086#1084#1077#1088#1072
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'katcol'
    end
    object tr1f: TdxDBTreeListColumn
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Sorted = csUp
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'f'
    end
    object tr1i: TdxDBTreeListColumn
      Caption = #1048#1084#1103
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'i'
    end
    object tr1o: TdxDBTreeListColumn
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      Width = 96
      BandIndex = 0
      RowIndex = 0
      FieldName = 'o'
    end
    object StoimCol: TdxDBTreeListColumn
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'stoim'
    end
    object tr1nd: TdxDBTreeListColumn
      Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nd'
    end
    object tr1pol: TdxDBTreeListColumn
      Caption = #1055#1086#1083
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pol'
    end
    object tr1adres: TdxDBTreeListColumn
      Caption = #1040#1076#1088#1077#1089
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'adres'
    end
    object tr1tel: TdxDBTreeListColumn
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tel'
    end
    object tr1pods: TdxDBTreeListColumn
      Caption = #1055#1086#1076#1089#1077#1083#1077#1085#1080#1077
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pods'
    end
    object tr1per: TdxDBTreeListColumn
      Caption = #1055#1077#1088#1080#1086#1076
      Visible = False
      Width = 49
      BandIndex = 0
      RowIndex = 0
      FieldName = 'per'
    end
    object tr1nz: TdxDBTreeListMaskColumn
      Caption = #8470' '#1079#1072#1103#1074#1082#1080
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nz'
    end
    object tr1n: TdxDBTreeListMaskColumn
      Visible = False
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'n'
    end
    object tr1p: TdxDBTreeListMaskColumn
      Visible = False
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p'
    end
    object tr1tip: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tip'
    end
    object tr1id_ag: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_ag'
    end
    object tr1id_gost: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_gost'
    end
    object tr1id_tr: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_tr'
    end
    object tr1id_pit: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pit'
    end
    object tr1id_n: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_n'
    end
    object tr1id_m: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_m'
    end
    object tr1id_kat: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_kat'
    end
    object tr1id_po: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_po'
    end
    object tr1id_pp: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pp'
    end
    object tr1id_pv: TdxDBTreeListMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pv'
    end
    object tr1id_pers: TdxDBTreeListMaskColumn
      Caption = #1048#1044' '#1087#1077#1088#1089'.'
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'id_pers'
    end
    object tr1dr: TdxDBTreeListDateColumn
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dr'
    end
    object AgColumn: TdxDBTreeListColumn
      Caption = #1040#1075#1077#1085#1090#1089#1090#1074#1086
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'agentcol'
    end
    object PitColumn: TdxDBTreeListColumn
      Caption = #1055#1080#1090#1072#1085#1080#1077
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pitcol'
    end
    object MestoColumn: TdxDBTreeListColumn
      Caption = #1052#1077#1089#1090#1086
      Width = 93
      BandIndex = 0
      RowIndex = 0
      FieldName = 'm'
    end
    object trColumn: TdxDBTreeListColumn
      Caption = #1058#1088#1072#1085#1089#1092#1077#1088
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'trcol'
    end
    object Tm1Column: TdxDBTreeListColumn
      Caption = #1058#1052'1'
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pocol'
    end
    object Tm2Column: TdxDBTreeListColumn
      Caption = #1058#1052'2'
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ppcol'
    end
    object Tm3Column: TdxDBTreeListColumn
      Caption = #1058#1052'3'
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pvcol'
    end
    object BezMestaColumn: TdxDBTreeListColumn
      Caption = #1041#1077#1079' '#1084#1077#1089#1090#1072
      Width = 59
      BandIndex = 0
      RowIndex = 0
      FieldName = 'bezmesta'
    end
    object proezdColumn: TdxDBTreeListColumn
      Caption = #1055#1088#1086#1077#1079#1076
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'proezd'
    end
    object tip_proezdaColumn: TdxDBTreeListColumn
      Caption = #1058#1080#1087' '#1087#1088#1086#1077#1079#1076#1072
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tip_proezda'
    end
    object vikupColumn: TdxDBTreeListColumn
      Caption = #1042#1099#1082#1091#1087#1083#1077#1085#1086
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'vikup'
    end
    object OperColumn: TdxDBTreeListColumn
      Caption = #1054#1087#1077#1088#1072#1090#1086#1088
      Width = 117
      BandIndex = 0
      RowIndex = 0
      FieldName = 'oper'
    end
  end
  object b1: TcxButton
    Left = 1
    Top = 242
    Width = 120
    Height = 21
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088
    TabOrder = 8
    OnClick = b1Click
  end
  object te1: TcxTextEdit
    Left = 360
    Top = 221
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object cb1: TcxComboBox
    Left = 0
    Top = 221
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cb2: TcxComboBox
    Left = 120
    Top = 221
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object te3: TcxTextEdit
    Left = 360
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object te2: TcxTextEdit
    Left = 360
    Top = 259
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object cb3: TcxComboBox
    Left = 240
    Top = 221
    Width = 121
    Height = 21
    Properties.Items.Strings = (
      #1085#1072#1083#1080#1095#1085'.'
      #1073#1077#1079#1085#1072#1083#1080#1095#1085'.')
    TabOrder = 2
    Text = #1085#1072#1083#1080#1095#1085'.'
  end
  object te4: TcxTextEdit
    Left = 480
    Top = 221
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object b2: TcxButton
    Left = 1
    Top = 264
    Width = 120
    Height = 21
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 9
    OnClick = b2Click
  end
  object b3: TcxButton
    Left = 1
    Top = 286
    Width = 120
    Height = 21
    Caption = #1069#1082#1089#1087#1086#1088#1090
    TabOrder = 10
    OnClick = b3Click
  end
  object te5: TcxTextEdit
    Left = 240
    Top = 259
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ds2: TDataSource
    AutoEdit = False
    DataSet = qall
    Left = 287
    Top = 79
  end
  object qag: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from agentstva order by naimen, region, podregion')
    Left = 320
    Top = 31
    object qagCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
    object qagRegion: TIntegerField
      FieldName = 'Region'
    end
    object qagPodregion: TIntegerField
      FieldName = 'Podregion'
    end
    object qagNaimen: TWideStringField
      FieldName = 'Naimen'
      Size = 100
    end
    object qagAdres: TWideStringField
      FieldName = 'Adres'
      Size = 100
    end
    object qagTfe: TWideStringField
      FieldName = 'Tfe'
      Size = 80
    end
    object qagDirektor: TWideStringField
      FieldName = 'Direktor'
      Size = 50
    end
    object qagKL: TWideStringField
      FieldName = 'KL'
      Size = 50
    end
    object qagDogovor: TWideStringField
      FieldName = 'Dogovor'
      Size = 5
    end
    object qagDFZ: TDateTimeField
      FieldName = 'DFZ'
    end
    object qagKob: TWideStringField
      FieldName = 'Kob'
      Size = 10
    end
    object qagKtr: TWideStringField
      FieldName = 'Ktr'
      Size = 10
    end
    object qagC: TWideStringField
      FieldName = 'C'
      Size = 2
    end
    object qagInn: TWideStringField
      FieldName = 'Inn'
      Size = 50
    end
    object qagKpp: TWideStringField
      FieldName = 'Kpp'
      Size = 50
    end
    object qagRs: TWideStringField
      FieldName = 'Rs'
      Size = 50
    end
    object qagKs: TWideStringField
      FieldName = 'Ks'
      Size = 50
    end
    object qagBik: TWideStringField
      FieldName = 'Bik'
      Size = 50
    end
    object qagAdres_fak: TWideStringField
      FieldName = 'Adres_fak'
      Size = 100
    end
    object qagPokup: TWideStringField
      FieldName = 'Pokup'
      Size = 100
    end
    object qagBank: TWideStringField
      FieldName = 'Bank'
      Size = 100
    end
    object qagFax: TWideStringField
      FieldName = 'Fax'
      Size = 100
    end
    object qagEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object qagSite: TWideStringField
      FieldName = 'Site'
      Size = 100
    end
    object qagDzakl: TWideStringField
      FieldName = 'Dzakl'
    end
    object qagNdog: TWideStringField
      FieldName = 'Ndog'
    end
    object qagMain: TWideStringField
      FieldName = 'Main'
      Size = 2
    end
    object qagZam: TWideStringField
      FieldName = 'Zam'
      Size = 4
    end
    object qagoch: TIntegerField
      FieldName = 'och'
    end
    object qagoch2: TIntegerField
      FieldName = 'och2'
    end
    object qagavtobusnoe: TStringField
      FieldName = 'avtobusnoe'
      Size = 3
    end
    object qagtorg: TStringField
      FieldName = 'torg'
      Size = 1
    end
    object qagpodreg: TStringField
      FieldKind = fkLookup
      FieldName = 'podreg'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'Podregion'
      Lookup = True
    end
  end
  object q1: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,b.m from clients a full outer join gostnom b on a.id_' +
        'm=b.codeid where a.nz=1')
    Left = 224
    Top = 31
  end
  object fr1: TfrReport
    Dataset = ds1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnPrintReport = fr1PrintReport
    Left = 256
    Top = 32
    ReportForm = {19000000}
  end
  object ds1: TfrDBDataSet
    DataSet = qcl
    Left = 383
    Top = 79
  end
  object hte1: TfrHTML2Export
    Default = True
    ShowDialog = False
    MultiPage = True
    Scale = 1.000000000000000000
    AllJPEG = True
    Navigator.Position = []
    Navigator.Font.Charset = DEFAULT_CHARSET
    Navigator.Font.Color = clWindowText
    Navigator.Font.Height = -11
    Navigator.Font.Name = 'MS Sans Serif'
    Navigator.Font.Style = []
    Navigator.InFrame = False
    Navigator.WideInFrame = False
    Left = 256
    Top = 79
  end
  object qcl: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,b.m from clients a full outer join gostnom b on a.id_' +
        'm=b.codeid where a.nz=1')
    Left = 384
    Top = 31
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'f'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'i'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'o'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'nd'
      Size = 50
    end
    object WideStringField5: TWideStringField
      FieldName = 'pol'
      Size = 50
    end
    object WideStringField6: TWideStringField
      FieldName = 'adres'
      Size = 50
    end
    object WideStringField7: TWideStringField
      FieldName = 'tel'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'pods'
      Size = 50
    end
    object WideStringField9: TWideStringField
      FieldName = 'per'
      Size = 50
    end
    object WideStringField10: TWideStringField
      FieldName = 'vikup'
      Size = 50
    end
    object WideStringField11: TWideStringField
      FieldName = 'gar_pis'
      Size = 50
    end
    object WideStringField12: TWideStringField
      FieldName = 'bezmesta'
      Size = 50
    end
    object WideStringField13: TWideStringField
      FieldName = 'proezd'
      Size = 50
    end
    object WideStringField14: TWideStringField
      FieldName = 'tip_proezda'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'nz'
    end
    object IntegerField2: TIntegerField
      FieldName = 'n'
    end
    object IntegerField3: TIntegerField
      FieldName = 'p'
    end
    object IntegerField4: TIntegerField
      FieldName = 'tip'
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_ag'
    end
    object IntegerField6: TIntegerField
      FieldName = 'id_gost'
    end
    object IntegerField7: TIntegerField
      FieldName = 'id_tr'
    end
    object IntegerField8: TIntegerField
      FieldName = 'id_pit'
    end
    object IntegerField9: TIntegerField
      FieldName = 'id_n'
    end
    object IntegerField10: TIntegerField
      FieldName = 'id_m'
    end
    object IntegerField11: TIntegerField
      FieldName = 'id_kat'
    end
    object IntegerField12: TIntegerField
      FieldName = 'id_po'
    end
    object IntegerField13: TIntegerField
      FieldName = 'id_pp'
    end
    object IntegerField14: TIntegerField
      FieldName = 'id_pv'
    end
    object IntegerField15: TIntegerField
      FieldName = 'id_pers'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'dr'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'data_zai'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'data_opl'
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'agentcol'
      LookupDataSet = DM.AgentQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Naimen'
      KeyFields = 'id_ag'
      Size = 200
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'trcol'
      LookupDataSet = DM.TransQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'trstr'
      KeyFields = 'id_tr'
      Size = 200
      Lookup = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'pitcol'
      LookupDataSet = DM.Pit
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Pit'
      KeyFields = 'id_pit'
      Size = 200
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'katcol'
      LookupDataSet = DM.Kat
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Kat'
      KeyFields = 'id_kat'
      Size = 200
      Lookup = True
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'pocol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_po'
      Size = 200
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'ppcol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pp'
      Size = 200
      Lookup = True
    end
    object StringField7: TStringField
      FieldKind = fkLookup
      FieldName = 'pvcol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pv'
      Size = 200
      Lookup = True
    end
    object qcla_b: TWideStringField
      FieldName = 'a_b'
      Size = 6
    end
    object qclannul: TWideStringField
      FieldName = 'annul'
      Size = 4
    end
    object qcloper: TWideStringField
      FieldName = 'oper'
      Size = 50
    end
    object qclstoim: TBCDField
      FieldName = 'stoim'
      Precision = 19
    end
    object qclm: TWideStringField
      FieldName = 'm'
      Size = 50
    end
  end
  object qall: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,b.m,b.exk from clients a full outer join gostnom b on' +
        ' a.id_m=b.codeid where a.nz=1')
    Left = 288
    Top = 31
    object AutoIncField2: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object WideStringField19: TWideStringField
      FieldName = 'f'
      Size = 50
    end
    object WideStringField20: TWideStringField
      FieldName = 'i'
      Size = 50
    end
    object WideStringField21: TWideStringField
      FieldName = 'o'
      Size = 50
    end
    object WideStringField22: TWideStringField
      FieldName = 'nd'
      Size = 50
    end
    object WideStringField23: TWideStringField
      FieldName = 'pol'
      Size = 50
    end
    object WideStringField24: TWideStringField
      FieldName = 'adres'
      Size = 50
    end
    object WideStringField25: TWideStringField
      FieldName = 'tel'
      Size = 50
    end
    object WideStringField26: TWideStringField
      FieldName = 'pods'
      Size = 50
    end
    object WideStringField27: TWideStringField
      FieldName = 'per'
      Size = 50
    end
    object WideStringField28: TWideStringField
      FieldName = 'vikup'
      Size = 50
    end
    object WideStringField29: TWideStringField
      FieldName = 'gar_pis'
      Size = 50
    end
    object WideStringField30: TWideStringField
      FieldName = 'bezmesta'
      Size = 50
    end
    object WideStringField31: TWideStringField
      FieldName = 'proezd'
      Size = 50
    end
    object WideStringField32: TWideStringField
      FieldName = 'tip_proezda'
      Size = 50
    end
    object IntegerField16: TIntegerField
      FieldName = 'nz'
    end
    object IntegerField17: TIntegerField
      FieldName = 'n'
    end
    object IntegerField18: TIntegerField
      FieldName = 'p'
    end
    object IntegerField19: TIntegerField
      FieldName = 'tip'
    end
    object IntegerField20: TIntegerField
      FieldName = 'id_ag'
    end
    object IntegerField21: TIntegerField
      FieldName = 'id_gost'
    end
    object IntegerField22: TIntegerField
      FieldName = 'id_tr'
    end
    object IntegerField23: TIntegerField
      FieldName = 'id_pit'
    end
    object IntegerField24: TIntegerField
      FieldName = 'id_n'
    end
    object IntegerField25: TIntegerField
      FieldName = 'id_m'
    end
    object IntegerField26: TIntegerField
      FieldName = 'id_kat'
    end
    object IntegerField27: TIntegerField
      FieldName = 'id_po'
    end
    object IntegerField28: TIntegerField
      FieldName = 'id_pp'
    end
    object IntegerField29: TIntegerField
      FieldName = 'id_pv'
    end
    object IntegerField30: TIntegerField
      FieldName = 'id_pers'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'dr'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'data_zai'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'data_opl'
    end
    object StringField8: TStringField
      FieldKind = fkLookup
      FieldName = 'agentcol'
      LookupDataSet = DM.AgentQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Naimen'
      KeyFields = 'id_ag'
      Size = 200
      Lookup = True
    end
    object StringField9: TStringField
      FieldKind = fkLookup
      FieldName = 'trcol'
      LookupDataSet = DM.TransQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'trstr'
      KeyFields = 'id_tr'
      Size = 200
      Lookup = True
    end
    object StringField10: TStringField
      FieldKind = fkLookup
      FieldName = 'pitcol'
      LookupDataSet = DM.Pit
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Pit'
      KeyFields = 'id_pit'
      Size = 200
      Lookup = True
    end
    object StringField11: TStringField
      FieldKind = fkLookup
      FieldName = 'katcol'
      LookupDataSet = DM.Kat
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Kat'
      KeyFields = 'id_kat'
      Size = 200
      Lookup = True
    end
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = 'pocol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_po'
      Size = 200
      Lookup = True
    end
    object StringField13: TStringField
      FieldKind = fkLookup
      FieldName = 'ppcol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pp'
      Size = 200
      Lookup = True
    end
    object StringField14: TStringField
      FieldKind = fkLookup
      FieldName = 'pvcol'
      LookupDataSet = DM.PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pv'
      Size = 200
      Lookup = True
    end
    object WideStringField33: TWideStringField
      FieldName = 'a_b'
      Size = 50
    end
    object WideStringField34: TWideStringField
      FieldName = 'm'
      Size = 200
    end
    object WideStringField35: TWideStringField
      FieldName = 'annul'
      Size = 4
    end
    object BCDField2: TBCDField
      FieldName = 'stoim'
      Precision = 19
    end
    object WideStringField36: TWideStringField
      FieldName = 'oper'
      Size = 50
    end
    object qallgostin: TStringField
      FieldKind = fkLookup
      FieldName = 'gostin'
      LookupDataSet = DM.Gostin
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Nazvanie'
      KeyFields = 'id_gost'
      Size = 100
      Lookup = True
    end
    object qalloplata: TWideStringField
      FieldName = 'oplata'
      Size = 50
    end
    object qallpodtv: TWideStringField
      FieldName = 'podtv'
      Size = 50
    end
    object qallbez_pr: TWideStringField
      FieldName = 'bez_pr'
      Size = 5
    end
    object qallspo: TWideStringField
      FieldName = 'spo'
      Size = 50
    end
    object qalln_vauch: TIntegerField
      FieldName = 'n_vauch'
    end
    object qalldata_podtv: TDateTimeField
      FieldName = 'data_podtv'
    end
    object qalldata_vauch: TDateTimeField
      FieldName = 'data_vauch'
    end
    object qalloplacheno: TBCDField
      FieldName = 'oplacheno'
      Precision = 19
    end
    object qallsebest: TBCDField
      FieldName = 'sebest'
      Precision = 19
    end
    object qallnew_cl: TIntegerField
      FieldName = 'new_cl'
    end
    object qallinf_pr: TWideStringField
      FieldName = 'inf_pr'
      Size = 50
    end
    object qallnest_tip: TWideStringField
      FieldName = 'nest_tip'
      Size = 1
    end
  end
  object qrazm: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    OnCalcFields = qrazmCalcFields
    Parameters = <>
    SQL.Strings = (
      'select id_kat from clients where tip=2 and nz=1')
    Left = 352
    Top = 31
    object qrazmid_kat: TIntegerField
      FieldName = 'id_kat'
    end
    object qrazmkatcol: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'katcol'
      LookupDataSet = DM.Kat
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Kat'
      KeyFields = 'id_kat'
      Size = 100
      Lookup = True
    end
    object qrazmpods: TStringField
      FieldKind = fkCalculated
      FieldName = 'pds'
      Calculated = True
    end
    object qrazmdpm: TStringField
      FieldKind = fkCalculated
      FieldName = 'dpm'
      Calculated = True
    end
    object qrazmid_n: TIntegerField
      FieldName = 'id_n'
    end
    object qrazmid: TIntegerField
      FieldName = 'id'
    end
    object qrazma_b: TStringField
      FieldName = 'a_b'
      Size = 0
    end
  end
  object ds3: TfrDBDataSet
    DataSet = qrazm
    Left = 351
    Top = 79
  end
  object frDesigner1: TfrDesigner
    Left = 224
    Top = 80
  end
end
