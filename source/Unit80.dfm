object FLogin: TFLogin
  Left = 431
  Top = 310
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
  ClientHeight = 101
  ClientWidth = 162
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 65
    Top = 3
    Width = 31
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object Label2: TLabel
    Left = 64
    Top = 42
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object b1: TcxButton
    Left = 0
    Top = 78
    Width = 161
    Height = 21
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = b1Click
  end
  object Edit1: TcxTextEdit
    Left = 0
    Top = 56
    Width = 161
    Height = 21
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 1
  end
  object cb1: TcxComboBox
    Left = 0
    Top = 16
    Width = 161
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 2
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 3
    Top = 3
  end
end
