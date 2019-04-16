object form11: Tform11
  Left = 186
  Top = 128
  Width = 941
  Height = 498
  Caption = 'Pantalla Contaduria'
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 328
    Top = 0
    Width = 277
    Height = 40
    Caption = 'PLAN DE CUENTAS'
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 48
    Width = 122
    Height = 23
    Caption = 'Codigo Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 232
    Top = 48
    Width = 132
    Height = 23
    Caption = 'Nombre Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 456
    Top = 48
    Width = 101
    Height = 23
    Caption = 'Tipo Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 680
    Top = 48
    Width = 105
    Height = 23
    Caption = 'Nivel Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TStringGrid: TStringGrid
    Left = 8
    Top = 72
    Width = 913
    Height = 361
    ColCount = 4
    DefaultColWidth = 222
    FixedCols = 0
    RowCount = 75
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object mm1: TMainMenu
    Left = 8
    Top = 8
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Salir1: TMenuItem
        Caption = 'Salir'
        OnClick = Salir1Click
      end
      object VolverMenuAnt1: TMenuItem
        Caption = 'Volver Menu Ant'
        OnClick = VolverMenuAnt1Click
      end
    end
    object PlanDeCuenta1: TMenuItem
      Caption = 'Plan De Cuenta'
      object CrearCuenta1: TMenuItem
        Caption = 'Crear Cuenta'
        OnClick = CrearCuenta1Click
      end
      object ModificarCuenta1: TMenuItem
        Caption = 'Modificar Cuenta'
        OnClick = ModificarCuenta1Click
      end
      object ListadoPlandeCuentas1: TMenuItem
        Caption = 'Listado Plan de Cuentas'
      end
    end
    object IngresodeAsientos1: TMenuItem
      Caption = 'Ingreso de Asientos'
      OnClick = IngresodeAsientos1Click
    end
  end
end
