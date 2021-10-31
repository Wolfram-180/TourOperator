object FSettings: TFSettings
  Left = 412
  Top = 222
  BorderStyle = bsToolWindow
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 239
  ClientWidth = 270
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
    Left = 536
    Top = 132
    Width = 68
    Height = 13
    Caption = #1041#1044' '#1060#1080#1085#1072#1085#1089#1099
    Visible = False
  end
  object Label8: TLabel
    Left = 116
    Top = 40
    Width = 67
    Height = 13
    Caption = #1092#1086#1088#1084#1072#1090' '#1076#1072#1090#1099
  end
  object Label1: TLabel
    Left = 196
    Top = 16
    Width = 66
    Height = 13
    Caption = #1086#1073#1097#1072#1103' '#1087#1072#1087#1082#1072
  end
  object Label3: TLabel
    Left = 117
    Top = 160
    Width = 16
    Height = 13
    Caption = #1041#1044
  end
  object Label4: TLabel
    Left = 115
    Top = 64
    Width = 36
    Height = 13
    Caption = #1089#1077#1088#1074#1077#1088
  end
  object Label5: TLabel
    Left = 115
    Top = 88
    Width = 55
    Height = 13
    Caption = 'ID '#1082#1083#1080#1077#1085#1090#1072
  end
  object Label6: TLabel
    Left = 0
    Top = 176
    Width = 106
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1086#1087'. '#1087#1077#1088'.'
  end
  object Label7: TLabel
    Left = 155
    Top = 176
    Width = 101
    Height = 13
    Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1086#1087'. '#1087#1077#1088'.'
  end
  object Label9: TLabel
    Left = 115
    Top = 112
    Width = 22
    Height = 13
    Caption = 'login'
  end
  object Label10: TLabel
    Left = 115
    Top = 136
    Width = 22
    Height = 13
    Caption = 'pass'
  end
  object cxButton1: TcxButton
    Left = 1
    Top = 216
    Width = 267
    Height = 21
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object te3: TcxTextEdit
    Left = 0
    Top = 32
    Width = 113
    Height = 21
    Properties.OnChange = te3PropertiesChange
    TabOrder = 1
    Text = 'mm.dd.yyyy'
  end
  object te4: TcxTextEdit
    Left = 0
    Top = 8
    Width = 193
    Height = 21
    Properties.OnChange = te4PropertiesChange
    TabOrder = 2
  end
  object cxButton2: TcxButton
    Left = 157
    Top = 152
    Width = 111
    Height = 21
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cb1: TComboBox
    Left = 1
    Top = 152
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    OnChange = cb1Change
  end
  object te1: TcxTextEdit
    Left = 0
    Top = 56
    Width = 113
    Height = 21
    Properties.OnChange = te1PropertiesChange
    TabOrder = 5
  end
  object te2: TcxTextEdit
    Left = 0
    Top = 80
    Width = 113
    Height = 21
    Properties.OnChange = te2PropertiesChange
    TabOrder = 6
  end
  object de1: TcxDateEdit
    Left = 0
    Top = 192
    Width = 113
    Height = 21
    Properties.OnChange = de1PropertiesChange
    TabOrder = 7
  end
  object de2: TcxDateEdit
    Left = 155
    Top = 192
    Width = 113
    Height = 21
    Properties.OnChange = de2PropertiesChange
    TabOrder = 8
  end
  object te7: TcxTextEdit
    Left = 0
    Top = 104
    Width = 113
    Height = 21
    Properties.OnChange = te7PropertiesChange
    TabOrder = 9
  end
  object te8: TcxTextEdit
    Left = 0
    Top = 128
    Width = 113
    Height = 21
    Properties.OnChange = te8PropertiesChange
    TabOrder = 10
  end
end
