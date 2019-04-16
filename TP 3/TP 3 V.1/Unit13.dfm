object Asientos_borradores: TAsientos_borradores
  Left = 108
  Top = 189
  Width = 442
  Height = 379
  Caption = 'Asientos_borradores'
  Color = clBtnFace
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
    Left = 72
    Top = 8
    Width = 267
    Height = 33
    Caption = 'Borradores ingresados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Modificar_Cuenta1: TGroupBox
    Left = 0
    Top = 40
    Width = 425
    Height = 297
    TabOrder = 0
    object lbl2: TLabel
      Left = 24
      Top = 24
      Width = 280
      Height = 18
      Caption = 'Seleccione el asiento del borrador que dese'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 24
      Top = 104
      Width = 124
      Height = 18
      Caption = 'Numero de asiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 24
      Top = 144
      Width = 120
      Height = 18
      Caption = 'Cantidad de pases'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbb1: TComboBox
      Left = 16
      Top = 56
      Width = 377
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      OnExit = cbb1Exit
    end
    object edt1: TEdit
      Left = 160
      Top = 96
      Width = 241
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt2: TEdit
      Left = 160
      Top = 136
      Width = 241
      Height = 26
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Modificar_Cuenta2: TGroupBox
      Left = 16
      Top = 184
      Width = 385
      Height = 97
      Caption = 'Operacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object btn2: TBitBtn
        Left = 200
        Top = 32
        Width = 153
        Height = 49
        Caption = 'Volver sin seleccion'
        TabOrder = 0
        OnClick = btn2Click
        Kind = bkRetry
      end
      object btn1: TBitBtn
        Left = 32
        Top = 32
        Width = 153
        Height = 49
        Caption = 'Seleccionar'
        TabOrder = 1
        OnClick = btn1Click
        Kind = bkAll
      end
    end
  end
end
