object FTest: TFTest
  Left = 185
  Top = 81
  BorderStyle = bsToolWindow
  Caption = #1058#1077#1089#1090
  ClientHeight = 574
  ClientWidth = 785
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object b: TcxButton
    Left = 8
    Top = 320
    Width = 769
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 0
    OnClick = bClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 352
    Width = 769
    Height = 217
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object pc: TcxPageControl
    Left = 0
    Top = 0
    Width = 785
    Height = 313
    ActivePage = ts1
    TabOrder = 2
    ClientRectBottom = 313
    ClientRectRight = 785
    ClientRectTop = 23
    object ts1: TcxTabSheet
      Caption = #1057#1090#1088' 1'
      ImageIndex = 0
      object m1: TcxMemo
        Left = 0
        Top = 0
        Width = 785
        Height = 289
        Lines.Strings = (
          'select count(*) from clients where '
          '(p in (select id from clients where '
          
            '(p in (select a.id from clients a left join gostinici b on a.id_' +
            'gost=b.codeid where '
          'a.tip=1 and '
          'b.exk<>'#39#1076#1072#39' and '
          'a.a_b='#39#1040#1074#1090'.'#39' and '
          'annul<>'#39#1076#1072#39' and '
          'data_zai>='#39'01.03.2005'#39' and '
          'data_zai<='#39'18.05.2007'#39' and '
          'id_ag in (select codeid from agentstva)'
          ')))) and '
          'annul<>'#39#1076#1072#39)
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        TabOrder = 0
      end
    end
    object ts2: TcxTabSheet
      Caption = #1057#1090#1088' 2'
      ImageIndex = 1
      object m2: TcxMemo
        Left = 0
        Top = 0
        Width = 809
        Height = 289
        Lines.Strings = (
          
            'select a.tip,a.p,a.id,a.c_gost,a.c_kat,a.per,a.n,a.d1,a.nz,a.kmo' +
            ',a.kmd,a.komf,d.kat from bloki a left join kat d on '
          
            'a.C_kat = d.codeid where tip<>2 and tip<>3 and a.c_gost=321 and ' +
            'a.a_b='#39#1040#1074#1090'.'#39' and d1>='#39'01.03.2006'#39' and '
          'd1<='#39'18.05.2007'#39)
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        TabOrder = 0
      end
    end
    object ts3: TcxTabSheet
      Caption = #1057#1090#1088' 3'
      ImageIndex = 2
      object m3: TcxMemo
        Left = 0
        Top = 0
        Width = 785
        Height = 289
        Lines.Strings = (
          'select * from agentstva where naimen like '#39'%'#1052#1055'%'#39)
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        TabOrder = 0
      end
    end
    object ts4: TcxTabSheet
      Caption = #1057#1090#1088' 4'
      ImageIndex = 3
      object m4: TcxMemo
        Left = 0
        Top = 0
        Width = 785
        Height = 289
        Lines.Strings = (
          'select * from gostinici')
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = q1
    Left = 40
    Top = 416
  end
  object q1: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from gostinici')
    Left = 40
    Top = 464
  end
end
