object FProgress: TFProgress
  Left = 370
  Top = 222
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = #1046#1076#1080#1090#1077'...'
  ClientHeight = 56
  ClientWidth = 273
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pb1: TcxProgressBar
    Left = 0
    Top = 0
    Width = 273
    Height = 56
    Align = alClient
    ParentColor = False
    ParentFont = False
    Properties.BeginColor = 14024703
    Properties.BarBevelOuter = cxbvRaised
    Properties.EndColor = 11268526
    Properties.PeakSize = 30
    Style.Color = 16378073
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -36
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.Shadow = False
    Style.TextColor = clMenuText
    StyleDisabled.TextColor = clBackground
    TabOrder = 0
  end
end
