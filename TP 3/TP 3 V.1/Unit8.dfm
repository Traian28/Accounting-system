object Form7: TForm7
  Left = 370
  Top = 203
  Width = 768
  Height = 520
  Caption = 'Form7'
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
    Left = 16
    Top = 80
    Width = 67
    Height = 23
    Caption = 'Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 152
    Top = 80
    Width = 65
    Height = 23
    Caption = 'Apellido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 256
    Top = 80
    Width = 96
    Height = 23
    Caption = 'Documento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 392
    Top = 80
    Width = 80
    Height = 23
    Caption = 'Tipo Doc.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 504
    Top = 80
    Width = 96
    Height = 23
    Caption = 'Descripcion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 648
    Top = 80
    Width = 42
    Height = 23
    Caption = 'Zona'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 16
    Top = 8
    Width = 335
    Height = 23
    Caption = 'Listado activo de personas en el sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 488
    Top = 8
    Width = 63
    Height = 18
    Caption = 'Guardado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 600
    Top = 8
    Width = 51
    Height = 18
    Caption = 'Reporte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TStringGrid: TStringGrid
    Left = 8
    Top = 112
    Width = 729
    Height = 305
    ColCount = 6
    DefaultColWidth = 119
    FixedCols = 0
    RowCount = 75
    FixedRows = 0
    TabOrder = 0
  end
  object btn1: TBitBtn
    Left = 232
    Top = 424
    Width = 297
    Height = 49
    Caption = 'Volver Pantalla Anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
    Kind = bkRetry
  end
  object btn3: TBitBtn
    Left = 464
    Top = 32
    Width = 105
    Height = 41
    Caption = 'Personas'
    TabOrder = 2
    OnClick = btn3Click
    Glyph.Data = {
      4A040000424D4A04000000000000760000002800000031000000230000000100
      040000000000D40300009C0E00009C0E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFFFFFFFF8222
      FFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFF762222222222FFFFFFFF
      FFFFFFFFFFFFF0000000FFFFFFFFFFF72222222222222222FFFFFFFFFFFFFFFF
      FFFFF0000000FFFFFF8622222222222222222222FFFFFFFFFFFFFFFFFFFFF000
      0000FFFF222222222222222222222222FFFFFFFFFFFFFFFFFFFFF0000000FFFF
      222222222222222222222222FF6222222222222222FFF0000000FFFF22222222
      2222222222222222FF6222222222222222FFF0000000FFFF2222222222222222
      22222222FFFFF822FFFFFFF222FFF0000000FFFF222222222222222222222222
      FFFFF822FFFFFFF222FFF0000000FFFF222222222222222222222222FFFFF822
      FFFFFFF222FFF0000000FFFF222222222222222222222222FFFFF822FFFFFFF2
      22FFF0000000FFFF222222222222222222222222FF7666228888888222FFF000
      0000FFFF222222222222262222222222FF6222222222222222FFF0000000FFFF
      2222226FF62227F762222222FFFFF822FFFFFFF222FFF0000000FFFF2222222F
      F6222FF262222222FFFFF822FFFFFFF222FFF0000000FFFF2222222FFF22FF22
      22222222FFFFF822FFFFFFF222FFF0000000FFFF22222222FFF8FF2222222222
      FFFFF866FFFFFFF222FFF0000000FFFF222222222FFFF82222222222FF662666
      2222222222FFF0000000FFFF222222226FFFF82222222222FF77772277777772
      22FFF0000000FFFF22222222FFF7FF2222222222FFFFF826FFFFFFF222FFF000
      0000FFFF22222228FF72FF2222222222FFFFF822FFFFFFF222FFF0000000FFFF
      2222222FF8222FF222222222FFFFF822FFFFFFF222FFF0000000FFFF2222222F
      F22226F722222222FFFFF822FFFFFFF222FFF0000000FFFF222222FF622226FF
      22222222FF7666226666666222FFF0000000FFFF222222222222222222222222
      FF6666226666666222FFF0000000FFFF222222222222222222222222FFFFF822
      FFFFFFF222FFF0000000FFFF222222222222222222222222FFFFF822FFFFFFF2
      22FFF0000000FFFF222222222222222222222222FFFFF822FFFFFFF222FFF000
      0000FFFF222222222222222222222222FFFFF826FFFFFFF262FFF0000000FFFF
      222222222222222222222222FF8887668888888222FFF0000000FFFF22222222
      2222222222222222FF2222222222222222FFF0000000FFFF2222222222222222
      22222222FF7777777777777777FFF0000000FFFF762222222222222222222222
      FFFFFFFFFFFFFFFFFFFFF0000000}
  end
  object btn6: TBitBtn
    Left = 584
    Top = 32
    Width = 81
    Height = 41
    Caption = 'Personas'
    TabOrder = 3
    OnClick = btn6Click
    Kind = bkAll
  end
end
