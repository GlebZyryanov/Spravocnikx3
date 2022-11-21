object PageControlForm: TPageControlForm
  Left = 313
  Top = 221
  Width = 650
  Height = 591
  Caption = 'PageControlForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 634
    Height = 553
    ActivePage = tsFiz
    Align = alClient
    TabOrder = 0
    object tsFiz: TTabSheet
      Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
      object DBGridFizPC: TDBGrid
        Left = 5
        Top = 45
        Width = 620
        Height = 300
        DataSource = MainForm.DataSourceFiz
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigatorFizPC: TDBNavigator
        Left = 5
        Top = 10
        Width = 620
        Height = 25
        DataSource = MainForm.DataSourceFiz
        TabOrder = 1
      end
      object btntsFizWH: TButton
        Left = 5
        Top = 360
        Width = 180
        Height = 25
        Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
        TabOrder = 2
        OnClick = btntsFizWHClick
      end
      object btnBackWH: TButton
        Left = 200
        Top = 360
        Width = 91
        Height = 25
        Caption = #1053#1072#1079#1072#1076
        TabOrder = 3
        OnClick = btnBackWHClick
      end
      object btnGOtsWH: TButton
        Left = 200
        Top = 400
        Width = 90
        Height = 25
        Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
        TabOrder = 4
        OnClick = btnGOtsWHClick
      end
      object btnCreateWH: TButton
        Left = 5
        Top = 480
        Width = 236
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1089#1090#1086#1088#1080#1102' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
        TabOrder = 5
        OnClick = btnCreateWHClick
      end
      object btnDeleteWH: TButton
        Left = 260
        Top = 480
        Width = 230
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1089#1090#1086#1088#1080#1102' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
        TabOrder = 6
        OnClick = btnDeleteWHClick
      end
      object dblkcbb1: TDBLookupComboBox
        Left = 6
        Top = 400
        Width = 180
        Height = 21
        Enabled = False
        KeyField = 'ID_FIZ'
        ListField = 'FIO'
        ListSource = MainForm.DataSourceFiz
        TabOrder = 7
      end
    end
    object tsUr: TTabSheet
      Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
      ImageIndex = 1
      OnExit = tsUrExit
      object DBGridUrPC: TDBGrid
        Left = 5
        Top = 40
        Width = 620
        Height = 300
        DataSource = MainForm.DataSourceUR
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_UR'
            Title.Caption = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME_L'
            Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME_S'
            Title.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OGRN'
            Title.Caption = #1054#1043#1056#1053
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INN'
            Title.Caption = #1048#1053#1053
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KPP'
            Title.Caption = #1050#1055#1055
            Visible = True
          end>
      end
      object DBNavigatorUrPC: TDBNavigator
        Left = 5
        Top = 10
        Width = 620
        Height = 25
        DataSource = MainForm.DataSourceUR
        TabOrder = 1
      end
      object ButtonView: TButton
        Left = 5
        Top = 360
        Width = 155
        Height = 25
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1102#1088'.'#1083#1080#1094#1072
        TabOrder = 2
        OnClick = ButtonViewClick
      end
      object CBTabUr: TDBLookupComboBox
        Left = 5
        Top = 400
        Width = 155
        Height = 21
        DataField = 'UR_NAME'
        DataSource = MainForm.DataSourceSOTRUD
        TabOrder = 3
        Visible = False
      end
      object ButtonCanselView: TButton
        Left = 170
        Top = 360
        Width = 70
        Height = 25
        Caption = #1053#1072#1079#1072#1076
        TabOrder = 4
        Visible = False
        OnClick = ButtonCanselViewClick
      end
      object ButtonGoView: TButton
        Left = 5
        Top = 430
        Width = 155
        Height = 25
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1102#1088'.'#1083#1080#1094#1072
        TabOrder = 5
        Visible = False
        OnClick = ButtonGoViewClick
      end
    end
    object tsSOTRUD: TTabSheet
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      ImageIndex = 2
      OnExit = tsSOTRUDExit
      object DBGridSOTRUDPC: TDBGrid
        Left = 5
        Top = 40
        Width = 620
        Height = 300
        DataSource = MainForm.DataSourceSOTRUD
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SOTR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UR_NAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIZ_NAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'D_NAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDFIZ'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDUR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDDOLJ'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATE_WORK_START'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE_WORK_END'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WORKPHONE_NUMBER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UR_NAME_REWRITE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FIZ_NAME_REWRITE'
            Visible = False
          end>
      end
      object DBNavigatorSOTRUDPC: TDBNavigator
        Left = 5
        Top = 10
        Width = 620
        Height = 25
        DataSource = MainForm.DataSourceSOTRUD
        TabOrder = 1
      end
      object btn2: TButton
        Left = 5
        Top = 400
        Width = 180
        Height = 25
        Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
        TabOrder = 2
        OnClick = btn2Click
      end
      object btnInsert: TButton
        Left = 5
        Top = 360
        Width = 180
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 3
        OnClick = btnInsertClick
      end
    end
    object tsDolj: TTabSheet
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
      ImageIndex = 3
      object DBGridDoljPC: TDBGrid
        Left = 5
        Top = 40
        Width = 620
        Height = 300
        DataSource = MainForm.DataSourceDoljnosti
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigatorDoljPC: TDBNavigator
        Left = 5
        Top = 10
        Width = 620
        Height = 25
        DataSource = MainForm.DataSourceDoljnosti
        TabOrder = 1
      end
    end
    object tsWorkHist: TTabSheet
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      ImageIndex = 4
      OnExit = tsWorkHistExit
      object dbgrdWorkHist: TDBGrid
        Left = 5
        Top = 10
        Width = 620
        Height = 300
        DataSource = MainForm.dsWorkHist
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
