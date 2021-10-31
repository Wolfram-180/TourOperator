object FZaiavki: TFZaiavki
  Left = 346
  Top = 257
  BorderStyle = bsToolWindow
  Caption = #1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 561
  ClientWidth = 973
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
  object Label15: TLabel
    Left = 546
    Top = 525
    Width = 26
    Height = 13
    Caption = #1052#1077#1089#1090
  end
  object Label11: TLabel
    Left = 546
    Top = 489
    Width = 65
    Height = 13
    Caption = #1044#1072#1090#1072' '#1079#1072#1077#1079#1076#1072
  end
  object Label13: TLabel
    Left = 656
    Top = 489
    Width = 67
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1077#1079#1076#1072
  end
  object NestPG: TcxPageControl
    Left = 0
    Top = 0
    Width = 973
    Height = 561
    ActivePage = cxTabSheet1
    Align = alTop
    TabOrder = 0
    ClientRectBottom = 561
    ClientRectRight = 973
    ClientRectTop = 23
    object cxTabSheet1: TcxTabSheet
      Caption = #1040#1074#1090#1086#1073#1091#1089#1099
      Color = 16708843
      ImageIndex = 0
      object cb1: TcxComboBox
        Left = 1
        Top = 472
        Width = 164
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.Sorted = True
        Properties.OnChange = cb1PropertiesChange
        Style.Shadow = False
        TabOrder = 0
        OnMouseDown = cb1MouseDown
      end
      object cb2: TcxComboBox
        Left = 1
        Top = 505
        Width = 164
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.Sorted = True
        Properties.OnChange = cb2PropertiesChange
        Style.Shadow = False
        TabOrder = 1
        OnMouseDown = cb2MouseDown
      end
      object tr2: TdxDBTreeList
        Left = 532
        Top = 0
        Width = 441
        Height = 457
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'id'
        ParentField = 'p'
        Enabled = False
        TabOrder = 2
        OnMouseDown = tr2MouseDown
        DataSource = ds2
        IniFileName = 'grids.ini'
        IniSectionName = 'avt_per_z'
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoStoreToIniFile, etoTabThrough]
        RootValue = '-1'
        TreeLineColor = clGrayText
        object tr2d1: TdxDBTreeListDateColumn
          Alignment = taLeftJustify
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1079#1072#1077#1079#1076#1072
          Sorted = csDown
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'd1'
        end
        object tr2per: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1077#1088#1080#1086#1076
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'per'
        end
        object tr2kat: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1085#1086#1084#1077#1088#1072
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kat'
        end
        object tr2n: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1085#1086#1084#1077#1088#1072
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'n'
        end
        object tr2nz: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1079#1072#1103#1074#1082#1080
          Width = 28
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nz'
        end
        object tr2kmo: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #1050#1052#1054
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kmo'
        end
        object tr2kmd: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #1050#1052#1044
          Width = 29
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kmd'
        end
        object tr2komf: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1059#1076#1086#1073#1089#1090#1074#1072
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'komf'
        end
      end
      object tr1: TdxDBTreeList
        Left = 1
        Top = 0
        Width = 530
        Height = 457
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'id'
        ParentField = 'p'
        Enabled = False
        TabOrder = 3
        OnMouseDown = tr1MouseDown
        DataSource = ds3
        IniFileName = 'grids.ini'
        IniSectionName = 'avt_z'
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoStoreToIniFile, etoTabThrough]
        RootValue = '-1'
        TreeLineColor = clGrayText
        object ColumnD_Nach: TdxDBTreeListColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1079#1072#1077#1079#1076#1072
          Sorted = csDown
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'd_nach'
        end
        object tr1per: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1077#1088#1080#1086#1076
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'per'
        end
        object tr1nz: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1079#1072#1103#1074#1082#1080
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nz'
        end
        object tr1f: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1060#1072#1084#1080#1083#1080#1103
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'f'
        end
        object ColumnSPO: TdxDBTreeListColumn
          Caption = 'SPO'
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'spo'
        end
        object ColumnBez_pr: TdxDBTreeListColumn
          Caption = #1041#1077#1079' '#1087#1088#1086#1077#1079#1076#1072
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'bez_pr'
        end
        object ColumnPods: TdxDBTreeListColumn
          Caption = #1055
          Width = 22
          BandIndex = 0
          RowIndex = 0
          FieldName = 'pod_y_n'
        end
        object StoimColumn: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'stoim'
        end
        object ColumnDataPodtv: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1044#1072#1090#1072' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'data_podtv'
        end
        object ColumnPodtv: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1086
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'podtv'
        end
        object ColumnOplata: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1054#1087#1083#1072#1090#1072
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'oplata'
        end
        object ColumnOplacheno: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1054#1087#1083#1072#1095#1077#1085#1086
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'oplacheno'
        end
        object tr1Column12: TdxDBTreeListColumn
          Caption = #1040#1075#1077#1085#1090#1089#1090#1074#1086
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'agentcol'
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1041#1083#1086#1082#1080
      Color = 15134950
      ImageIndex = 1
      object tr3: TdxDBTreeList
        Left = 1
        Top = 0
        Width = 530
        Height = 457
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'id'
        ParentField = 'p'
        Enabled = False
        TabOrder = 0
        OnMouseDown = tr3MouseDown
        DataSource = ds5
        IniFileName = 'grids.ini'
        IniSectionName = 'blok_z'
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoStoreToIniFile, etoTabThrough]
        RootValue = '-1'
        TreeLineColor = clGrayText
        object tr3Column12: TdxDBTreeListColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          BandIndex = 0
          RowIndex = 0
          FieldName = 'd_nach'
        end
        object dxDBTreeListColumn1: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1077#1088#1080#1086#1076
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'per'
        end
        object dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1079#1072#1103#1074#1082#1080
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nz'
        end
        object dxDBTreeListColumn2: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1060#1072#1084#1080#1083#1080#1103
          Sorted = csUp
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'f'
        end
        object dxDBTreeListColumn12: TdxDBTreeListColumn
          Caption = 'SPO'
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'spo'
        end
        object dxDBTreeListColumn23: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'stoim'
        end
        object dxDBTreeListColumn24: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1044#1072#1090#1072' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'data_podtv'
        end
        object dxDBTreeListColumn25: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1086
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'podtv'
        end
        object dxDBTreeListColumn26: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1054#1087#1083#1072#1090#1072
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'oplata'
        end
        object dxDBTreeListColumn27: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1054#1087#1083#1072#1095#1077#1085#1086
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'oplacheno'
        end
        object tr3Column11: TdxDBTreeListColumn
          Caption = #1040#1075#1077#1085#1090#1089#1090#1074#1086
          BandIndex = 0
          RowIndex = 0
          FieldName = 'agentcol'
        end
      end
      object tr4: TdxDBTreeList
        Left = 532
        Top = 0
        Width = 441
        Height = 457
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'id'
        ParentField = 'p'
        Enabled = False
        TabOrder = 1
        OnMouseDown = tr4MouseDown
        DataSource = ds6
        IniFileName = 'grids.ini'
        IniSectionName = 'blok_nom_sp'
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoStoreToIniFile, etoTabThrough]
        RootValue = '-1'
        TreeLineColor = clGrayText
        object tr4Column8: TdxDBTreeListColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          Sorted = csUp
          BandIndex = 0
          RowIndex = 0
          FieldName = 'd1'
        end
        object dxDBTreeListColumn28: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1077#1088#1080#1086#1076
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'per'
        end
        object dxDBTreeListColumn29: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1085#1086#1084#1077#1088#1072
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kat'
        end
        object dxDBTreeListMaskColumn22: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1085#1086#1084#1077#1088#1072
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'n'
        end
        object dxDBTreeListMaskColumn23: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1079#1072#1103#1074#1082#1080
          Width = 28
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nz'
        end
        object dxDBTreeListMaskColumn24: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #1050#1052#1054
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kmo'
        end
        object dxDBTreeListMaskColumn25: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #1050#1052#1044
          Width = 29
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kmd'
        end
        object dxDBTreeListColumn30: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1059#1076#1086#1073#1089#1090#1074#1072
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'komf'
        end
        object ColumnN_ID: TdxDBTreeListColumn
          Caption = 'N_ID'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'n_id'
        end
      end
      object cb3: TcxComboBox
        Left = 1
        Top = 472
        Width = 164
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.Sorted = True
        Properties.OnChange = cb3PropertiesChange
        Style.Shadow = False
        TabOrder = 2
        OnMouseDown = cb3MouseDown
      end
      object cb4: TcxComboBox
        Left = 1
        Top = 505
        Width = 164
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.Sorted = True
        Properties.OnChange = cb4PropertiesChange
        Style.Shadow = False
        TabOrder = 3
        OnMouseDown = cb4MouseDown
      end
      object cxLabel1: TcxLabel
        Left = 532
        Top = 458
        Width = 69
        Height = 17
        Caption = #1044#1072#1090#1072' '#1079#1072#1077#1079#1076#1072
        Properties.Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 625
        Top = 458
        Width = 71
        Height = 17
        Caption = #1044#1072#1090#1072' '#1074#1099#1077#1079#1076#1072
        Properties.Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 712
        Top = 458
        Width = 60
        Height = 17
        Caption = #1052#1077#1089#1090' ('#1086#1089#1085'.)'
        Properties.Transparent = True
      end
      object de1: TcxDateEdit
        Left = 533
        Top = 473
        Width = 92
        Height = 21
        EditValue = '01.01.1900'
        Properties.InputKind = ikMask
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnChange = de1PropertiesChange
        TabOrder = 4
      end
      object de2: TcxDateEdit
        Left = 624
        Top = 473
        Width = 89
        Height = 21
        EditValue = '01.01.1900'
        Properties.InputKind = ikMask
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 5
      end
      object cb6: TcxComboBox
        Left = 712
        Top = 473
        Width = 62
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
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
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30')
        Properties.ReadOnly = False
        TabOrder = 6
        Text = '2'
      end
      object b4: TcxButton
        Left = 534
        Top = 494
        Width = 300
        Height = 21
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
        Enabled = False
        TabOrder = 7
        OnClick = b4Click
        LookAndFeel.Kind = lfUltraFlat
      end
      object b5: TcxButton
        Left = 534
        Top = 516
        Width = 300
        Height = 21
        Caption = #1054#1090#1095#1077#1090
        Enabled = False
        TabOrder = 11
        Visible = False
        OnClick = b5Click
        LookAndFeel.Kind = lfUltraFlat
      end
      object cxLabel4: TcxLabel
        Left = 773
        Top = 458
        Width = 60
        Height = 17
        Caption = #1052#1077#1089#1090' ('#1076#1086#1087'.)'
        Properties.Transparent = True
      end
      object cb7: TcxComboBox
        Left = 773
        Top = 473
        Width = 62
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
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
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30')
        Properties.ReadOnly = False
        TabOrder = 13
        Text = '0'
      end
      object rg1: TcxRadioGroup
        Left = 834
        Top = 468
        Width = 114
        Height = 70
        Caption = ' '#1086#1087#1094#1080#1080' '#1086#1090#1095#1077#1090#1072' '
        ItemIndex = 1
        Properties.Items = <
          item
            Caption = #1087#1086' '#1074#1089#1077#1084' '#1084#1077#1089#1090#1072#1084
          end
          item
            Caption = #1087#1086' '#1089#1074#1086#1073#1086#1076#1085#1099#1084
          end
          item
            Caption = #1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1099#1084
          end>
        TabOrder = 14
        Visible = False
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1053#1077#1089#1090#1072#1085#1076#1072#1088#1090
      Color = 15592958
      ImageIndex = 2
      object tr5: TdxDBTreeList
        Left = 1
        Top = 0
        Width = 530
        Height = 457
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'id'
        ParentField = 'p'
        Enabled = False
        TabOrder = 0
        OnMouseDown = tr5MouseDown
        DataSource = ds7
        IniFileName = 'grids.ini'
        IniSectionName = 'nest_gr_2'
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoStoreToIniFile, etoTabThrough]
        RootValue = '-1'
        TreeLineColor = clGrayText
        object dxDBTreeListColumn3: TdxDBTreeListColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          BandIndex = 0
          RowIndex = 0
          FieldName = 'd_nach'
        end
        object dxDBTreeListColumn4: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1077#1088#1080#1086#1076
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'per'
        end
        object tr5Column12: TdxDBTreeListColumn
          Caption = #1058#1080#1087
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nest_tip'
        end
        object dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1079#1072#1103#1074#1082#1080
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nz'
        end
        object dxDBTreeListColumn5: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1060#1072#1084#1080#1083#1080#1103
          Sorted = csUp
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'f'
        end
        object dxDBTreeListColumn7: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'stoim'
        end
        object dxDBTreeListColumn8: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1044#1072#1090#1072' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'data_podtv'
        end
        object dxDBTreeListColumn9: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1086
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'podtv'
        end
        object dxDBTreeListColumn10: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1054#1087#1083#1072#1090#1072
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'oplata'
        end
        object dxDBTreeListColumn11: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1054#1087#1083#1072#1095#1077#1085#1086
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'oplacheno'
        end
        object dxDBTreeListColumn13: TdxDBTreeListColumn
          Caption = #1040#1075#1077#1085#1090#1089#1090#1074#1086
          BandIndex = 0
          RowIndex = 0
          FieldName = 'agentcol'
        end
        object dxDBTreeListColumn6: TdxDBTreeListColumn
          Caption = 'SPO'
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'spo'
        end
      end
      object tr6: TdxDBTreeList
        Left = 532
        Top = 0
        Width = 441
        Height = 457
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'id'
        ParentField = 'p'
        Enabled = False
        TabOrder = 1
        OnClick = tr6Click
        OnMouseDown = tr6MouseDown
        DataSource = ds8
        IniFileName = 'grids.ini'
        IniSectionName = 'nest_gr_222'
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoImmediateEditor, etoStoreToIniFile, etoTabThrough]
        RootValue = '-1'
        TreeLineColor = clGrayText
        object dxDBTreeListColumn14: TdxDBTreeListColumn
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
          Sorted = csUp
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'd1'
        end
        object dxDBTreeListColumn16: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1085#1086#1084#1077#1088#1072
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kat'
        end
        object dxDBTreeListColumn15: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1058#1080#1087
          Visible = False
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'per'
        end
        object dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1085#1086#1084#1077#1088#1072
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'n'
        end
        object dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #8470' '#1079#1072#1103#1074#1082#1080
          Width = 50
          BandIndex = 0
          RowIndex = 0
          FieldName = 'nz'
        end
        object dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #1050#1052#1054
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kmo'
        end
        object dxDBTreeListMaskColumn6: TdxDBTreeListMaskColumn
          Alignment = taLeftJustify
          Caption = #1050#1052#1044
          Width = 36
          BandIndex = 0
          RowIndex = 0
          FieldName = 'kmd'
        end
        object dxDBTreeListColumn17: TdxDBTreeListColumn
          Alignment = taLeftJustify
          Caption = #1059#1076#1086#1073#1089#1090#1074#1072
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'komf'
        end
        object dxDBTreeListColumn18: TdxDBTreeListColumn
          Caption = 'N_ID'
          Width = 31
          BandIndex = 0
          RowIndex = 0
          FieldName = 'n_id'
        end
      end
      object cb8: TcxComboBox
        Left = 1
        Top = 472
        Width = 164
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.Sorted = True
        Properties.OnChange = cb8PropertiesChange
        Style.Shadow = False
        TabOrder = 2
        OnMouseDown = cb8MouseDown
      end
      object cb9: TcxComboBox
        Left = 1
        Top = 505
        Width = 164
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.Sorted = True
        Properties.OnChange = cb9PropertiesChange
        Style.Shadow = False
        TabOrder = 3
        OnMouseDown = cb9MouseDown
      end
      object cb10: TcxComboBox
        Left = 712
        Top = 473
        Width = 114
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.Items.Strings = (
          #1072#1074#1090#1086#1073#1091#1089#1085#1099#1077
          #1073#1083#1086#1095#1085#1099#1077
          #1074#1089#1077)
        Properties.ReadOnly = False
        Properties.OnChange = cb10PropertiesChange
        TabOrder = 4
        Text = #1074#1089#1077
      end
      object b15: TcxButton
        Left = 656
        Top = 494
        Width = 169
        Height = 33
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
        Enabled = False
        TabOrder = 5
        OnClick = b15Click
        LookAndFeel.Kind = lfUltraFlat
      end
      object cb11: TcxComboBox
        Left = 533
        Top = 473
        Width = 92
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.ReadOnly = False
        Properties.OnChange = cb11PropertiesChange
        TabOrder = 6
      end
      object cb12: TcxComboBox
        Left = 624
        Top = 473
        Width = 89
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.ReadOnly = False
        Properties.OnChange = cb12PropertiesChange
        TabOrder = 7
      end
      object cxLabel5: TcxLabel
        Left = 533
        Top = 492
        Width = 60
        Height = 17
        Caption = #1052#1077#1089#1090' ('#1086#1089#1085'.)'
        Properties.Transparent = True
      end
      object cb14: TcxComboBox
        Left = 533
        Top = 507
        Width = 62
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
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
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30')
        Properties.ReadOnly = False
        TabOrder = 9
        Text = '2'
      end
      object cxLabel6: TcxLabel
        Left = 594
        Top = 492
        Width = 60
        Height = 17
        Caption = #1052#1077#1089#1090' ('#1076#1086#1087'.)'
        Properties.Transparent = True
      end
      object cb15: TcxComboBox
        Left = 594
        Top = 507
        Width = 62
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
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
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30')
        Properties.ReadOnly = False
        TabOrder = 11
        Text = '0'
      end
      object cxLabel7: TcxLabel
        Left = 532
        Top = 458
        Width = 69
        Height = 17
        Caption = #1044#1072#1090#1072' '#1079#1072#1077#1079#1076#1072
        Properties.Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 625
        Top = 458
        Width = 71
        Height = 17
        Caption = #1044#1072#1090#1072' '#1074#1099#1077#1079#1076#1072
        Properties.Transparent = True
      end
    end
  end
  object q1: TADOQuery
    Connection = DM.ac
    Parameters = <>
    Left = 40
    Top = 415
  end
  object q2: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,d.kat from bloki a left join kat d on a.C_kat = d.cod' +
        'eid where a.a_b='#39#1040#1074#1090'.'#39' and c_gost=160')
    Left = 544
    Top = 47
  end
  object ds2: TDataSource
    DataSet = q2
    Left = 575
    Top = 47
  end
  object q3: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    OnCalcFields = q3CalcFields
    Parameters = <>
    SQL.Strings = (
      
        'select tip,p,id,id_gost,id_ag,per,nz,stoim,spo,oplacheno,oplata,' +
        'f,bez_pr,data_podtv,podtv from clients where id_gost=111')
    Left = 8
    Top = 47
    object q3agentcol: TStringField
      FieldKind = fkLookup
      FieldName = 'agentcol'
      LookupDataSet = DM.AgentQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Naimen'
      KeyFields = 'id_ag'
      Lookup = True
    end
    object q3d_nach: TDateField
      FieldKind = fkCalculated
      FieldName = 'd_nach'
      Calculated = True
    end
    object q3pod_y_n: TStringField
      FieldKind = fkCalculated
      FieldName = 'pod_y_n'
      Size = 4
      Calculated = True
    end
    object q3id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object q3id_gost: TIntegerField
      FieldName = 'id_gost'
    end
    object q3id_ag: TIntegerField
      FieldName = 'id_ag'
    end
    object q3per: TWideStringField
      FieldName = 'per'
      Size = 50
    end
    object q3nz: TIntegerField
      FieldName = 'nz'
    end
    object q3stoim: TBCDField
      FieldName = 'stoim'
      Precision = 19
    end
    object q3spo: TWideStringField
      FieldName = 'spo'
    end
    object q3oplacheno: TBCDField
      FieldName = 'oplacheno'
      Precision = 19
    end
    object q3oplata: TWideStringField
      FieldName = 'oplata'
      Size = 50
    end
    object q3f: TWideStringField
      FieldName = 'f'
      Size = 100
    end
    object q3bez_pr: TWideStringField
      FieldName = 'bez_pr'
      Size = 5
    end
    object q3data_podtv: TDateTimeField
      FieldName = 'data_podtv'
    end
    object q3podtv: TWideStringField
      FieldName = 'podtv'
      Size = 50
    end
    object q3p: TIntegerField
      FieldName = 'p'
    end
    object q3tip: TIntegerField
      FieldName = 'tip'
    end
  end
  object ds3: TDataSource
    DataSet = q3
    Left = 39
    Top = 47
  end
  object pm1: TPopupMenu
    Left = 552
    Top = 287
    object N1: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
      OnClick = N1Click
    end
  end
  object q4: TADOQuery
    Connection = DM.ac
    Parameters = <>
    Left = 8
    Top = 415
  end
  object pm2: TPopupMenu
    Left = 480
    Top = 287
    object N3: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
      OnClick = N3Click
    end
    object N5: TMenuItem
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
      OnClick = N5Click
    end
    object N4: TMenuItem
      Caption = #1042#1072#1091#1095#1077#1088
      OnClick = N4Click
    end
    object N8: TMenuItem
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1089#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      Visible = False
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099
      OnClick = N9Click
    end
  end
  object q5: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    OnCalcFields = q5CalcFields
    Parameters = <>
    SQL.Strings = (
      
        'select tip,p,id,id_gost,id_ag,per,nz,stoim,spo,oplacheno,oplata,' +
        'f,bez_pr,data_podtv,podtv from clients where id_gost=111')
    Left = 40
    Top = 119
    object q5d_nach: TDateField
      FieldKind = fkCalculated
      FieldName = 'd_nach'
      Calculated = True
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'agentcol'
      LookupDataSet = DM.AgentQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Naimen'
      KeyFields = 'id_ag'
      Lookup = True
    end
    object q5tip: TIntegerField
      FieldName = 'tip'
    end
    object q5p: TIntegerField
      FieldName = 'p'
    end
    object q5id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object q5id_gost: TIntegerField
      FieldName = 'id_gost'
    end
    object q5id_ag: TIntegerField
      FieldName = 'id_ag'
    end
    object q5per: TWideStringField
      FieldName = 'per'
      Size = 50
    end
    object q5nz: TIntegerField
      FieldName = 'nz'
    end
    object q5stoim: TBCDField
      FieldName = 'stoim'
      Precision = 19
    end
    object q5spo: TWideStringField
      FieldName = 'spo'
    end
    object q5oplacheno: TBCDField
      FieldName = 'oplacheno'
      Precision = 19
    end
    object q5oplata: TWideStringField
      FieldName = 'oplata'
      Size = 50
    end
    object q5f: TWideStringField
      FieldName = 'f'
      Size = 100
    end
    object q5bez_pr: TWideStringField
      FieldName = 'bez_pr'
      Size = 5
    end
    object q5data_podtv: TDateTimeField
      FieldName = 'data_podtv'
    end
    object q5podtv: TWideStringField
      FieldName = 'podtv'
      Size = 50
    end
  end
  object ds5: TDataSource
    DataSet = q5
    Left = 71
    Top = 119
  end
  object q6: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,d.kat from bloki a left join kat d on a.C_kat = d.cod' +
        'eid where a.a_b='#39#1040#1074#1090'.'#39' and c_gost=160')
    Left = 576
    Top = 119
  end
  object ds6: TDataSource
    DataSet = q6
    Left = 607
    Top = 119
  end
  object pm3: TPopupMenu
    Left = 552
    Top = 343
    object MenuItem1: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
      OnClick = MenuItem1Click
    end
  end
  object pm4: TPopupMenu
    Left = 480
    Top = 343
    object MenuItem3: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
      OnClick = MenuItem3Click
    end
    object N2: TMenuItem
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
      OnClick = N2Click
    end
    object N6: TMenuItem
      Caption = #1042#1072#1091#1095#1077#1088
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1089#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      Visible = False
      OnClick = N7Click
    end
    object N10: TMenuItem
      Caption = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099
      OnClick = N10Click
    end
  end
  object q7: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    OnCalcFields = q7CalcFields
    Parameters = <>
    SQL.Strings = (
      
        'select nest_tip,tip,p,id,id_gost,id_ag,per,nz,stoim,spo,oplachen' +
        'o,oplata,f,bez_pr,data_podtv,podtv from clients where id_gost=11' +
        '1')
    Left = 80
    Top = 191
    object DateField1: TDateField
      FieldKind = fkCalculated
      FieldName = 'd_nach'
      Calculated = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'agentcol'
      LookupDataSet = DM.AgentQ
      LookupKeyFields = 'Codeid'
      LookupResultField = 'Naimen'
      KeyFields = 'id_ag'
      Lookup = True
    end
    object q7tip: TIntegerField
      FieldName = 'tip'
    end
    object q7p: TIntegerField
      FieldName = 'p'
    end
    object q7id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object q7id_gost: TIntegerField
      FieldName = 'id_gost'
    end
    object q7id_ag: TIntegerField
      FieldName = 'id_ag'
    end
    object q7per: TWideStringField
      FieldName = 'per'
      Size = 50
    end
    object q7nz: TIntegerField
      FieldName = 'nz'
    end
    object q7stoim: TBCDField
      FieldName = 'stoim'
      Precision = 19
    end
    object q7spo: TWideStringField
      FieldName = 'spo'
    end
    object q7oplacheno: TBCDField
      FieldName = 'oplacheno'
      Precision = 19
    end
    object q7oplata: TWideStringField
      FieldName = 'oplata'
      Size = 50
    end
    object q7f: TWideStringField
      FieldName = 'f'
      Size = 100
    end
    object q7bez_pr: TWideStringField
      FieldName = 'bez_pr'
      Size = 5
    end
    object q7data_podtv: TDateTimeField
      FieldName = 'data_podtv'
    end
    object q7podtv: TWideStringField
      FieldName = 'podtv'
      Size = 50
    end
    object q7nest_tip: TWideStringField
      FieldName = 'nest_tip'
      Size = 1
    end
  end
  object ds7: TDataSource
    DataSet = q7
    Left = 111
    Top = 191
  end
  object q8: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.*,d.kat from bloki a left join kat d on a.C_kat = d.cod' +
        'eid where a.a_b='#39#1040#1074#1090'.'#39' and c_gost=160')
    Left = 584
    Top = 183
  end
  object ds8: TDataSource
    DataSet = q8
    Left = 615
    Top = 183
  end
  object pm6: TPopupMenu
    Left = 480
    Top = 399
    object MenuItem2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
      OnClick = MenuItem2Click
    end
    object MenuItem4: TMenuItem
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = #1042#1072#1091#1095#1077#1088
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1089#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      Visible = False
      OnClick = N7Click
    end
    object N11: TMenuItem
      Caption = #1042#1074#1086#1076' '#1086#1087#1083#1072#1090#1099
      OnClick = N11Click
    end
  end
  object pm5: TPopupMenu
    Left = 552
    Top = 399
    object MenuItem7: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
      OnClick = MenuItem7Click
    end
  end
end
