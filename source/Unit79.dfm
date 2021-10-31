object FUsers: TFUsers
  Left = 344
  Top = 162
  BorderStyle = bsToolWindow
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  ClientHeight = 152
  ClientWidth = 336
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
    Left = 254
    Top = 39
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
  end
  object Label3: TLabel
    Left = 256
    Top = 77
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label4: TLabel
    Left = 254
    Top = 3
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label1: TLabel
    Left = 54
    Top = 3
    Width = 73
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  end
  object ListBox1: TcxListBox
    Left = 0
    Top = 16
    Width = 193
    Height = 97
    ItemHeight = 13
    TabOrder = 0
    OnClick = cxListBox1Click
  end
  object Edit2: TcxTextEdit
    Left = 0
    Top = 112
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Edit1: TcxTextEdit
    Left = 192
    Top = 92
    Width = 145
    Height = 21
    Properties.EchoMode = eemPassword
    TabOrder = 2
  end
  object Edit3: TcxTextEdit
    Left = 192
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TcxComboBox
    Left = 192
    Top = 52
    Width = 145
    Height = 21
    Properties.Items.Strings = (
      #1052#1077#1085#1077#1076#1078#1077#1088
      #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088)
    TabOrder = 4
  end
  object cxButton1: TcxButton
    Left = 193
    Top = 113
    Width = 143
    Height = 19
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 97
    Top = 133
    Width = 95
    Height = 19
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 6
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 1
    Top = 133
    Width = 95
    Height = 19
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 7
    OnClick = cxButton3Click
  end
  object q1: TADOQuery
    Connection = DM.ac
    Parameters = <>
    Left = 8
    Top = 24
  end
end
