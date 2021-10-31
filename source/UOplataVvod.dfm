object FOplataVvod: TFOplataVvod
  Left = 325
  Top = 304
  BorderStyle = bsToolWindow
  Caption = #1054#1087#1083#1072#1090#1072
  ClientHeight = 189
  ClientWidth = 221
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 144
    Width = 76
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
  end
  object lus: TLabel
    Left = 90
    Top = 144
    Width = 9
    Height = 13
    Caption = '---'
  end
  object Label3: TLabel
    Left = 50
    Top = 24
    Width = 45
    Height = 13
    Caption = #1050' '#1086#1087#1083#1072#1090#1077
  end
  object Label4: TLabel
    Left = 50
    Top = 64
    Width = 49
    Height = 13
    Caption = #1054#1087#1083#1072#1095#1077#1085#1086
  end
  object Label5: TLabel
    Left = 50
    Top = 104
    Width = 76
    Height = 13
    Caption = #1055#1086#1083#1085#1072#1103' '#1086#1087#1083#1072#1090#1072
  end
  object Label6: TLabel
    Left = 10
    Top = 8
    Width = 51
    Height = 13
    Caption = #1047#1072#1103#1074#1082#1072' '#8470
  end
  object lnz: TLabel
    Left = 66
    Top = 8
    Width = 9
    Height = 13
    Caption = '---'
  end
  object ltip: TLabel
    Left = 144
    Top = 88
    Width = 13
    Height = 13
    Caption = 'ltip'
    Visible = False
  end
  object cxButton1: TcxButton
    Left = 6
    Top = 160
    Width = 209
    Height = 25
    Caption = #1042#1085#1077#1089#1090#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cb_po: TcxComboBox
    Left = 50
    Top = 120
    Width = 57
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1085#1077#1090
      #1076#1072)
    TabOrder = 1
    Text = #1085#1077#1090
  end
  object ce_kopl: TcxTextEdit
    Left = 48
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 2
    OnKeyPress = ce_koplKeyPress
  end
  object te_opl: TcxTextEdit
    Left = 48
    Top = 80
    Width = 81
    Height = 21
    Properties.OnChange = te_oplPropertiesChange
    TabOrder = 3
    OnKeyPress = te_oplKeyPress
  end
end
