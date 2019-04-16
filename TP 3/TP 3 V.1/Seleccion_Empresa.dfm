object Form5: TForm5
  Left = 391
  Top = 215
  Width = 473
  Height = 280
  Caption = 'Seleccion_Empresa'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 56
    Top = 8
    Width = 324
    Height = 25
    Caption = 'Ingrese usuario red de la empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object impresora1: TGroupBox
    Left = 8
    Top = 40
    Width = 441
    Height = 193
    Caption = 'Seleccion'
    TabOrder = 0
    object lbl2: TLabel
      Left = 24
      Top = 72
      Width = 66
      Height = 19
      Caption = '-----------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TBitBtn
      Left = 24
      Top = 104
      Width = 177
      Height = 57
      Caption = 'Entrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
      Kind = bkYes
    end
    object btn2: TBitBtn
      Left = 224
      Top = 104
      Width = 193
      Height = 57
      Caption = 'Cerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn2Click
      Kind = bkCancel
    end
    object edt1: TEdit
      Left = 24
      Top = 32
      Width = 393
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = edt1Enter
    end
  end
  object con1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Gestion_Acceso'
    Provider = 'SQLOLEDB.1'
    Left = 344
    Top = 208
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 368
    Top = 208
  end
  object tmr1: TTimer
    Interval = 8000
    OnTimer = tmr1Timer
    Left = 400
    Top = 208
  end
end
