object Form12: TForm12
  Left = 84
  Top = 208
  Width = 1184
  Height = 440
  Caption = 'ABM - Plan de Cuenta'
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
  object Crear_Cuenta: TGroupBox
    Left = 8
    Top = 8
    Width = 553
    Height = 385
    Caption = 'Creacion de nuevas cuentas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 56
      Width = 273
      Height = 19
      Caption = 'Seleccionar Padre de la cuenta a crear:'
    end
    object lbl2: TLabel
      Left = 152
      Top = 96
      Width = 136
      Height = 19
      Caption = 'Nombre de cuenta:'
    end
    object lbl3: TLabel
      Left = 160
      Top = 136
      Width = 129
      Height = 19
      Caption = 'Codigo de cuenta:'
    end
    object lbl4: TLabel
      Left = 176
      Top = 176
      Width = 111
      Height = 19
      Caption = 'Tipo de cuenta:'
    end
    object lbl5: TLabel
      Left = 312
      Top = 200
      Width = 193
      Height = 14
      Caption = '0: Titulo   / 1: Cuenta movimientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 312
      Top = 32
      Width = 45
      Height = 16
      Caption = 'Cuenta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl13: TLabel
      Left = 368
      Top = 32
      Width = 45
      Height = 16
      Caption = '---------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbb1: TComboBox
      Left = 304
      Top = 48
      Width = 209
      Height = 27
      ItemHeight = 19
      TabOrder = 0
      OnExit = cbb1Exit
    end
    object edt1: TEdit
      Left = 304
      Top = 88
      Width = 209
      Height = 27
      TabOrder = 1
      OnExit = edt1Exit
      OnKeyPress = edt1KeyPress
    end
    object edt2: TEdit
      Left = 304
      Top = 128
      Width = 113
      Height = 27
      TabOrder = 2
      OnExit = edt2Exit
      OnKeyPress = edt2KeyPress
    end
    object cbb2: TComboBox
      Left = 304
      Top = 168
      Width = 209
      Height = 27
      ItemHeight = 19
      TabOrder = 3
      Items.Strings = (
        '0'
        '1')
    end
    object btn1: TBitBtn
      Left = 64
      Top = 232
      Width = 409
      Height = 41
      Caption = 'Crear Cuenta'
      TabOrder = 4
      OnClick = btn1Click
      Kind = bkOK
    end
    object btn2: TBitBtn
      Left = 64
      Top = 280
      Width = 409
      Height = 41
      Cancel = True
      Caption = 'Cancelar operacion'
      Default = True
      ModalResult = 2
      TabOrder = 5
      OnClick = btn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btn3: TBitBtn
      Left = 64
      Top = 328
      Width = 409
      Height = 41
      Caption = 'Volver Pantalla'
      TabOrder = 6
      OnClick = btn3Click
      Kind = bkRetry
    end
    object edt10: TEdit
      Left = 424
      Top = 128
      Width = 89
      Height = 27
      MaxLength = 2
      TabOrder = 7
      OnExit = edt10Exit
      OnKeyPress = edt10KeyPress
    end
  end
  object Modificar_Cuenta: TGroupBox
    Left = 584
    Top = 16
    Width = 561
    Height = 377
    Caption = 'Modificar_Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object impresora1: TGroupBox
      Left = 8
      Top = 24
      Width = 529
      Height = 81
      Caption = 'Busqueda de Cuenta'
      TabOrder = 0
      object lbl6: TLabel
        Left = 40
        Top = 40
        Width = 110
        Height = 19
        Caption = 'Codigo Cuenta:'
      end
      object edt3: TEdit
        Left = 160
        Top = 32
        Width = 209
        Height = 27
        TabOrder = 0
      end
      object btn4: TBitBtn
        Left = 376
        Top = 24
        Width = 145
        Height = 41
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = btn4Click
        Kind = bkOK
      end
    end
    object impresora2: TGroupBox
      Left = 8
      Top = 112
      Width = 529
      Height = 185
      Caption = 'Datos de la cuenta'
      TabOrder = 1
      object lbl7: TLabel
        Left = 40
        Top = 32
        Width = 114
        Height = 19
        Caption = 'Nombre cuenta:'
      end
      object lbl8: TLabel
        Left = 48
        Top = 64
        Width = 107
        Height = 19
        Caption = 'Codigo cuenta:'
      end
      object lbl9: TLabel
        Left = 64
        Top = 96
        Width = 89
        Height = 19
        Caption = 'Tipo cuenta:'
      end
      object lbl10: TLabel
        Left = 64
        Top = 128
        Width = 92
        Height = 19
        Caption = 'Nivel cuenta:'
      end
      object lbl11: TLabel
        Left = 56
        Top = 160
        Width = 97
        Height = 19
        Caption = 'Padre cuenta:'
      end
      object edt4: TEdit
        Left = 176
        Top = 24
        Width = 273
        Height = 27
        TabOrder = 0
      end
      object edt5: TEdit
        Left = 176
        Top = 56
        Width = 273
        Height = 27
        TabOrder = 1
      end
      object edt6: TEdit
        Left = 176
        Top = 88
        Width = 217
        Height = 27
        TabOrder = 2
      end
      object edt7: TEdit
        Left = 176
        Top = 120
        Width = 273
        Height = 27
        TabOrder = 3
      end
      object edt8: TEdit
        Left = 176
        Top = 152
        Width = 273
        Height = 27
        TabOrder = 4
      end
      object edt9: TEdit
        Left = 400
        Top = 88
        Width = 49
        Height = 27
        TabOrder = 5
      end
    end
    object btn5: TBitBtn
      Left = 8
      Top = 312
      Width = 161
      Height = 49
      Caption = 'Modificar'
      TabOrder = 2
      Kind = bkAll
    end
    object btn6: TBitBtn
      Left = 192
      Top = 312
      Width = 169
      Height = 49
      Caption = 'Cancelar Operacion'
      TabOrder = 3
      OnClick = btn6Click
      Kind = bkCancel
    end
    object btn7: TBitBtn
      Left = 376
      Top = 312
      Width = 161
      Height = 49
      Caption = 'Volver Pantalla'
      TabOrder = 4
      OnClick = btn7Click
      Kind = bkRetry
    end
  end
end
