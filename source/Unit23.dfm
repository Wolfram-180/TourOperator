object FGostinMain: TFGostinMain
  Left = 50
  Top = 98
  BorderStyle = bsToolWindow
  Caption = #1054#1073#1098#1077#1082#1090#1099
  ClientHeight = 585
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 875
    Height = 689
    ActivePage = cxTabSheet1
    TabOrder = 0
    ClientRectBottom = 689
    ClientRectRight = 875
    ClientRectTop = 23
    object cxTabSheet1: TcxTabSheet
      Caption = #1054#1073#1097#1077#1077' '#1086#1087#1080#1089#1072#1085#1080#1077
      ImageIndex = 0
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 1
        Width = 872
        Height = 536
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Codeid'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 0
        OnDblClick = dxDBGrid1DblClick
        DataSource = ds1
        Filter.Criteria = {00000000}
        GroupNodeTextColor = 13092862
        IniFileName = 'grids.ini'
        IniSectionName = 'gostindb'
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        OnCustomDrawCell = dxDBGrid1CustomDrawCell
        object dxDBGrid1r: TdxDBGridLookupColumn
          Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
          Sorted = csDown
          Width = 175
          BandIndex = 0
          RowIndex = 0
          FieldName = 'podregn'
        end
        object dxDBGrid1Nazvanie: TdxDBGridMaskColumn
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 111
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Nazvanie'
        end
        object dxDBGrid1Dogovor: TdxDBGridMaskColumn
          Caption = #1044#1086#1075#1086#1074#1086#1088
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Dogovor'
        end
        object dxDBGrid1Adres: TdxDBGridMaskColumn
          Caption = #1040#1076#1088#1077#1089
          Width = 129
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Adres'
        end
        object dxDBGrid1Prim: TdxDBGridMaskColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Visible = False
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Prim'
        end
        object dxDBGrid1Napr: TdxDBGridColumn
          Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Napr'
        end
        object ColumnList: TdxDBGridColumn
          Caption = #1051#1080#1089#1090
          Visible = False
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'list'
        end
        object ColumnPR: TdxDBGridColumn
          Caption = #1055#1088#1086#1077#1079#1076
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'pr'
        end
        object id: TdxDBGridColumn
          Caption = #1050#1086#1076
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Codeid'
        end
        object gridrchb: TdxDBGridColumn
          Caption = #1056#1063#1041
          Width = 26
          BandIndex = 0
          RowIndex = 0
          FieldName = 'rchb'
        end
        object gridrchz: TdxDBGridColumn
          Caption = #1056#1063#1040
          Width = 25
          BandIndex = 0
          RowIndex = 0
          FieldName = 'rchz'
        end
        object ColumnGraf_a: TdxDBGridColumn
          Caption = #1062#1077#1087#1086#1095#1082#1072' '#1040
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'graf'
        end
        object ColumnGraf_b: TdxDBGridColumn
          Caption = #1062#1077#1087#1086#1095#1082#1072' '#1041
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'graf_b'
        end
        object ColumnNDT: TdxDBGridColumn
          Caption = '2'#1077' '#1074#1088#1077#1084#1103
          Visible = False
          Width = 35
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ndt'
        end
        object ColumnExk: TdxDBGridColumn
          Caption = #1069#1082#1089#1082#1091#1088#1089#1080#1086#1085#1082#1072
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'exk'
        end
      end
      object dz: TcxButton
        Left = 0
        Top = 538
        Width = 290
        Height = 21
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 1
        OnClick = dzClick
      end
      object iz: TcxButton
        Left = 291
        Top = 538
        Width = 290
        Height = 21
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 2
        OnClick = izClick
      end
      object uz: TcxButton
        Left = 582
        Top = 538
        Width = 290
        Height = 21
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 3
        OnClick = uzClick
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1053#1086#1084#1077#1088#1072' '#1080' '#1087#1080#1090#1072#1085#1080#1077
      Color = 12774332
      ImageIndex = 1
      OnShow = cxTabSheet2Show
      object Label1: TLabel
        Left = 3
        Top = 32
        Width = 50
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      end
      object Label9: TLabel
        Left = 3
        Top = -1
        Width = 55
        Height = 13
        Caption = #1055#1086#1076#1088#1077#1075#1080#1086#1085
      end
      object cxGroupBox1: TcxGroupBox
        Left = 213
        Top = -1
        Width = 660
        Height = 102
        Caption = ' '#1055#1080#1090#1072#1085#1080#1077' '
        TabOrder = 5
        object Label4: TLabel
          Left = 4
          Top = 15
          Width = 99
          Height = 13
          Caption = #1042#1080#1076#1099' '#1087#1080#1090#1072#1085#1080#1103' '#1074' '#1041#1044
        end
        object Label5: TLabel
          Left = 327
          Top = 15
          Width = 52
          Height = 13
          Caption = #1042' '#1086#1073#1098#1077#1082#1090#1077
        end
        object cb3: TcxCheckBox
          Left = 386
          Top = 11
          Width = 86
          Height = 21
          Caption = #1074#1082#1083#1102#1095#1077#1085#1085#1086#1077
          Properties.OnChange = cb3PropertiesChange
          TabOrder = 0
        end
        object lb3: TcxListBox
          Left = 2
          Top = 27
          Width = 295
          Height = 73
          Columns = 2
          ItemHeight = 13
          TabOrder = 1
        end
        object b4: TcxButton
          Left = 297
          Top = 28
          Width = 29
          Height = 35
          Caption = '->'
          TabOrder = 2
          OnClick = b4Click
        end
        object b5: TcxButton
          Left = 297
          Top = 64
          Width = 29
          Height = 35
          Caption = '<-'
          TabOrder = 3
          OnClick = b5Click
        end
        object lb4: TcxListBox
          Left = 326
          Top = 27
          Width = 332
          Height = 73
          Columns = 2
          ItemHeight = 13
          TabOrder = 4
          OnClick = lb4Click
        end
      end
      object cb1: TcxComboBox
        Left = 0
        Top = 12
        Width = 214
        Height = 21
        Properties.DropDownRows = 15
        Properties.OnChange = cb1PropertiesChange
        TabOrder = 0
        OnMouseDown = cb1MouseDown
      end
      object cb2: TcxComboBox
        Left = 0
        Top = 44
        Width = 173
        Height = 21
        Properties.DropDownRows = 15
        Properties.OnChange = cb2PropertiesChange
        TabOrder = 1
        OnMouseDown = cb2MouseDown
      end
      object cxButton4: TcxButton
        Left = 449
        Top = 345
        Width = 32
        Height = 88
        Caption = '->'
        TabOrder = 2
      end
      object cxButton5: TcxButton
        Left = 449
        Top = 434
        Width = 32
        Height = 88
        Caption = '<-'
        TabOrder = 3
      end
      object c1: TcxCheckBox
        Left = 596
        Top = 326
        Width = 81
        Height = 21
        Caption = #1076#1086#1087'. '#1084#1077#1089#1090#1086
        TabOrder = 4
        OnClick = c1Click
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 100
        Width = 874
        Height = 461
        Caption = ' '#1053#1086#1084#1077#1088#1072' '
        ParentColor = False
        Style.Color = 12774332
        TabOrder = 6
        object Label2: TLabel
          Left = 5
          Top = 15
          Width = 94
          Height = 13
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1085#1086#1084#1077#1088#1072
        end
        object Label13: TLabel
          Left = 167
          Top = 15
          Width = 98
          Height = 13
          Caption = #1042#1080#1076#1099' '#1091#1076#1086#1073#1089#1090#1074' '#1074' '#1041#1044
        end
        object Label14: TLabel
          Left = 346
          Top = 15
          Width = 48
          Height = 13
          Caption = #1042' '#1085#1086#1084#1077#1088#1077
        end
        object Label15: TLabel
          Left = 690
          Top = 15
          Width = 50
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object Label16: TLabel
          Left = 688
          Top = 122
          Width = 102
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' ('#1089#1082#1088#1099#1090#1086#1077')'
        end
        object Label17: TLabel
          Left = 592
          Top = 15
          Width = 50
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object Label21: TLabel
          Left = 5
          Top = 234
          Width = 81
          Height = 13
          Caption = #1053#1086#1084#1077#1088#1085#1086#1081' '#1092#1086#1085#1076
        end
        object Label18: TLabel
          Left = 592
          Top = 51
          Width = 50
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object Label19: TLabel
          Left = 592
          Top = 88
          Width = 50
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object Label20: TLabel
          Left = 538
          Top = 132
          Width = 116
          Height = 13
          Caption = #1076#1086#1073#1072#1074#1083#1103#1077#1084#1099#1093' '#1085#1086#1084#1077#1088#1086#1074
        end
        object lb1: TcxListBox
          Left = 2
          Top = 27
          Width = 162
          Height = 179
          ItemHeight = 13
          TabOrder = 0
        end
        object lb5: TcxListBox
          Left = 163
          Top = 27
          Width = 162
          Height = 179
          ItemHeight = 13
          TabOrder = 1
        end
        object cxButton11: TcxButton
          Left = 325
          Top = 28
          Width = 16
          Height = 88
          Caption = '->'
          TabOrder = 2
          OnClick = cxButton11Click
        end
        object cxButton12: TcxButton
          Left = 325
          Top = 117
          Width = 16
          Height = 88
          Caption = '<-'
          TabOrder = 3
          OnClick = cxButton12Click
        end
        object lb6: TcxListBox
          Left = 341
          Top = 27
          Width = 162
          Height = 179
          ItemHeight = 13
          TabOrder = 4
        end
        object m1: TcxMemo
          Left = 686
          Top = 27
          Width = 186
          Height = 94
          TabOrder = 5
        end
        object m2: TcxMemo
          Left = 686
          Top = 135
          Width = 186
          Height = 71
          TabOrder = 6
        end
        object c4: TcxCheckBox
          Left = 500
          Top = 28
          Width = 89
          Height = 21
          Caption = #1076#1086#1087'. '#1084#1077#1089#1090#1086' 1'
          StyleDisabled.BorderColor = clWhite
          StyleDisabled.Color = 8771449
          TabOrder = 7
          OnClick = c4Click
        end
        object t1: TcxTextEdit
          Left = 590
          Top = 27
          Width = 97
          Height = 21
          Enabled = False
          StyleDisabled.Color = clWhite
          TabOrder = 8
        end
        object bins: TcxButton
          Left = 3
          Top = 206
          Width = 321
          Height = 26
          Caption = #1076#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 9
          OnClick = binsClick
        end
        object cxButton14: TcxButton
          Left = 504
          Top = 206
          Width = 183
          Height = 26
          Caption = #1086#1073#1085#1086#1074#1080#1090#1100
          TabOrder = 10
          OnClick = cxButton14Click
        end
        object cxButton15: TcxButton
          Left = 325
          Top = 206
          Width = 178
          Height = 26
          Caption = #1091#1076#1072#1083#1080#1090#1100
          TabOrder = 11
          OnClick = cxButton15Click
        end
        object t2: TcxTextEdit
          Left = 590
          Top = 63
          Width = 97
          Height = 21
          Enabled = False
          StyleDisabled.Color = clWhite
          TabOrder = 12
        end
        object c5: TcxCheckBox
          Left = 500
          Top = 64
          Width = 89
          Height = 21
          Caption = #1076#1086#1087'. '#1084#1077#1089#1090#1086' 2'
          Enabled = False
          StyleDisabled.BorderColor = clWhite
          StyleDisabled.Color = 12774332
          TabOrder = 13
          OnClick = c5Click
        end
        object t3: TcxTextEdit
          Left = 590
          Top = 100
          Width = 97
          Height = 21
          Enabled = False
          StyleDisabled.Color = clWhite
          TabOrder = 14
        end
        object c6: TcxCheckBox
          Left = 500
          Top = 100
          Width = 89
          Height = 21
          Caption = #1076#1086#1087'. '#1084#1077#1089#1090#1086' 3'
          Enabled = False
          StyleDisabled.BorderColor = clWhite
          StyleDisabled.Color = 12774332
          TabOrder = 15
          OnClick = c6Click
        end
        object se1: TcxSpinEdit
          Left = 570
          Top = 146
          Width = 49
          Height = 21
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 1.000000000000000000
          TabOrder = 16
          Value = 1
        end
        object cxButton16: TcxButton
          Left = 688
          Top = 206
          Width = 183
          Height = 26
          Caption = #1080#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 17
          Visible = False
          OnClick = cxButton16Click
        end
        object tree: TdxDBTreeList
          Left = 3
          Top = 248
          Width = 867
          Height = 209
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'codeid'
          ParentField = 'p'
          TabOrder = 18
          OnClick = treeClick
          DataSource = ds2
          ImageIndexFieldName = 'tip'
          Images = IL
          LookAndFeel = lfUltraFlat
          PreviewFieldName = 'codeid'
          RootValue = '-1'
          SelectedIndex = 1
          TreeLineColor = clGradientActiveCaption
          OnGetStateIndex = treeGetStateIndex
          object treecodeid: TdxDBTreeListMaskColumn
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'codeid'
          end
          object treec_gost: TdxDBTreeListMaskColumn
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'c_gost'
          end
          object treec_kat: TdxDBTreeListMaskColumn
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'c_kat'
          end
          object treekat: TdxDBTreeListColumn
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1085#1086#1084#1077#1088#1072
            Width = 175
            BandIndex = 0
            RowIndex = 0
            FieldName = 'kat'
          end
          object treekomf: TdxDBTreeListColumn
            Caption = #1059#1076#1086#1073#1089#1090#1074#1072
            Width = 233
            BandIndex = 0
            RowIndex = 0
            FieldName = 'komf'
          end
          object treec_komf: TdxDBTreeListColumn
            Visible = False
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'c_komf'
          end
          object treep: TdxDBTreeListMaskColumn
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'p'
          end
          object treen: TdxDBTreeListMaskColumn
            Caption = #8470
            Width = 26
            BandIndex = 0
            RowIndex = 0
            FieldName = 'n'
          end
          object treekmo: TdxDBTreeListMaskColumn
            Caption = #1050#1052#1054
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'kmo'
          end
          object treekmd: TdxDBTreeListMaskColumn
            Caption = #1050#1052#1044
            Width = 32
            BandIndex = 0
            RowIndex = 0
            FieldName = 'kmd'
          end
          object treetip: TdxDBTreeListMaskColumn
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'tip'
          end
          object treeop1: TdxDBTreeListColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1086#1073#1097#1077#1077
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'op1'
          end
          object treeop2: TdxDBTreeListColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1089#1082#1088#1099#1090#1086#1077
            Width = 111
            BandIndex = 0
            RowIndex = 0
            FieldName = 'op2'
          end
          object treem: TdxDBTreeListColumn
            Visible = False
            Width = 32
            BandIndex = 0
            RowIndex = 0
            FieldName = 'm'
          end
          object treeg_id: TdxDBTreeListMaskColumn
            Visible = False
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'g_id'
          end
          object treenazvanie: TdxDBTreeListColumn
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'nazvanie'
          end
          object treea_b: TdxDBTreeListColumn
            Caption = #1048#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1074
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'a_b'
          end
        end
        object cxButton6: TcxButton
          Left = 503
          Top = 179
          Width = 62
          Height = 26
          Caption = #1040
          TabOrder = 19
          OnClick = cxButton6Click
        end
        object cxButton7: TcxButton
          Left = 566
          Top = 179
          Width = 63
          Height = 26
          Caption = #1041
          TabOrder = 20
          OnClick = cxButton7Click
        end
        object cxButton8: TcxButton
          Left = 630
          Top = 179
          Width = 56
          Height = 26
          Caption = #1053
          TabOrder = 21
          OnClick = cxButton8Click
        end
      end
      object rg1: TcxRadioGroup
        Left = 0
        Top = 65
        Width = 214
        Height = 32
        Caption = ' '#1089#1090#1088#1091#1082#1090#1091#1088#1072' '
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = #1072#1074#1090#1086#1073#1091#1089#1099
          end
          item
            Caption = #1073#1083#1086#1082#1080
          end
          item
            Caption = #1085#1077#1089#1090#1072#1085#1076'.'
          end>
        Properties.ReadOnly = False
        TabOrder = 7
        OnClick = rg1Click
      end
      object b1: TcxButton
        Left = 175
        Top = 41
        Width = 38
        Height = 26
        Hint = #1091#1073#1088#1072#1090#1100' '#1087#1077#1088#1077#1082#1083#1102#1095#1072#1090#1077#1083#1100
        Caption = 'x'
        TabOrder = 8
        OnClick = b1Click
        LookAndFeel.NativeStyle = False
      end
    end
  end
  object ds1: TDataSource
    DataSet = DM.Gostin
    Left = 56
    Top = 160
  end
  object ds2: TDataSource
    DataSet = q2
    Left = 55
    Top = 218
  end
  object q2: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.a_b,a.codeid,a.c_gost,a.c_kat,a.komf,a.c_komf,a.p,a.n,a' +
        '.kmo,a.kmd,a.tip,a.op1,a.op2,a.m,c.codeid as g_id,c.nazvanie,d.k' +
        'at from (gostnom a left join gostinici c on a.C_gost = c.codeid)' +
        ' left join kat d on a.C_kat = d.codeid')
    Left = 16
    Top = 216
  end
  object IL: TImageList
    ShareImages = True
    Left = 96
    Top = 160
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000420C2829
      CC3D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C61884142000
      48294A29724AAD35000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000AB3D8B3129252000
      08216A3149250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000104200000000000000000000000000000000000000004A4A2925E618C618
      E71CE71C0000000000000000000000000000604E2C672C672C672C672C672C67
      2C672C672C672C672C672C672C670000000000000000604E604E604E604E604E
      604E604E604E604E604E604E604E000000000000000000000000000010421042
      104218631042000000000000000000000000000000000000000049298B311042
      C6180F3ECB35000000000000000000000000604EF97F337FF37F337FF37F337F
      F37F337FF37F337F337F337F2C670000000000000000604EFF7F337FF37F337F
      F37F337F337F337F337F2C67604E0000000000000000000010421042FF7F1863
      FF7F18631042104200000000000000000000000000000000E22C482D8B311042
      29255146AD356A2D00000000000000000000604EF97FF37FF37FF37F337FF37F
      337FF37F337FF37F337F337F2C67000000000000604EFF7FF37FF37F337FF37F
      337FF37F337F337F337F2C670000604E00000000000010421863FF7F1863FF7F
      186318631042104210420000000000000000000000000000682D68296B2DAD35
      8B2D3046CC39492900000000000000000000604EF97FF37FF37FF37FF37FF37F
      F37F337FF37F337FF37F337F2C67000000000000604EFF7FF37FF37FF37FF37F
      F37F337FF37F337F337F604E0000604E0000000000001042FF7F1863FF7F1863
      FF7F1863104210421042104200000000000000000000000067358A318A394A29
      EE39CC390721AB2900000000000000000000604EF97FF37FF37FF37FF37FF37F
      337FF37F337FF37F337FF37F2C6700000000604EFF7FF37FF37FF37FF37F337F
      F37FF37F337FF37F2C6700002C672C6700000000000010421863FF7FFF7F1863
      186318631042104210421042000000000000000000000000AC56893DA514E71C
      6A290621410C291D4A197342000000000000604EF97FF37FF37FF37FF37FF37F
      F37FF37FF37F337FF37F337F2C6700000000604EFF7FF37FF37FF37FF37FF37F
      F37F337FF37F337F2C6700002C672C670000000000001042FF7F186318631863
      1863186318631042104210420000000000000000000000008418C41C0629C418
      230441102000E71049196A29000000000000604EF97FF37FF37FF37FF37FF37F
      F37FF37F337FF37F337FF37F2C6700000000604E604E604E604E604E604E604E
      604E604E604E604E604E2C67F37F2C6700000000000010421863186318631863
      186318631863186310421042000000000000000000008A3D20008020482D4729
      E324AE6AE2382000C4103042000000000000604EF97FF37FF37FF37FF37FF37F
      F37FF37FF37FF37FF37F337F2C67000000000000604EFF7FF37FF37FF37FF37F
      F37FF37FF37FF37FF37FF37FF37F2C6700000000000010421863186318631863
      186318631863186310421042000000000000000000008A3D63140A560D3E3146
      EE3DA318E230420C21040000000000000000604EF97FF97FF97FF97FF97FF97F
      F97FF97FF97FF97FF97FF37F2C67000000000000604EFF7FF37FF37FF37FF37F
      F37FF37FF37FFF7FFF7FFF7FFF7F2C6700000000000000001042186318631863
      186318631863186318631042104200000000000000000000282929296531682D
      892D3046CB35CD3521040000000000000000604E2C672C672C672C672C672C67
      2C67604E604E604E604E604E604E000000000000604EFF7FF37FF37FF37FF37F
      F37FFF7F604E604E604E604E604E604E00000000000000000000104218631863
      18631863186310421042000000000000000000000000000006298535A318A414
      673D052184142000C41C21080000000000000000604EDE7BF97FF97FF37FF37F
      604E0000000000000000000000000000000000000000604EFF7FFF7FFF7FFF7F
      FF7F604E00000000000000000000000000000000000000000000000010421863
      18631042104200000000000000000000000000000000E5248A310429410C0000
      A318A318200021042000840C00000000000000000000604E604E604E604E604E
      000000000000000000000000000000000000000000000000604E604E604E604E
      604E000000000000000000000000000000000000000000000000000000001042
      104200000000000000000000000000000000000000000000C414420C00000000
      00000000841826298310E5180000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
      00008001E000FF3F00000001C000F81F00000001C000E00F000000018000C007
      000000018000C003000000010000C003000000010000C003000000010000C003
      000000018000C003000000018000E003000000038001F00F0000807FC07FF83F
      0000C0FFE0FFFCFF0000FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object q1: TADOQuery
    Connection = DM.ac
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.a_b,a.codeid,a.c_gost,a.c_kat,a.komf,a.c_komf,a.p,a.n,a' +
        '.kmo,a.kmd,a.tip,a.op1,a.op2,a.m,c.codeid as g_id,c.nazvanie,d.k' +
        'at from (gostnom a left join gostinici c on a.C_gost = c.codeid)' +
        ' left join kat d on a.C_kat = d.codeid')
    Left = 16
    Top = 160
  end
end
