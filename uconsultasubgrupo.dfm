﻿object frmconsub: Tfrmconsub
  Left = 0
  Top = 0
  Caption = 'Consulta de SUBGRUPO'
  ClientHeight = 295
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lblopções: TLabel
    Left = 8
    Top = 43
    Width = 96
    Height = 13
    Caption = 'Op'#231'oes da Consulta'
  end
  object lbldescricao: TLabel
    Left = 135
    Top = 43
    Width = 144
    Height = 13
    Caption = 'Digite os dados da CONSULTA'
  end
  object pnltop: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 41
    Align = alTop
    Caption = 'Descri'#231#227'o do SUBGRUPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object cb: TComboBox
    Left = 8
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 1
    Items.Strings = (
      '1 - Por C'#243'digo'
      '2 - Por Nome'
      '3 - Todos')
  end
  object Edtpesquisar: TEdit
    Left = 135
    Top = 62
    Width = 248
    Height = 21
    TabOrder = 2
  end
  object BtnConsultar: TBitBtn
    Left = 381
    Top = 42
    Width = 91
    Height = 41
    Caption = '&Consultar'
    TabOrder = 3
    OnClick = BtnConsultarClick
  end
  object dbgrd: TDBGrid
    Left = 0
    Top = 89
    Width = 480
    Height = 187
    Align = alBottom
    DataSource = DSConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgrdDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  object stat1: TStatusBar
    Left = 0
    Top = 276
    Width = 480
    Height = 19
    Panels = <>
  end
  object zQRY: TFDQuery
    Connection = Frmprincipal.FDConnection1
    SQL.Strings = (
      'Select * from SUBGRUPO')
    Left = 312
    Top = 16
  end
  object DSConsulta: TDataSource
    DataSet = zQRY
    Left = 360
    Top = 16
  end
end
