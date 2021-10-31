object FStat: TFStat
  Left = 271
  Top = 114
  BorderStyle = bsToolWindow
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1080' '#1089#1087#1080#1089#1082#1080
  ClientHeight = 557
  ClientWidth = 573
  Color = clInfoBk
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
    Left = 218
    Top = 57
    Width = 66
    Height = 13
    Caption = #1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
  end
  object Label2: TLabel
    Left = 114
    Top = 57
    Width = 41
    Height = 13
    Caption = #1094#1077#1087#1086#1095#1082#1072
  end
  object Label3: TLabel
    Left = 193
    Top = 336
    Width = 38
    Height = 13
    Caption = #1054#1073#1098#1077#1082#1090
  end
  object Label4: TLabel
    Left = 41
    Top = 336
    Width = 55
    Height = 13
    Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
  end
  object Label5: TLabel
    Left = 345
    Top = 336
    Width = 31
    Height = 13
    Caption = #1047#1072#1077#1079#1076
  end
  object Label6: TLabel
    Left = 41
    Top = 376
    Width = 57
    Height = 13
    Caption = #1042#1086#1076#1080#1090#1077#1083#1100' 1'
  end
  object Label7: TLabel
    Left = 41
    Top = 416
    Width = 57
    Height = 13
    Caption = #1042#1086#1076#1080#1090#1077#1083#1100' 2'
  end
  object Label8: TLabel
    Left = 41
    Top = 456
    Width = 92
    Height = 13
    Caption = #1057#1086#1087#1088#1086#1074#1086#1078#1076#1072#1102#1097#1080#1081
  end
  object Label10: TLabel
    Left = 366
    Top = 416
    Width = 63
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object Label11: TLabel
    Left = 299
    Top = 496
    Width = 54
    Height = 13
    Caption = #1059#1090#1086#1095#1085#1077#1085#1080#1103
  end
  object Label12: TLabel
    Left = 184
    Top = 540
    Width = 11
    Height = 13
    Caption = #8470
  end
  object Label13: TLabel
    Left = 143
    Top = 0
    Width = 35
    Height = 13
    Caption = #1044#1072#1090#1072' 1'
  end
  object Bevel1: TBevel
    Left = 28
    Top = 40
    Width = 470
    Height = 2
    Style = bsRaised
  end
  object Bevel2: TBevel
    Left = 28
    Top = 96
    Width = 470
    Height = 2
    Style = bsRaised
  end
  object Bevel3: TBevel
    Left = 28
    Top = 168
    Width = 470
    Height = 2
    Style = bsRaised
  end
  object Bevel4: TBevel
    Left = 41
    Top = 288
    Width = 470
    Height = 2
    Style = bsRaised
  end
  object Label14: TLabel
    Left = 263
    Top = 0
    Width = 35
    Height = 13
    Caption = #1044#1072#1090#1072' 2'
  end
  object Label15: TLabel
    Left = 195
    Top = 376
    Width = 55
    Height = 13
    Caption = #1058#1080#1087' '#1086#1090#1095#1077#1090#1072
  end
  object Label9: TLabel
    Left = 41
    Top = 496
    Width = 41
    Height = 13
    Caption = #1040#1074#1090#1086#1073#1091#1089
  end
  object b1: TcxButton
    Left = 67
    Top = 104
    Width = 299
    Height = 21
    Caption = #1054#1073#1097#1072#1103' '#1089#1074#1086#1076#1082#1072
    TabOrder = 0
    OnClick = b1Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object de1: TcxDateEdit
    Left = 143
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cb1: TcxComboBox
    Left = 162
    Top = 49
    Width = 51
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object cb2: TcxComboBox
    Left = 58
    Top = 49
    Width = 51
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object b2: TcxButton
    Left = 58
    Top = 73
    Width = 228
    Height = 19
    Caption = #1085#1072' '#1074#1099#1073#1088#1072#1085#1085#1086#1077
    TabOrder = 4
    OnClick = b2Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object cb3: TcxComboBox
    Left = 193
    Top = 352
    Width = 151
    Height = 21
    Properties.Sorted = True
    TabOrder = 5
    OnMouseDown = cb3MouseDown
  end
  object cb4: TcxComboBox
    Left = 345
    Top = 352
    Width = 151
    Height = 21
    TabOrder = 6
    OnMouseDown = cb4MouseDown
  end
  object chb1: TcxCheckBox
    Left = 179
    Top = 512
    Width = 81
    Height = 21
    Caption = #1089' '#1072#1076#1088#1077#1089#1086#1084
    TabOrder = 7
  end
  object cb5: TcxComboBox
    Left = 41
    Top = 352
    Width = 151
    Height = 21
    Properties.Sorted = True
    TabOrder = 8
    OnMouseDown = cb5MouseDown
  end
  object cb6: TcxComboBox
    Left = 41
    Top = 392
    Width = 151
    Height = 21
    Properties.Sorted = True
    TabOrder = 9
    OnMouseDown = cb6MouseDown
  end
  object cb7: TcxComboBox
    Left = 41
    Top = 432
    Width = 124
    Height = 21
    Properties.Sorted = True
    TabOrder = 10
    OnMouseDown = cb7MouseDown
  end
  object cb8: TcxComboBox
    Left = 41
    Top = 472
    Width = 124
    Height = 21
    Properties.Sorted = True
    TabOrder = 11
    OnMouseDown = cb8MouseDown
  end
  object te2: TcxTextEdit
    Left = 366
    Top = 432
    Width = 130
    Height = 21
    TabOrder = 12
  end
  object cb9: TcxComboBox
    Left = 259
    Top = 512
    Width = 151
    Height = 21
    Properties.Sorted = True
    TabOrder = 13
    OnMouseDown = cb9MouseDown
  end
  object chb2: TcxCheckBox
    Left = 411
    Top = 512
    Width = 76
    Height = 21
    Caption = '2'#1077' '#1074#1088#1077#1084#1103
    TabOrder = 14
    Visible = False
  end
  object chb3: TcxCheckBox
    Left = 371
    Top = 104
    Width = 89
    Height = 21
    Caption = #1073#1077#1079' '#1087#1088#1086#1077#1079#1076#1072
    Properties.OnChange = chb3PropertiesChange
    TabOrder = 15
  end
  object b8: TcxButton
    Left = 108
    Top = 176
    Width = 240
    Height = 21
    Caption = '10 '#1076#1072#1090
    TabOrder = 16
    OnClick = b8Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object chb4: TcxCheckBox
    Left = 348
    Top = 176
    Width = 117
    Height = 21
    Caption = #1074#1082#1083#1102#1095#1072#1103' '#1085#1091#1083#1077#1074#1099#1077
    TabOrder = 17
  end
  object rg1: TcxRadioGroup
    Left = 172
    Top = 420
    Width = 193
    Height = 33
    Caption = ' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '
    ItemIndex = 0
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = #1074#1089#1077
      end
      item
        Caption = #1090#1091#1076#1072
      end
      item
        Caption = #1086#1073#1088#1072#1090#1085#1086
      end>
    TabOrder = 18
  end
  object b9: TcxButton
    Left = 529
    Top = 8
    Width = 209
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = #1074#1089#1077' '#1094#1077#1087#1086#1095#1082#1080' + '#1086#1073#1097#1072#1103' ('#1084#1086#1088#1077')'
    ParentBiDiMode = False
    TabOrder = 19
    Visible = False
    OnClick = b9Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object te3: TcxTextEdit
    Left = 200
    Top = 532
    Width = 103
    Height = 21
    TabOrder = 20
    Text = '05740RE'
  end
  object cb10: TcxComboBox
    Left = 304
    Top = 532
    Width = 106
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'ECONOM-CLASS'
      'MEDICAL-CLASS')
    Properties.Sorted = True
    TabOrder = 21
    Text = 'ECONOM-CLASS'
    OnMouseDown = cb9MouseDown
  end
  object b12: TcxButton
    Left = 58
    Top = 234
    Width = 86
    Height = 21
    Caption = #1055#1086' '#1072#1075#1077#1085#1090#1089#1090#1074#1091
    TabOrder = 22
    OnClick = b12Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object cb11: TcxComboBox
    Left = 146
    Top = 234
    Width = 386
    Height = 21
    Properties.DropDownListStyle = lsEditFixedList
    Properties.DropDownRows = 25
    Properties.DropDownSizeable = True
    Properties.Sorted = True
    Properties.OnChange = cb11PropertiesChange
    TabOrder = 23
  end
  object rg2: TcxRadioGroup
    Left = 10
    Top = 128
    Width = 553
    Height = 33
    Caption = ' '#1090#1080#1087' '
    ItemIndex = 0
    Properties.Columns = 5
    Properties.Items = <
      item
        Caption = #1079#1072#1077#1079#1076#1099
      end
      item
        Caption = #1073#1083#1086#1082#1080
      end
      item
        Caption = #1089#1086#1074#1084#1077#1089#1090#1085#1072#1103
      end
      item
        Caption = #1101#1082#1089#1082#1091#1088#1089#1080#1086#1085#1082#1072
      end
      item
        Caption = #1085#1077#1089#1090#1072#1085#1076#1072#1088#1090
      end>
    TabOrder = 24
  end
  object rg3: TcxRadioGroup
    Left = 108
    Top = 197
    Width = 357
    Height = 35
    Caption = ' '#1090#1080#1087' '
    ItemIndex = 0
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = #1079#1072#1077#1079#1076#1099
      end
      item
        Caption = #1073#1083#1086#1082#1080
      end
      item
        Caption = #1085#1077#1089#1090#1072#1085#1076#1072#1088#1090
      end>
    TabOrder = 25
  end
  object b13: TcxButton
    Left = 533
    Top = 56
    Width = 228
    Height = 21
    Caption = #1055#1086' '#1072#1075#1077#1085#1090#1089#1090#1074#1072#1084' '#1089#1086#1074#1084#1077#1097#1077#1085#1085#1072#1103' ('#1054#1058#1051#1054#1046#1045#1053#1040')'
    Enabled = False
    TabOrder = 26
    Visible = False
    LookAndFeel.Kind = lfUltraFlat
  end
  object de2: TcxDateEdit
    Left = 263
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 27
  end
  object b14: TcxButton
    Left = 529
    Top = 32
    Width = 209
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = #1074#1089#1077' '#1094#1077#1087#1086#1095#1082#1080' + '#1086#1073#1097#1072#1103' ('#1101#1082#1089#1082#1091#1088#1089#1080#1086#1085#1082#1072')'
    ParentBiDiMode = False
    TabOrder = 28
    Visible = False
    OnClick = b14Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object rg4: TcxRadioGroup
    Left = 43
    Top = 296
    Width = 452
    Height = 33
    Caption = ' '#1042#1080#1076' '#1089#1087#1080#1089#1082#1072' '
    ItemIndex = 0
    Properties.Columns = 4
    Properties.Items = <
      item
        Caption = #1072#1074#1090#1086#1073#1091#1089#1099
      end
      item
        Caption = #1073#1083#1086#1082#1080
      end
      item
        Caption = #1101#1082#1089#1082#1091#1088#1089#1080#1086#1085#1082#1072
      end
      item
        Caption = #1085#1077#1089#1090#1072#1085#1076#1072#1088#1090
      end>
    TabOrder = 29
    OnClick = rg4Click
  end
  object cb12: TcxComboBox
    Left = 195
    Top = 392
    Width = 149
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #1073#1091#1093#1075#1072#1083#1090#1077#1088#1091
      #1074' '#1072#1074#1090#1086#1073#1091#1089
      #1074' '#1075#1086#1089#1090#1080#1085#1080#1094#1091
      #1075#1086#1089#1090#1080#1085#1080#1094#1072' - '#1072#1075#1077#1085#1090#1089#1090#1074#1072
      #1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
      #1090#1088#1072#1085#1089#1092#1077#1088)
    Properties.Sorted = True
    TabOrder = 30
    Text = #1074' '#1072#1074#1090#1086#1073#1091#1089
  end
  object b15: TcxButton
    Left = 171
    Top = 456
    Width = 197
    Height = 33
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088
    TabOrder = 31
    OnClick = b15Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object b16: TcxButton
    Left = 369
    Top = 456
    Width = 127
    Height = 33
    Caption = #1069#1082#1089#1087#1086#1088#1090
    TabOrder = 32
    OnClick = b16Click
    LookAndFeel.Kind = lfUltraFlat
  end
  object cb14: TcxComboBox
    Left = 41
    Top = 512
    Width = 124
    Height = 21
    Properties.Sorted = True
    TabOrder = 33
    OnMouseDown = cb14MouseDown
  end
  object cb15: TcxCheckBox
    Left = 411
    Top = 528
    Width = 81
    Height = 21
    Caption = #1074#1089#1077
    TabOrder = 34
  end
  object rg8: TcxRadioGroup
    Left = 57
    Top = 255
    Width = 472
    Height = 32
    Caption = ' '#1090#1080#1087' '
    ItemIndex = 0
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = #1079#1072#1077#1079#1076#1099
      end
      item
        Caption = #1073#1083#1086#1082#1080
      end
      item
        Caption = #1085#1077#1089#1090#1072#1085#1076#1072#1088#1090
      end>
    TabOrder = 35
  end
  object cb18: TcxComboBox
    Left = 464
    Top = 305
    Width = 41
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.Items.Strings = (
      #1040
      #1041)
    Properties.ReadOnly = False
    Properties.OnChange = cb18PropertiesChange
    TabOrder = 36
    Text = #1040
  end
  object cxLabel7: TcxLabel
    Left = 345
    Top = 376
    Width = 69
    Height = 17
    Caption = #1044#1072#1090#1072' '#1079#1072#1077#1079#1076#1072
    Properties.Transparent = True
  end
  object cb19: TcxComboBox
    Left = 345
    Top = 392
    Width = 92
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.ReadOnly = False
    Properties.OnChange = cb11PropertiesChange
    TabOrder = 38
  end
  object cxLabel8: TcxLabel
    Left = 439
    Top = 376
    Width = 71
    Height = 17
    Caption = #1044#1072#1090#1072' '#1074#1099#1077#1079#1076#1072
    Properties.Transparent = True
  end
  object cb20: TcxComboBox
    Left = 440
    Top = 392
    Width = 93
    Height = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.ReadOnly = False
    TabOrder = 40
  end
  object nzaez: TcxButton
    Left = 287
    Top = 73
    Width = 228
    Height = 19
    Caption = #1085#1077#1089#1090#1072#1085#1076#1072#1088#1090
    TabOrder = 41
    OnClick = nzaezClick
    LookAndFeel.Kind = lfUltraFlat
  end
  object rg7: TcxRadioGroup
    Left = 286
    Top = 42
    Width = 230
    Height = 31
    Caption = ' '#1090#1080#1087' '
    ItemIndex = 0
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = #1074#1089#1077
      end
      item
        Caption = #1040
      end
      item
        Caption = #1041
      end>
    TabOrder = 42
  end
end
