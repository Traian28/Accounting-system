object Form10: TForm10
  Left = 61
  Top = 70
  Width = 999
  Height = 664
  Caption = 'Ingreso de un nuevo asiento contable'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object impresora1: TGroupBox
    Left = 0
    Top = 0
    Width = 985
    Height = 601
    Caption = 'Ingreso de asiento contable'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl8: TLabel
      Left = 672
      Top = 32
      Width = 113
      Height = 18
      Caption = 'Num. de asiento:'
    end
    object lbl9: TLabel
      Left = 696
      Top = 72
      Width = 88
      Height = 18
      Caption = 'Fecha Actual:'
    end
    object impresora2: TGroupBox
      Left = 32
      Top = 248
      Width = 913
      Height = 281
      Caption = 'Movimientos'
      TabOrder = 0
      object lbl6: TLabel
        Left = 360
        Top = 16
        Width = 135
        Height = 18
        Caption = 'PASES INGRESADOS'
      end
      object lbl22: TLabel
        Left = 8
        Top = 48
        Width = 38
        Height = 18
        Caption = 'PASE:'
      end
      object lbl23: TLabel
        Left = 184
        Top = 48
        Width = 61
        Height = 18
        Caption = 'CUENTA:'
      end
      object lbl24: TLabel
        Left = 360
        Top = 48
        Width = 67
        Height = 18
        Caption = 'LEYENDA:'
      end
      object lbl25: TLabel
        Left = 536
        Top = 48
        Width = 40
        Height = 18
        Caption = 'DEBE:'
      end
      object lbl26: TLabel
        Left = 704
        Top = 48
        Width = 50
        Height = 18
        Caption = 'HABER:'
      end
      object TStringGrid: TStringGrid
        Left = 8
        Top = 72
        Width = 889
        Height = 193
        DefaultColWidth = 172
        FixedCols = 0
        RowCount = 120
        FixedRows = 0
        TabOrder = 0
      end
    end
    object edt5: TEdit
      Left = 792
      Top = 24
      Width = 153
      Height = 26
      TabOrder = 1
    end
    object impresora3: TGroupBox
      Left = 32
      Top = 528
      Width = 913
      Height = 65
      Caption = 'Finalizacion'
      TabOrder = 2
      object btn10: TBitBtn
        Left = 24
        Top = 24
        Width = 185
        Height = 33
        Caption = 'Ingreso en limpio'
        TabOrder = 0
        OnClick = btn10Click
        Kind = bkOK
      end
      object btn11: TBitBtn
        Left = 232
        Top = 24
        Width = 193
        Height = 33
        Caption = 'Guardar en Borrador'
        Default = True
        ModalResult = 5
        TabOrder = 1
        OnClick = btn11Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
          44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
          00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
          33833F333383F33300003333AA463362A433333333383F333833F33300003333
          6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
          33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
          6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
          000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
          333383333333F3330000333333322AAA4333333333333833333F333300003333
          333322A4333333333333338333F333330000333333344A433333333333333338
          3F333333000033333336A24333333333333333833F333333000033333336AA43
          33333333333333833F3333330000333333336663333333333333333888333333
          0000}
        NumGlyphs = 2
      end
      object btn12: TBitBtn
        Left = 448
        Top = 24
        Width = 193
        Height = 33
        Cancel = True
        Caption = 'Cancelar Operacion'
        Default = True
        ModalResult = 2
        TabOrder = 2
        OnClick = btn12Click
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
      object btn1: TBitBtn
        Left = 664
        Top = 24
        Width = 225
        Height = 33
        Caption = 'VOLVER'
        Default = True
        ModalResult = 4
        TabOrder = 3
        OnClick = btn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object edt6: TEdit
      Left = 792
      Top = 64
      Width = 153
      Height = 26
      TabOrder = 3
    end
    object Modificar_Cuenta1: TGroupBox
      Left = 32
      Top = 96
      Width = 913
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object lbl10: TLabel
        Left = 24
        Top = 16
        Width = 29
        Height = 14
        Caption = 'Pase:'
      end
      object lbl11: TLabel
        Left = 112
        Top = 16
        Width = 115
        Height = 14
        Caption = 'Cuenta seleccionada:'
      end
      object lbl12: TLabel
        Left = 272
        Top = 16
        Width = 95
        Height = 14
        Caption = 'Fecha Operacion:'
      end
      object lbl13: TLabel
        Left = 408
        Top = 16
        Width = 64
        Height = 14
        Caption = 'Fecha Vto.:'
      end
      object lbl14: TLabel
        Left = 544
        Top = 16
        Width = 78
        Height = 14
        Caption = 'Comprobante:'
      end
      object lbl15: TLabel
        Left = 672
        Top = 16
        Width = 74
        Height = 14
        Caption = 'Debe / Haber'
      end
      object lbl16: TLabel
        Left = 784
        Top = 16
        Width = 77
        Height = 14
        Caption = 'Importe pase:'
      end
      object lbl17: TLabel
        Left = 56
        Top = 72
        Width = 100
        Height = 14
        Caption = 'Cuenta operacion:'
      end
      object lbl18: TLabel
        Left = 176
        Top = 72
        Width = 25
        Height = 18
        Caption = '-----'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl19: TLabel
        Left = 56
        Top = 112
        Width = 79
        Height = 14
        Caption = 'Leyenda pase:'
      end
      object edt7: TEdit
        Left = 24
        Top = 32
        Width = 65
        Height = 22
        TabOrder = 0
      end
      object edt8: TEdit
        Left = 112
        Top = 32
        Width = 137
        Height = 22
        TabOrder = 1
      end
      object edt9: TEdit
        Left = 272
        Top = 32
        Width = 113
        Height = 22
        TabOrder = 2
      end
      object edt10: TEdit
        Left = 408
        Top = 32
        Width = 113
        Height = 22
        TabOrder = 3
      end
      object edt11: TEdit
        Left = 544
        Top = 32
        Width = 113
        Height = 22
        TabOrder = 4
      end
      object edt13: TEdit
        Left = 784
        Top = 32
        Width = 105
        Height = 22
        TabOrder = 5
        OnKeyPress = edt13KeyPress
      end
      object edt14: TEdit
        Left = 144
        Top = 104
        Width = 241
        Height = 22
        TabOrder = 6
      end
      object Modificar_Cuenta2: TGroupBox
        Left = 600
        Top = 56
        Width = 289
        Height = 89
        TabOrder = 7
        object lbl3: TLabel
          Left = 24
          Top = 16
          Width = 75
          Height = 14
          Caption = 'SALDO DEBE:'
        end
        object lbl4: TLabel
          Left = 168
          Top = 16
          Width = 16
          Height = 14
          Caption = '----'
        end
        object lbl5: TLabel
          Left = 16
          Top = 40
          Width = 83
          Height = 14
          Caption = 'SALDO HABER:'
        end
        object lbl7: TLabel
          Left = 168
          Top = 40
          Width = 16
          Height = 14
          Caption = '----'
        end
        object lbl20: TLabel
          Left = 16
          Top = 64
          Width = 85
          Height = 14
          Caption = 'SALDO CIERRE:'
        end
        object lbl21: TLabel
          Left = 168
          Top = 64
          Width = 16
          Height = 14
          Caption = '----'
        end
      end
      object btn3: TBitBtn
        Left = 392
        Top = 104
        Width = 177
        Height = 25
        Caption = 'Ingresar'
        TabOrder = 8
        OnClick = btn3Click
        Kind = bkOK
      end
      object cbb1: TComboBox
        Left = 672
        Top = 32
        Width = 97
        Height = 22
        ItemHeight = 14
        TabOrder = 9
        Items.Strings = (
          'DEBE'
          'HABER')
      end
    end
    object Modificar_Cuenta3: TGroupBox
      Left = 248
      Top = 16
      Width = 417
      Height = 81
      Caption = 'Nuevo Asiento'
      TabOrder = 5
      object lbl1: TLabel
        Left = 8
        Top = 24
        Width = 120
        Height = 18
        Caption = 'Motivo de asiento:'
      end
      object lbl2: TLabel
        Left = 8
        Top = 55
        Width = 123
        Height = 18
        Caption = 'Cuenta de asiento:'
      end
      object edt1: TEdit
        Left = 136
        Top = 16
        Width = 153
        Height = 26
        TabOrder = 0
      end
      object edt2: TEdit
        Left = 136
        Top = 47
        Width = 153
        Height = 26
        TabOrder = 1
        OnEnter = edt2Enter
        OnExit = edt2Exit
      end
      object btn4: TBitBtn
        Left = 304
        Top = 32
        Width = 97
        Height = 25
        Caption = 'Guardar'
        TabOrder = 2
        OnClick = btn4Click
        Kind = bkOK
      end
    end
    object Modificar_Cuenta4: TGroupBox
      Left = 32
      Top = 16
      Width = 209
      Height = 81
      Caption = 'Asientos en Borrador'
      TabOrder = 6
      object btn2: TBitBtn
        Left = 16
        Top = 32
        Width = 169
        Height = 33
        Caption = 'Ver Borradores'
        TabOrder = 0
        OnClick = btn2Click
        Kind = bkIgnore
      end
    end
  end
end
