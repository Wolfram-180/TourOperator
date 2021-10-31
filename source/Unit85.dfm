object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 438
  Top = 159
  Height = 530
  Width = 537
  object RegQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from reg order by reg')
    Left = 32
    Top = 72
    object RegQCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
    object RegQReg: TWideStringField
      FieldName = 'Reg'
      Size = 50
    end
  end
  object AgentQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    OnCalcFields = AgentQCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from agentstva order by naimen, region, podregion')
    Left = 80
    Top = 72
    object AgentQRegion: TIntegerField
      FieldName = 'Region'
    end
    object AgentQPodregion: TIntegerField
      FieldName = 'Podregion'
    end
    object AgentQNaimen: TWideStringField
      FieldName = 'Naimen'
      Size = 100
    end
    object AgentQAdres: TWideStringField
      FieldName = 'Adres'
      Size = 100
    end
    object AgentQTfe: TWideStringField
      FieldName = 'Tfe'
      Size = 80
    end
    object AgentQDirektor: TWideStringField
      FieldName = 'Direktor'
      Size = 50
    end
    object AgentQKL: TWideStringField
      FieldName = 'KL'
      Size = 50
    end
    object AgentQDogovor: TWideStringField
      FieldName = 'Dogovor'
      Size = 5
    end
    object AgentQDFZ: TDateTimeField
      FieldName = 'DFZ'
    end
    object AgentQKob: TWideStringField
      FieldName = 'Kob'
      Size = 10
    end
    object AgentQKtr: TWideStringField
      FieldName = 'Ktr'
      Size = 10
    end
    object AgentQC: TWideStringField
      FieldName = 'C'
      Size = 2
    end
    object AgentQInn: TWideStringField
      FieldName = 'Inn'
      Size = 50
    end
    object AgentQKpp: TWideStringField
      FieldName = 'Kpp'
      Size = 50
    end
    object AgentQRs: TWideStringField
      FieldName = 'Rs'
      Size = 50
    end
    object AgentQKs: TWideStringField
      FieldName = 'Ks'
      Size = 50
    end
    object AgentQBik: TWideStringField
      FieldName = 'Bik'
      Size = 50
    end
    object AgentQAdres_fak: TWideStringField
      FieldName = 'Adres_fak'
      Size = 100
    end
    object AgentQPokup: TWideStringField
      FieldName = 'Pokup'
      Size = 100
    end
    object AgentQBank: TWideStringField
      FieldName = 'Bank'
      Size = 100
    end
    object AgentQFax: TWideStringField
      FieldName = 'Fax'
      Size = 100
    end
    object AgentQEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object AgentQSite: TWideStringField
      FieldName = 'Site'
      Size = 100
    end
    object AgentQDzakl: TWideStringField
      FieldName = 'Dzakl'
    end
    object AgentQNdog: TWideStringField
      FieldName = 'Ndog'
    end
    object AgentQMain: TWideStringField
      FieldName = 'Main'
      Size = 2
    end
    object AgentQZam: TWideStringField
      FieldName = 'Zam'
      Size = 4
    end
    object AgentQoch: TIntegerField
      FieldName = 'och'
    end
    object AgentQoch2: TIntegerField
      FieldName = 'och2'
    end
    object AgentQavtobusnoe: TStringField
      FieldName = 'avtobusnoe'
      Size = 3
    end
    object AgentQtorg: TStringField
      FieldName = 'torg'
      Size = 1
    end
    object AgentQreg: TStringField
      FieldKind = fkLookup
      FieldName = 'reg'
      LookupDataSet = RegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Reg'
      KeyFields = 'Region'
      Lookup = True
    end
    object AgentQpodreg: TStringField
      FieldKind = fkLookup
      FieldName = 'podreg'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'Podregion'
      Lookup = True
    end
    object AgentQCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
    object AgentQn: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'n'
      Calculated = True
    end
    object AgentQvverh: TIntegerField
      FieldName = 'vverh'
    end
    object AgentQorg: TIntegerField
      FieldName = 'org'
    end
    object AgentQoper: TWideStringField
      FieldName = 'oper'
      Size = 50
    end
  end
  object Gostin: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from gostinici order by nazvanie')
    Left = 128
    Top = 128
    object GostinPodRegrazm: TIntegerField
      FieldName = 'PodRegrazm'
    end
    object GostinNazvanie: TWideStringField
      FieldName = 'Nazvanie'
      Size = 40
    end
    object GostinDogovor: TWideStringField
      FieldName = 'Dogovor'
    end
    object GostinAdres: TWideStringField
      FieldName = 'Adres'
      Size = 50
    end
    object GostinPrim: TWideStringField
      FieldName = 'Prim'
      Size = 100
    end
    object GostinNdt: TWideStringField
      FieldName = 'Ndt'
      Size = 2
    end
    object GostinNapr: TIntegerField
      FieldName = 'Napr'
    end
    object Gostinlist: TIntegerField
      FieldName = 'list'
    end
    object GostinCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
    object Gostinpodregn: TStringField
      FieldKind = fkLookup
      FieldName = 'podregn'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'PodRegrazm'
      Size = 100
      Lookup = True
    end
    object Gostinrchb: TWideStringField
      DisplayWidth = 7
      FieldName = 'rchb'
      Size = 6
    end
    object Gostinrchz: TWideStringField
      DisplayWidth = 7
      FieldName = 'rchz'
      Size = 50
    end
    object Gostingraf: TIntegerField
      FieldName = 'graf'
    end
    object Gostingraf_b: TIntegerField
      FieldName = 'graf_b'
    end
    object Gostinpr: TWideStringField
      FieldName = 'pr'
      Size = 5
    end
    object Gostinexk: TWideStringField
      FieldName = 'exk'
      Size = 50
    end
  end
  object Zaezd: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zaezdi')
    Left = 216
    Top = 424
    object ZaezdCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
    object Zaezdd1: TDateTimeField
      FieldName = 'd1'
    end
    object Zaezdd2: TDateTimeField
      FieldName = 'd2'
    end
    object Zaezdper: TWideStringField
      FieldName = 'per'
      Size = 50
    end
  end
  object VSop: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vodsop order by fio')
    Left = 32
    Top = 240
    object VSopFio: TWideStringField
      FieldName = 'Fio'
      Size = 70
    end
    object VSopNdok: TWideStringField
      FieldName = 'Ndok'
      Size = 100
    end
    object VSopAdres: TWideStringField
      FieldName = 'Adres'
      Size = 200
    end
    object VSopDr: TDateTimeField
      FieldName = 'Dr'
    end
    object VSopTel: TWideStringField
      FieldName = 'Tel'
      Size = 50
    end
    object VSopid: TIntegerField
      FieldName = 'id'
    end
    object VSoptip: TWideStringField
      FieldName = 'tip'
    end
  end
  object Map: TADOQuery
    Connection = ac
    CursorType = ctStatic
    OnCalcFields = MapCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from map')
    Left = 80
    Top = 240
    object Mapn: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'n'
    end
    object Mapl1m: TWideStringField
      FieldName = 'l1m'
      Size = 50
    end
    object Mapl2m: TWideStringField
      FieldName = 'l2m'
      Size = 50
    end
    object Mapp1m: TWideStringField
      FieldName = 'p1m'
      Size = 50
    end
    object Mapp2m: TWideStringField
      FieldName = 'p2m'
      Size = 50
    end
    object Mapsr: TWideStringField
      FieldName = 'sr'
      Size = 50
    end
    object Mapln: TIntegerField
      FieldName = 'ln'
    end
    object Mappn: TIntegerField
      FieldName = 'pn'
    end
    object Mapsn: TIntegerField
      FieldName = 'sn'
    end
    object Mapm1: TWideStringField
      FieldName = 'm1'
      Size = 50
    end
    object Mapm2: TWideStringField
      FieldName = 'm2'
      Size = 50
    end
    object Mapm: TWideStringField
      FieldName = 'm'
      Size = 50
    end
    object Mapm3: TWideStringField
      FieldName = 'm3'
      Size = 50
    end
    object Mapm4: TWideStringField
      FieldName = 'm4'
      Size = 50
    end
  end
  object PodRegQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from podreg order by podreg')
    Left = 32
    Top = 128
    object PodRegQPodreg: TWideStringField
      FieldName = 'Podreg'
      Size = 50
    end
    object PodRegQNapr: TIntegerField
      FieldName = 'Napr'
    end
    object PodRegQPodm: TWideStringField
      FieldName = 'Podm'
      Size = 4
    end
    object PodRegQCodeid: TIntegerField
      FieldName = 'Codeid'
    end
    object PodRegQoch: TIntegerField
      FieldName = 'och'
    end
  end
  object TransQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tr order by st, codeid')
    Left = 80
    Top = 128
    object TransQSt: TBCDField
      FieldName = 'St'
      Precision = 10
    end
    object TransQp1: TIntegerField
      FieldName = 'p1'
    end
    object TransQp2: TIntegerField
      FieldName = 'p2'
    end
    object TransQp3: TIntegerField
      FieldName = 'p3'
    end
    object TransQt1: TWideStringField
      FieldName = 't1'
      Size = 50
    end
    object TransQt2: TWideStringField
      FieldName = 't2'
      Size = 50
    end
    object TransQp1str: TStringField
      FieldKind = fkLookup
      FieldName = 'p1str'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'p1'
      Lookup = True
    end
    object TransQp2str: TStringField
      FieldKind = fkLookup
      FieldName = 'p2str'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'p2'
      Lookup = True
    end
    object TransQp3str: TStringField
      FieldKind = fkLookup
      FieldName = 'p3str'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'p3'
      Lookup = True
    end
    object TransQCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
    object TransQtrstr: TWideStringField
      FieldName = 'trstr'
      Size = 50
    end
    object TransQa_b: TWideStringField
      FieldName = 'a_b'
      Size = 50
    end
  end
  object Kat: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kat order by kat')
    Left = 128
    Top = 72
    object KatKat: TWideStringField
      FieldName = 'Kat'
      Size = 100
    end
    object KatKr: TIntegerField
      FieldName = 'Kr'
    end
    object KatCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
  end
  object Pit: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pit order by pit')
    Left = 32
    Top = 184
    object PitPit: TWideStringField
      FieldName = 'Pit'
      Size = 100
    end
    object PitCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
  end
  object ExkQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from exkurs')
    Left = 280
    Top = 424
    object ExkQCodeid: TAutoIncField
      FieldName = 'Codeid'
    end
    object ExkQNaim: TWideStringField
      FieldName = 'Naim'
      Size = 100
    end
    object ExkQCena: TWideStringField
      FieldName = 'Cena'
      Size = 4
    end
    object ExkQOpis: TWideStringField
      FieldName = 'Opis'
      Size = 255
    end
  end
  object Avt: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from avt')
    Left = 128
    Top = 240
    object Avtid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object Avtmarka: TWideStringField
      FieldName = 'marka'
      Size = 50
    end
    object Avtnomer: TWideStringField
      FieldName = 'nomer'
      Size = 50
    end
    object Avthoz: TWideStringField
      FieldName = 'hoz'
      Size = 200
    end
    object Avtkont: TWideStringField
      FieldName = 'kont'
      Size = 400
    end
    object Avtet: TStringField
      FieldName = 'et'
      FixedChar = True
      Size = 1
    end
    object Avtpl1: TWideStringField
      FieldName = 'pl1'
      Size = 250
    end
    object Avtpl2: TWideStringField
      FieldName = 'pl2'
      Size = 50
    end
    object Avtvod1: TIntegerField
      FieldName = 'vod1'
    end
    object Avtvod2: TIntegerField
      FieldName = 'vod2'
    end
    object Avtsop: TIntegerField
      FieldName = 'sop'
    end
    object Avtvod_n1: TStringField
      FieldKind = fkLookup
      FieldName = 'vod_n1'
      LookupDataSet = VSop
      LookupKeyFields = 'id'
      LookupResultField = 'Fio'
      KeyFields = 'vod1'
      Lookup = True
    end
    object Avtvod_n2: TStringField
      FieldKind = fkLookup
      FieldName = 'vod_n2'
      LookupDataSet = VSop
      LookupKeyFields = 'id'
      LookupResultField = 'Fio'
      KeyFields = 'vod2'
      Lookup = True
    end
    object Avtc: TWideStringField
      FieldName = 'c'
      Size = 50
    end
  end
  object ac: TADOConnection
    ConnectionString = 
      '---Provider=SQLOLEDB.1;Password=;Persist Security Info=True;User' +
      ' ID=oper;Initial Catalog=oper2006;Data Source=ULVIS\SERVER;Use P' +
      'rocedure for Prepare=1;Auto Translate=True;Packet Size=4096;Work' +
      'station ID=n;Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object KomfQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from komf order by komf')
    Left = 80
    Top = 184
    object KomfQkomf: TWideStringField
      FieldName = 'komf'
      Size = 100
    end
    object KomfQcodeid: TAutoIncField
      FieldName = 'codeid'
      ReadOnly = True
    end
  end
  object Periods: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from periods')
    Left = 128
    Top = 184
    object Periodsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object Periodsd1: TDateTimeField
      FieldName = 'd1'
    end
    object Periodsd2: TDateTimeField
      FieldName = 'd2'
    end
    object Periodsgraf: TIntegerField
      FieldName = 'graf'
    end
  end
  object q1: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from gostinici')
    Left = 24
    Top = 360
  end
  object q2: TADOQuery
    Connection = ac
    Parameters = <>
    Left = 56
    Top = 360
  end
  object q3: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select count(*) from pravila where st_seb='#39#1089#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100#39' and id' +
        '_gost=197 and id_kat=51 and a_b='#39#1040#1074#1090'.'#39' and c_za='#39#1085#1086#1084#1077#1088#39' and d1<=' +
        #39'08.09.2005'#39' and d2>='#39'08.09.2005'#39' and usl='#39#1074#1086#1079#1088#1072#1089#1090#39)
    Left = 88
    Top = 360
  end
  object UsersQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from users order by name')
    Left = 176
    Top = 72
    object UsersQCodeid: TAutoIncField
      FieldName = 'Codeid'
      ReadOnly = True
    end
    object UsersQName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object UsersQType: TWideStringField
      FieldName = 'Type'
      Size = 100
    end
    object UsersQPass: TWideStringField
      FieldName = 'Pass'
      Size = 50
    end
  end
  object qcl: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,b.m from clients a full outer join gostnom b on a.id_' +
        'm=b.codeid')
    Left = 280
    Top = 360
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
      LookupDataSet = AgentQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Naimen'
      KeyFields = 'id_ag'
      Size = 200
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'trcol'
      LookupDataSet = TransQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'trstr'
      KeyFields = 'id_tr'
      Size = 200
      Lookup = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'pitcol'
      LookupDataSet = Pit
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Pit'
      KeyFields = 'id_pit'
      Size = 200
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'katcol'
      LookupDataSet = Kat
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Kat'
      KeyFields = 'id_kat'
      Size = 200
      Lookup = True
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'pocol'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_po'
      Size = 200
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'ppcol'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pp'
      Size = 200
      Lookup = True
    end
    object StringField7: TStringField
      FieldKind = fkLookup
      FieldName = 'pvcol'
      LookupDataSet = PodRegQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Podreg'
      KeyFields = 'id_pv'
      Size = 200
      Lookup = True
    end
    object WideStringField15: TWideStringField
      FieldName = 'a_b'
      Size = 50
    end
    object WideStringField17: TWideStringField
      FieldName = 'annul'
      Size = 4
    end
    object BCDField1: TBCDField
      FieldName = 'stoim'
      Precision = 19
    end
    object WideStringField18: TWideStringField
      FieldName = 'oper'
      Size = 50
    end
    object StringField8: TStringField
      FieldKind = fkLookup
      FieldName = 'gostin'
      LookupDataSet = Gostin
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Nazvanie'
      KeyFields = 'id_gost'
      Size = 100
      Lookup = True
    end
    object qcloplata: TWideStringField
      FieldName = 'oplata'
      Size = 50
    end
    object qclpodtv: TWideStringField
      FieldName = 'podtv'
      Size = 50
    end
    object qclbez_pr: TWideStringField
      FieldName = 'bez_pr'
      Size = 5
    end
    object qcldata_podtv: TDateTimeField
      FieldName = 'data_podtv'
    end
    object qcloplacheno: TBCDField
      FieldName = 'oplacheno'
      Precision = 19
    end
    object qclm: TStringField
      FieldName = 'm'
    end
  end
  object q4: TADOQuery
    Connection = ac
    Parameters = <>
    Left = 120
    Top = 360
  end
  object qit: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from test_bl_otch_')
    Left = 184
    Top = 360
  end
  object dmdset: TfrDBDataSet
    DataSet = qit
    Left = 416
    Top = 80
  end
  object qg: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select t1.podreg,t2.podreg,t3.podreg from tr t left join podreg ' +
        't1 on(t1.codeid=t.p1) left join podreg t2 on(t2.codeid=t.p2) lef' +
        't join podreg t3 on(t3.codeid=t.p3) where t.codeid=75')
    Left = 248
    Top = 424
  end
  object q5: TADOQuery
    Connection = ac
    Parameters = <>
    Left = 152
    Top = 360
  end
  object qit2: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usertemp412047')
    Left = 216
    Top = 360
  end
  object dmdset2: TfrDBDataSet
    DataSet = qit2
    Left = 416
    Top = 128
  end
  object hte: TfrHTML2Export
    Default = True
    ShowDialog = False
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
    Left = 464
    Top = 80
  end
  object dmdset3: TfrDBDataSet
    DataSet = qit3
    Left = 416
    Top = 176
  end
  object qit3: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usertemp412047')
    Left = 248
    Top = 360
  end
  object fr: TfrReport
    Dataset = dmdset
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = True
    OnGetValue = frGetValue
    Left = 440
    Top = 32
    ReportForm = {19000000}
  end
  object sp1: TADOStoredProc
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 128
    object sp1DATABASE_NAME: TWideStringField
      FieldName = 'DATABASE_NAME'
      Size = 128
    end
    object sp1DATABASE_SIZE: TIntegerField
      FieldName = 'DATABASE_SIZE'
      ReadOnly = True
    end
    object sp1REMARKS: TStringField
      FieldName = 'REMARKS'
      ReadOnly = True
      Size = 254
    end
  end
  object worde: TfrRtfAdvExport
    Left = 464
    Top = 128
  end
  object excele: TfrOLEExcelExport
    ShowDialog = False
    CellsAlign = False
    CellsFillColor = False
    CellsFontColor = False
    CellsFontName = False
    CellsFontSize = False
    CellsFontStyle = False
    Left = 464
    Top = 176
  end
  object XMLExE: TfrXMLExcelExport
    Left = 464
    Top = 224
  end
  object Dops: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dops order by naim')
    Left = 176
    Top = 128
    object Dopsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object Dopsnaim: TWideStringField
      FieldName = 'naim'
      Size = 50
    end
    object Dopscat_id: TIntegerField
      FieldName = 'cat_id'
    end
    object Dopscat: TStringField
      FieldKind = fkLookup
      FieldName = 'cat'
      LookupDataSet = Dopcat
      LookupKeyFields = 'id'
      LookupResultField = 'cat'
      KeyFields = 'cat_id'
      Size = 50
      Lookup = True
    end
  end
  object Dopcat: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dopcat order by cat')
    Left = 176
    Top = 184
    object Dopcatid: TIntegerField
      FieldName = 'id'
    end
    object Dopcatcat: TWideStringField
      FieldName = 'cat'
      Size = 50
    end
  end
  object Nest_d: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from nest_d order by d1')
    Left = 176
    Top = 240
    object Nest_did: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object Nest_dd1: TDateTimeField
      FieldName = 'd1'
    end
    object Nest_dtip: TWideStringField
      FieldName = 'tip'
      Size = 3
    end
    object Nest_dv_v: TWideStringField
      FieldName = 'v_v'
      Size = 6
    end
  end
  object RassQ: TADOQuery
    Connection = ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select id,f,i,nz,dt_begin,dt_end,proezd,id_avt,ea,ra,ma,id_avt_o' +
        ',eao,rao,mao,avt_nazv,avt_nazv_o from clients where id_gost=126 ' +
        'and dt_begin='#39'17.04.2006'#39' and annul<>'#39#1076#1072#39' and tip=3 and a_b='#39#1040#1074#1090 +
        '.'#39' and ((proezd='#39#1075#1086#1088#1086#1076'-'#1073#1072#1079#1072'-'#1075#1086#1088#1086#1076#39') or (proezd='#39#1075#1086#1088#1086#1076'-'#1073#1072#1079#1072#39'))')
    Left = 32
    Top = 296
    object RassQf: TWideStringField
      FieldName = 'f'
      Size = 100
    end
    object RassQi: TWideStringField
      FieldName = 'i'
      Size = 100
    end
    object RassQnz: TIntegerField
      FieldName = 'nz'
    end
    object RassQdt_begin: TDateTimeField
      FieldName = 'dt_begin'
    end
    object RassQdt_end: TDateTimeField
      FieldName = 'dt_end'
    end
    object RassQproezd: TWideStringField
      FieldName = 'proezd'
      Size = 50
    end
    object RassQra: TWideStringField
      FieldName = 'ra'
      Size = 2
    end
    object RassQma: TWideStringField
      FieldName = 'ma'
      Size = 1
    end
    object RassQid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object RassQid_avt: TWideStringField
      FieldName = 'id_avt'
      Size = 6
    end
    object RassQea: TWideStringField
      FieldName = 'ea'
      Size = 1
    end
    object RassQid_avt_o: TWideStringField
      FieldName = 'id_avt_o'
      Size = 6
    end
    object RassQeao: TWideStringField
      FieldName = 'eao'
      Size = 1
    end
    object RassQrao: TWideStringField
      FieldName = 'rao'
      Size = 2
    end
    object RassQmao: TWideStringField
      FieldName = 'mao'
      Size = 1
    end
    object RassQavt_nazv: TWideStringField
      FieldName = 'avt_nazv'
      Size = 50
    end
    object RassQavt_nazv_o: TWideStringField
      FieldName = 'avt_nazv_o'
      Size = 50
    end
  end
end
