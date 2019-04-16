object Pantalla_Auditoria: TPantalla_Auditoria
  Left = 65
  Top = 142
  Width = 1189
  Height = 577
  Caption = 'Pantalla_Auditoria'
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
  object Label1: TLabel
    Left = 472
    Top = 8
    Width = 260
    Height = 25
    Caption = 'Listado y registros Auditoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TBitBtn
    Left = 392
    Top = 504
    Width = 441
    Height = 33
    Caption = 'Volver Pantalla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
    Kind = bkRetry
  end
  object grp1: TGroupBox
    Left = 16
    Top = 40
    Width = 1137
    Height = 449
    Caption = 'Auditoria Personas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbl11: TLabel
      Left = 16
      Top = 32
      Width = 81
      Height = 19
      Caption = 'Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 120
      Top = 32
      Width = 69
      Height = 19
      Caption = 'Tipo Doc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 232
      Top = 32
      Width = 57
      Height = 19
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 328
      Top = 32
      Width = 58
      Height = 19
      Caption = 'Apellido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 440
      Top = 32
      Width = 35
      Height = 19
      Caption = 'Edad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 536
      Top = 32
      Width = 34
      Height = 19
      Caption = 'Sexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 616
      Top = 32
      Width = 70
      Height = 19
      Caption = 'Cod. Prov'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 728
      Top = 32
      Width = 54
      Height = 19
      Caption = 'Usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 832
      Top = 32
      Width = 40
      Height = 19
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 928
      Top = 32
      Width = 63
      Height = 19
      Caption = 'Terminal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 1032
      Top = 32
      Width = 47
      Height = 19
      Caption = 'Accion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object TStringGrid: TStringGrid
      Left = 8
      Top = 56
      Width = 1121
      Height = 385
      ColCount = 11
      DefaultColWidth = 99
      FixedCols = 0
      RowCount = 25
      FixedRows = 0
      TabOrder = 0
    end
  end
  object grp2: TGroupBox
    Left = 32
    Top = 56
    Width = 1097
    Height = 441
    Caption = 'Auditoria Documentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lbl12: TLabel
      Left = 24
      Top = 32
      Width = 124
      Height = 19
      Caption = 'Documento Clave'
    end
    object lbl13: TLabel
      Left = 192
      Top = 32
      Width = 81
      Height = 19
      Caption = 'Descripcion'
    end
    object lbl14: TLabel
      Left = 344
      Top = 32
      Width = 78
      Height = 19
      Caption = 'Siglas Doc.'
    end
    object lbl15: TLabel
      Left = 480
      Top = 32
      Width = 106
      Height = 19
      Caption = 'Usuario Accion'
    end
    object lbl16: TLabel
      Left = 624
      Top = 32
      Width = 123
      Height = 19
      Caption = 'Fecha Realizacion'
    end
    object lbl17: TLabel
      Left = 800
      Top = 32
      Width = 63
      Height = 19
      Caption = 'Terminal'
    end
    object lbl18: TLabel
      Left = 928
      Top = 32
      Width = 118
      Height = 19
      Caption = 'Accion Realizada'
    end
    object TStringGrid41: TStringGrid
      Left = 16
      Top = 56
      Width = 1065
      Height = 377
      ColCount = 7
      DefaultColWidth = 148
      FixedCols = 0
      RowCount = 20
      FixedRows = 0
      TabOrder = 0
    end
  end
  object grp3: TGroupBox
    Left = 40
    Top = 32
    Width = 1089
    Height = 465
    Caption = 'Auditoria Usuarios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lbl19: TLabel
      Left = 24
      Top = 24
      Width = 76
      Height = 19
      Caption = 'Usuario ID'
    end
    object lbl20: TLabel
      Left = 144
      Top = 24
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object lbl21: TLabel
      Left = 256
      Top = 24
      Width = 79
      Height = 19
      Caption = 'Contrase'#241'a'
    end
    object lbl22: TLabel
      Left = 392
      Top = 24
      Width = 43
      Height = 19
      Caption = 'E-Mail'
    end
    object lbl23: TLabel
      Left = 512
      Top = 24
      Width = 36
      Height = 19
      Caption = 'Perfil'
    end
    object lbl24: TLabel
      Left = 592
      Top = 24
      Width = 106
      Height = 19
      Caption = 'Usuarui Accion'
    end
    object lbl25: TLabel
      Left = 736
      Top = 24
      Width = 45
      Height = 19
      Caption = 'Fecha '
    end
    object lbl26: TLabel
      Left = 840
      Top = 24
      Width = 63
      Height = 19
      Caption = 'Terminal'
    end
    object lbl27: TLabel
      Left = 976
      Top = 24
      Width = 47
      Height = 19
      Caption = 'Accion'
    end
    object TStringGrid42: TStringGrid
      Left = 8
      Top = 48
      Width = 1073
      Height = 409
      ColCount = 9
      DefaultColWidth = 115
      FixedCols = 0
      RowCount = 20
      FixedRows = 0
      TabOrder = 0
    end
  end
  object btn2: TBitBtn
    Left = 1032
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 4
  end
end
