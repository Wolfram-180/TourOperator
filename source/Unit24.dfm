object FGostDobav: TFGostDobav
  Left = 198
  Top = 434
  BorderStyle = bsToolWindow
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
  ClientHeight = 238
  ClientWidth = 280
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
  object Label1: TLabel
    Left = 30
    Top = 8
    Width = 55
    Height = 13
    Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
  end
  object Label2: TLabel
    Left = 35
    Top = 32
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label13: TLabel
    Left = 41
    Top = 80
    Width = 44
    Height = 13
    Caption = #1044#1086#1075#1086#1074#1086#1088
  end
  object Label3: TLabel
    Left = 54
    Top = 56
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label14: TLabel
    Left = 22
    Top = 104
    Width = 63
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object Label15: TLabel
    Left = 10
    Top = 128
    Width = 75
    Height = 13
    Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1095#1072#1089
  end
  object Label4: TLabel
    Left = 17
    Top = 152
    Width = 68
    Height = 13
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
  end
  object Label6: TLabel
    Left = 88
    Top = 128
    Width = 10
    Height = 13
    Caption = #1040':'
  end
  object Label7: TLabel
    Left = 172
    Top = 128
    Width = 10
    Height = 13
    Caption = #1041':'
  end
  object Label8: TLabel
    Left = 47
    Top = 200
    Width = 48
    Height = 13
    Caption = #1043#1088#1072#1092#1080#1082' '#1040
  end
  object Label10: TLabel
    Left = 172
    Top = 200
    Width = 10
    Height = 13
    Caption = #1041':'
  end
  object ComboBox1: TcxComboBox
    Left = 88
    Top = 1
    Width = 193
    Height = 21
    Properties.DropDownRows = 30
    Properties.DropDownSizeable = True
    TabOrder = 0
  end
  object Edit2: TcxTextEdit
    Left = 88
    Top = 25
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Edit3: TcxTextEdit
    Left = 88
    Top = 49
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object Edit13: TcxTextEdit
    Left = 88
    Top = 73
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object Edit14: TcxTextEdit
    Left = 88
    Top = 97
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object ComboBox2: TcxComboBox
    Left = 100
    Top = 145
    Width = 65
    Height = 21
    Properties.Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20')
    TabOrder = 5
    Text = '0'
  end
  object cb1: TcxCheckBox
    Left = 185
    Top = 145
    Width = 85
    Height = 21
    Caption = '2'#1077' '#1074#1088#1077#1084#1103
    TabOrder = 6
  end
  object CheckBox2: TcxCheckBox
    Left = 185
    Top = 169
    Width = 77
    Height = 21
    Caption = #1087#1088#1086#1077#1079#1076
    TabOrder = 7
  end
  object cxButton1: TcxButton
    Left = 4
    Top = 216
    Width = 135
    Height = 21
    Caption = 'OK'
    TabOrder = 8
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 140
    Top = 216
    Width = 135
    Height = 21
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 9
    OnClick = cxButton2Click
  end
  object te1: TcxTimeEdit
    Left = 100
    Top = 122
    Width = 65
    Height = 21
    EditValue = 0.5d
    Properties.AssignedValues.MinValue = True
    TabOrder = 10
  end
  object te2: TcxTimeEdit
    Left = 185
    Top = 122
    Width = 65
    Height = 21
    EditValue = 0.5d
    Properties.AssignedValues.MinValue = True
    TabOrder = 11
  end
  object se1: TcxSpinEdit
    Left = 100
    Top = 194
    Width = 65
    Height = 21
    TabOrder = 12
  end
  object se2: TcxSpinEdit
    Left = 185
    Top = 194
    Width = 65
    Height = 21
    TabOrder = 13
  end
  object cb3: TcxCheckBox
    Left = 88
    Top = 169
    Width = 96
    Height = 21
    Caption = #1101#1082#1089#1082#1091#1088#1089#1080#1086#1085#1082#1072
    TabOrder = 14
  end
  object q1: TADOQuery
    Connection = DM.ac
    Parameters = <>
    Left = 112
    Top = 32
  end
end
