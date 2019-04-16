object Form1: TForm1
  Left = 372
  Top = 207
  Width = 444
  Height = 293
  Caption = 'Pantalla Inicio'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 425
    Height = 249
    Caption = 'Inicio de programa'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 24
      Width = 293
      Height = 19
      Caption = 'Bienvenido usuario a gestion de personas'
    end
    object Label2: TLabel
      Left = 168
      Top = 48
      Width = 101
      Height = 19
      Caption = 'Y documentos'
    end
    object Label3: TLabel
      Left = 48
      Top = 88
      Width = 142
      Height = 19
      Caption = 'Nombre de usuario:'
    end
    object Label4: TLabel
      Left = 104
      Top = 120
      Width = 85
      Height = 19
      Caption = 'Contrase'#241'a:'
    end
    object Label5: TLabel
      Left = 208
      Top = 144
      Width = 6
      Height = 19
      Caption = '-'
    end
    object BitBtn1: TBitBtn
      Left = 48
      Top = 168
      Width = 329
      Height = 33
      Caption = 'Iniciar Sesion'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkAll
    end
    object BitBtn2: TBitBtn
      Left = 48
      Top = 208
      Width = 329
      Height = 33
      Caption = 'Cerrar Sesion Empresa'
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object edit_usuario: TEdit
      Left = 200
      Top = 80
      Width = 177
      Height = 27
      TabOrder = 2
      OnClick = edit_usuarioClick
    end
    object edit_pw: TEdit
      Left = 200
      Top = 112
      Width = 177
      Height = 27
      PasswordChar = '*'
      TabOrder = 3
      OnClick = edit_pwClick
    end
  end
end
