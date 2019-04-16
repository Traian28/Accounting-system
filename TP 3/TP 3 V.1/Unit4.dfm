object Form4: TForm4
  Left = 405
  Top = 140
  Width = 468
  Height = 328
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 16
    Top = 24
    Width = 425
    Height = 257
    Caption = 'Consulta para Reporte '
    TabOrder = 0
    object lbl1: TLabel
      Left = 136
      Top = 16
      Width = 133
      Height = 23
      Caption = 'Filtrar Por fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 8
      Top = 80
      Width = 49
      Height = 19
      Caption = 'DESDE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 64
      Top = 64
      Width = 78
      Height = 16
      Caption = 'AAAA/MM/DD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 272
      Top = 64
      Width = 78
      Height = 16
      Caption = 'AAAA/MM/DD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 208
      Top = 80
      Width = 52
      Height = 19
      Caption = 'HASTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 64
      Top = 40
      Width = 274
      Height = 13
      Caption = 'Si no completa los campos, se listara todo hasta la fecha.'
    end
    object edt1: TEdit
      Left = 64
      Top = 80
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 272
      Top = 80
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btn1: TBitBtn
      Left = 24
      Top = 112
      Width = 353
      Height = 65
      Caption = 'REPORTE PERSONAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn1Click
      Kind = bkYes
    end
    object btn2: TBitBtn
      Left = 24
      Top = 200
      Width = 353
      Height = 49
      Caption = 'VOLVER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn2Click
      Kind = bkRetry
    end
    object btn3: TBitBtn
      Left = 16
      Top = 120
      Width = 369
      Height = 57
      Caption = 'REPORTE DOCUMENTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn3Click
      Kind = bkYes
    end
    object btn4: TBitBtn
      Left = 24
      Top = 128
      Width = 353
      Height = 57
      Caption = 'REPORTE USUARIOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn4Click
      Kind = bkYes
    end
    object btn5: TBitBtn
      Left = 32
      Top = 128
      Width = 337
      Height = 65
      Caption = 'Reporte Buckup'#180's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btn5Click
      Kind = bkAll
    end
  end
end
