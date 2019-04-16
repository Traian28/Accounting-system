object Form2: TForm2
  Left = 210
  Top = 154
  Width = 786
  Height = 551
  Caption = 'Pantalla Programa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label27: TLabel
    Left = 368
    Top = 112
    Width = 105
    Height = 21
    Caption = 'Sexo persona:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 64
    Top = 220
    Width = 75
    Height = 21
    Caption = 'Localidad:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 8
    Width = 761
    Height = 393
    ActivePage = ts3
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'ABM - Personas'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Label20: TLabel
        Left = 32
        Top = 8
        Width = 262
        Height = 19
        Caption = 'Alta, baja y modificacion de personal'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label30: TLabel
        Left = 392
        Top = 8
        Width = 289
        Height = 18
        Caption = 'Buscar en caso de Modificacion o Eliminacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 432
        Top = 40
        Width = 25
        Height = 16
        Caption = 'DNI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 608
        Top = 40
        Width = 37
        Height = 13
        Caption = 'Estado:'
      end
      object Label33: TLabel
        Left = 672
        Top = 40
        Width = 20
        Height = 13
        Caption = '-----'
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 64
        Width = 497
        Height = 289
        Caption = 'Datos a ingresar/ Datos registrados'
        TabOrder = 0
        object Label21: TLabel
          Left = 64
          Top = 24
          Width = 69
          Height = 21
          Caption = 'Nombre :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 64
          Top = 56
          Width = 70
          Height = 21
          Caption = 'Apellido :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 40
          Top = 88
          Width = 96
          Height = 21
          Caption = 'Documento :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 8
          Top = 120
          Width = 133
          Height = 21
          Caption = 'Tipo Documento :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 88
          Top = 152
          Width = 48
          Height = 21
          Caption = 'Edad :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 96
          Top = 188
          Width = 46
          Height = 21
          Caption = 'Sexo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 64
          Top = 220
          Width = 75
          Height = 21
          Caption = 'Localidad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 64
          Top = 260
          Width = 68
          Height = 21
          Caption = 'Sucursal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit13: TEdit
          Left = 144
          Top = 24
          Width = 321
          Height = 21
          TabOrder = 0
          OnKeyPress = Edit13KeyPress
        end
        object Edit14: TEdit
          Left = 144
          Top = 56
          Width = 321
          Height = 21
          TabOrder = 1
          OnKeyPress = Edit14KeyPress
        end
        object Edit15: TEdit
          Left = 144
          Top = 88
          Width = 321
          Height = 21
          TabOrder = 2
          OnKeyPress = Edit15KeyPress
        end
        object Edit16: TEdit
          Left = 144
          Top = 120
          Width = 57
          Height = 21
          TabOrder = 3
          OnExit = Edit16Exit
          OnKeyDown = Edit16KeyDown
          OnKeyPress = Edit16KeyPress
        end
        object Edit17: TEdit
          Left = 144
          Top = 152
          Width = 321
          Height = 21
          TabOrder = 4
          OnExit = Edit17Exit
          OnKeyPress = Edit17KeyPress
        end
        object Edit18: TEdit
          Left = 144
          Top = 188
          Width = 321
          Height = 21
          TabOrder = 5
          OnClick = Edit18Click
          OnExit = Edit18Exit
          OnKeyPress = Edit18KeyPress
        end
        object Edit19: TEdit
          Left = 144
          Top = 220
          Width = 321
          Height = 21
          TabOrder = 6
          OnKeyPress = Edit19KeyPress
        end
        object ComboBox2: TComboBox
          Left = 208
          Top = 120
          Width = 257
          Height = 21
          AutoDropDown = True
          ItemHeight = 0
          Sorted = True
          TabOrder = 7
          OnSelect = ComboBox2Select
        end
        object ComboBox3: TComboBox
          Left = 216
          Top = 256
          Width = 249
          Height = 21
          ItemHeight = 0
          TabOrder = 8
          OnSelect = ComboBox3Select
        end
        object Edit1: TEdit
          Left = 144
          Top = 256
          Width = 65
          Height = 21
          TabOrder = 9
          OnExit = Edit1Exit
          OnKeyDown = Edit1KeyDown
        end
      end
      object Edit20: TEdit
        Left = 464
        Top = 40
        Width = 129
        Height = 21
        TabOrder = 1
        OnKeyPress = Edit20KeyPress
      end
      object BitBtn1: TBitBtn
        Left = 504
        Top = 72
        Width = 241
        Height = 65
        Caption = 'Alta Persona'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
        Kind = bkAll
      end
      object BitBtn2: TBitBtn
        Left = 504
        Top = 144
        Width = 241
        Height = 65
        Caption = 'Baja Persona'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn2Click
        Kind = bkAbort
      end
      object BitBtn3: TBitBtn
        Left = 504
        Top = 216
        Width = 241
        Height = 65
        Caption = 'Modificar Persona'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn3Click
        Kind = bkRetry
      end
      object BitBtn6: TBitBtn
        Left = 352
        Top = 32
        Width = 73
        Height = 25
        Caption = 'Consulta'
        TabOrder = 5
        OnClick = BitBtn6Click
        Kind = bkOK
      end
      object Button1: TButton
        Left = 8
        Top = 40
        Width = 121
        Height = 17
        Caption = 'Limpiar pantalla'
        TabOrder = 6
        OnClick = Button1Click
      end
      object btn9: TBitBtn
        Left = 504
        Top = 288
        Width = 241
        Height = 65
        Caption = 'Listado de Personas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = btn9Click
        Kind = bkHelp
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'ABM - Documentos'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object Label34: TLabel
        Left = 40
        Top = 8
        Width = 281
        Height = 19
        Caption = 'Alta, baja y modificacion de documento'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label35: TLabel
        Left = 80
        Top = 72
        Width = 289
        Height = 18
        Caption = 'Buscar en caso de Modificacion o Eliminacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 72
        Top = 96
        Width = 98
        Height = 16
        Caption = 'Tipo Documento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 264
        Top = 96
        Width = 37
        Height = 13
        Caption = 'Estado:'
      end
      object Label38: TLabel
        Left = 320
        Top = 96
        Width = 20
        Height = 13
        Caption = '-----'
      end
      object Label42: TLabel
        Left = 544
        Top = 16
        Width = 161
        Height = 13
        Caption = 'Busqueda de documento por sigla'
      end
      object SpeedButton1: TSpeedButton
        Left = 368
        Top = 168
        Width = 23
        Height = 22
      end
      object BitBtn7: TBitBtn
        Left = 0
        Top = 88
        Width = 73
        Height = 25
        Caption = 'Consulta'
        TabOrder = 0
        OnClick = BitBtn7Click
        Kind = bkOK
      end
      object Edit21: TEdit
        Left = 176
        Top = 96
        Width = 81
        Height = 21
        TabOrder = 1
        OnKeyPress = Edit21KeyPress
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 144
        Width = 497
        Height = 209
        Caption = 'Datos a ingresar/ Datos registrados'
        TabOrder = 2
        object Label39: TLabel
          Left = 64
          Top = 24
          Width = 136
          Height = 21
          Caption = 'Clave Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 16
          Top = 80
          Width = 182
          Height = 21
          Caption = 'Descripcion Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 56
          Top = 136
          Width = 136
          Height = 21
          Caption = 'Siglas documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit22: TEdit
          Left = 208
          Top = 24
          Width = 265
          Height = 21
          TabOrder = 0
          OnKeyPress = Edit22KeyPress
        end
        object Edit23: TEdit
          Left = 208
          Top = 80
          Width = 265
          Height = 21
          TabOrder = 1
          OnKeyPress = Edit23KeyPress
        end
        object Edit24: TEdit
          Left = 208
          Top = 136
          Width = 265
          Height = 21
          TabOrder = 2
          OnKeyPress = Edit24KeyPress
        end
      end
      object BitBtn8: TBitBtn
        Left = 504
        Top = 72
        Width = 241
        Height = 73
        Caption = 'Alta Nuevo Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn8Click
        Kind = bkAll
      end
      object BitBtn9: TBitBtn
        Left = 504
        Top = 152
        Width = 241
        Height = 73
        Caption = 'Baja Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn9Click
        Kind = bkAbort
      end
      object BitBtn10: TBitBtn
        Left = 504
        Top = 232
        Width = 241
        Height = 73
        Caption = 'Modificar Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn10Click
        Kind = bkRetry
      end
      object ComboBox1: TComboBox
        Left = 592
        Top = 32
        Width = 153
        Height = 21
        ItemHeight = 0
        TabOrder = 6
      end
      object BitBtn11: TBitBtn
        Left = 520
        Top = 32
        Width = 65
        Height = 25
        Caption = 'Buscar'
        TabOrder = 7
        OnClick = BitBtn11Click
        Kind = bkOK
      end
      object Button2: TButton
        Left = 384
        Top = 120
        Width = 97
        Height = 17
        Caption = 'Limpiar Pantalla'
        TabOrder = 8
        OnClick = Button2Click
      end
      object BitBtn16: TBitBtn
        Left = 504
        Top = 312
        Width = 241
        Height = 41
        Caption = 'Listado de Documentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = BitBtn16Click
        Kind = bkHelp
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Administradores'
      ImageIndex = 3
      OnShow = TabSheet1Show
      object Label12: TLabel
        Left = 88
        Top = 8
        Width = 214
        Height = 19
        Caption = 'Buscar datos de administrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 432
        Top = 24
        Width = 79
        Height = 18
        Caption = 'ID - Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 672
        Top = 8
        Width = 44
        Height = 18
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 680
        Top = 24
        Width = 30
        Height = 18
        Caption = '------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 48
        Width = 409
        Height = 305
        Caption = 'Datos agrupados'
        TabOrder = 0
        object Label13: TLabel
          Left = 32
          Top = 24
          Width = 144
          Height = 18
          Caption = 'Nombre administrador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 40
          Top = 48
          Width = 130
          Height = 18
          Caption = 'ID Acceso (usuario)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 48
          Top = 72
          Width = 125
          Height = 18
          Caption = 'Contrase'#241'a Acceso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 136
          Top = 120
          Width = 37
          Height = 18
          Caption = 'E-Mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 8
          Top = 96
          Width = 163
          Height = 18
          Caption = 'Contrase'#241'a Nuevamente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 184
          Top = 24
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 184
          Top = 48
          Width = 201
          Height = 21
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 184
          Top = 72
          Width = 201
          Height = 21
          TabOrder = 2
        end
        object Edit5: TEdit
          Left = 184
          Top = 96
          Width = 201
          Height = 21
          TabOrder = 3
        end
        object GroupBox2: TGroupBox
          Left = 24
          Top = 144
          Width = 361
          Height = 129
          Caption = 'Permisos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object CheckBox1: TCheckBox
            Left = 16
            Top = 32
            Width = 169
            Height = 17
            Caption = 'ABM - Personas'
            TabOrder = 0
          end
          object CheckBox2: TCheckBox
            Left = 16
            Top = 64
            Width = 169
            Height = 17
            Caption = 'ABM - Documentos'
            TabOrder = 1
          end
          object CheckBox3: TCheckBox
            Left = 16
            Top = 96
            Width = 169
            Height = 17
            Caption = 'Acceso a listados'
            TabOrder = 2
          end
          object CheckBox4: TCheckBox
            Left = 184
            Top = 32
            Width = 169
            Height = 17
            Caption = 'Supervisor'
            TabOrder = 3
          end
          object CheckBox5: TCheckBox
            Left = 184
            Top = 64
            Width = 169
            Height = 17
            Caption = 'Auditor'
            TabOrder = 4
          end
          object chk1: TCheckBox
            Left = 184
            Top = 96
            Width = 161
            Height = 17
            Caption = 'Adm - Impresora'
            TabOrder = 5
          end
        end
        object Edit6: TEdit
          Left = 184
          Top = 120
          Width = 201
          Height = 21
          TabOrder = 5
        end
      end
      object Button3: TButton
        Left = 312
        Top = 328
        Width = 97
        Height = 17
        Caption = 'Limpiar Pantalla'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Edit7: TEdit
        Left = 520
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object BitBtn5: TBitBtn
        Left = 432
        Top = 56
        Width = 313
        Height = 65
        Caption = 'Buscar Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn5Click
        Kind = bkOK
      end
      object BitBtn13: TBitBtn
        Left = 432
        Top = 128
        Width = 313
        Height = 73
        Caption = 'Alta Nuevo Administrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn13Click
        Kind = bkAll
      end
      object BitBtn14: TBitBtn
        Left = 432
        Top = 288
        Width = 313
        Height = 65
        Caption = 'Modificar Administrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn14Click
        Kind = bkRetry
      end
      object BitBtn15: TBitBtn
        Left = 432
        Top = 208
        Width = 313
        Height = 73
        Caption = 'Baja Administrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BitBtn15Click
        Kind = bkAbort
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Auditoria'
      ImageIndex = 4
      OnShow = TabSheet2Show
      object Label44: TLabel
        Left = 256
        Top = 24
        Width = 227
        Height = 19
        Caption = 'Control y listado para el Auditor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 216
        Top = 160
        Width = 347
        Height = 19
        Caption = 'Control y Listado de usuarios en la base de datos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 40
        Top = 176
        Width = 55
        Height = 16
        Caption = 'ID Usiario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label48: TLabel
        Left = 160
        Top = 176
        Width = 45
        Height = 16
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label49: TLabel
        Left = 272
        Top = 176
        Width = 65
        Height = 16
        Caption = 'Contrase'#241'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label50: TLabel
        Left = 408
        Top = 176
        Width = 35
        Height = 16
        Caption = 'E-Mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 504
        Top = 176
        Width = 75
        Height = 16
        Caption = 'Tipo Permiso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 632
        Top = 176
        Width = 65
        Height = 16
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 56
        Top = 0
        Width = 57
        Height = 13
        Caption = 'GUARDADO'
      end
      object lbl2: TLabel
        Left = 160
        Top = 0
        Width = 52
        Height = 13
        Caption = 'REPORTES'
      end
      object lbl9: TLabel
        Left = 528
        Top = 32
        Width = 57
        Height = 13
        Caption = 'GUARDADO'
      end
      object lbl10: TLabel
        Left = 640
        Top = 32
        Width = 52
        Height = 13
        Caption = 'REPORTES'
      end
      object StringGrid2: TStringGrid
        Left = 8
        Top = 192
        Width = 737
        Height = 161
        ColCount = 6
        DefaultColWidth = 118
        FixedCols = 0
        RowCount = 20
        FixedRows = 0
        TabOrder = 0
      end
      object btn4: TBitBtn
        Left = 24
        Top = 16
        Width = 105
        Height = 41
        Caption = 'Personal'
        TabOrder = 1
        OnClick = btn4Click
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
      object btn5: TBitBtn
        Left = 24
        Top = 112
        Width = 105
        Height = 41
        Caption = 'Usuarios'
        TabOrder = 2
        OnClick = btn5Click
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
        Left = 144
        Top = 16
        Width = 81
        Height = 41
        Caption = 'Personal'
        TabOrder = 3
        OnClick = btn6Click
        Kind = bkAll
      end
      object btn7: TBitBtn
        Left = 144
        Top = 64
        Width = 81
        Height = 41
        Caption = 'Documen'
        TabOrder = 4
        OnClick = btn7Click
        Kind = bkAll
      end
      object btn8: TBitBtn
        Left = 144
        Top = 112
        Width = 81
        Height = 41
        Caption = 'Usuarios'
        TabOrder = 5
        OnClick = btn8Click
        Kind = bkAll
      end
      object btn3: TBitBtn
        Left = 24
        Top = 64
        Width = 105
        Height = 41
        Caption = 'Documen'
        TabOrder = 6
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
      object btn2: TBitBtn
        Left = 504
        Top = 48
        Width = 105
        Height = 41
        Caption = 'Datos'
        TabOrder = 7
        OnClick = btn2Click
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
      object btn11: TBitBtn
        Left = 624
        Top = 48
        Width = 97
        Height = 41
        Caption = 'Datos'
        TabOrder = 8
        OnClick = btn11Click
        Kind = bkAll
      end
    end
    object ts1: TTabSheet
      Caption = 'Administrador - Impresora'
      ImageIndex = 4
      OnShow = ts1Show
      object lbl3: TLabel
        Left = 120
        Top = 48
        Width = 539
        Height = 25
        Caption = 'Seleccion de impresora por defecto para el administrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object impresora: TGroupBox
        Left = 160
        Top = 96
        Width = 425
        Height = 217
        Caption = 'Impresoras'
        TabOrder = 0
        object lbl4: TLabel
          Left = 88
          Top = 32
          Width = 240
          Height = 19
          Caption = 'Impresoras habilitadas en sistema'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 80
          Top = 96
          Width = 120
          Height = 13
          Caption = '------------------------------'
        end
        object cbb2: TComboBox
          Left = 40
          Top = 56
          Width = 337
          Height = 21
          ItemHeight = 0
          TabOrder = 0
        end
        object btn12: TBitBtn
          Left = 40
          Top = 112
          Width = 337
          Height = 81
          Caption = 'Seleccionar impresora por defecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btn12Click
          Kind = bkOK
        end
      end
    end
    object ts2: TTabSheet
      Caption = 'Buckup'
      ImageIndex = 5
      OnShow = ts2Show
      object lbl8: TLabel
        Left = 144
        Top = 24
        Width = 398
        Height = 25
        Caption = 'Acceso, gestion y restauracion de Buckups'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object impresora1: TGroupBox
        Left = 104
        Top = 72
        Width = 537
        Height = 249
        Caption = 'Gestion y soporte de DATOS'
        TabOrder = 0
        object btn1: TBitBtn
          Left = 24
          Top = 48
          Width = 489
          Height = 73
          Caption = 'Generar Buckup y Soporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btn1Click
          Kind = bkAll
        end
        object btn10: TBitBtn
          Left = 24
          Top = 136
          Width = 489
          Height = 73
          Caption = 'Restaurar Base de Datos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btn10Click
          Kind = bkRetry
        end
      end
    end
    object ts3: TTabSheet
      Caption = 'Contaduria - ASientos'
      ImageIndex = 6
      object lbl11: TLabel
        Left = 216
        Top = 24
        Width = 276
        Height = 25
        Caption = 'Gestion de asientos contables'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object impresora2: TGroupBox
        Left = 40
        Top = 56
        Width = 273
        Height = 129
        Caption = 'Ingresar Asiento contable'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object btn13: TBitBtn
          Left = 24
          Top = 40
          Width = 225
          Height = 57
          Caption = 'Pantalla Contaduria'
          TabOrder = 0
          OnClick = btn13Click
          Kind = bkOK
        end
      end
      object impresora3: TGroupBox
        Left = 376
        Top = 56
        Width = 337
        Height = 289
        Caption = 'Listar Asiento contable'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object btn14: TBitBtn
          Left = 8
          Top = 32
          Width = 321
          Height = 57
          Caption = 'Ingresos de asientos contables'
          TabOrder = 0
          OnClick = btn14Click
          Kind = bkOK
        end
        object btn15: TBitBtn
          Left = 8
          Top = 96
          Width = 321
          Height = 57
          Caption = 'Libro Diario'
          Default = True
          ModalResult = 8
          TabOrder = 1
          OnClick = btn15Click
          Glyph.Data = {
            F2010000424DF201000000000000760000002800000024000000130000000100
            0400000000007C01000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
            3333333333388F3333333333000033334224333333333333338338F333333333
            0000333422224333333333333833338F33333333000033422222243333333333
            83333338F3333333000034222A22224333333338F33F33338F33333300003222
            A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
            38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
            2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
            0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
            333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
            33333A2224A2233333333338F338F83300003333333333A2224A333333333333
            8F338F33000033333333333A222433333333333338F338F30000333333333333
            A224333333333333338F38F300003333333333333A223333333333333338F8F3
            000033333333333333A3333333333333333383330000}
          NumGlyphs = 2
        end
        object btn16: TBitBtn
          Left = 8
          Top = 160
          Width = 321
          Height = 57
          Caption = 'Libro Mayor'
          Default = True
          ModalResult = 8
          TabOrder = 2
          OnClick = btn16Click
          Glyph.Data = {
            F2010000424DF201000000000000760000002800000024000000130000000100
            0400000000007C01000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
            3333333333388F3333333333000033334224333333333333338338F333333333
            0000333422224333333333333833338F33333333000033422222243333333333
            83333338F3333333000034222A22224333333338F33F33338F33333300003222
            A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
            38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
            2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
            0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
            333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
            33333A2224A2233333333338F338F83300003333333333A2224A333333333333
            8F338F33000033333333333A222433333333333338F338F30000333333333333
            A224333333333333338F38F300003333333333333A223333333333333338F8F3
            000033333333333333A3333333333333333383330000}
          NumGlyphs = 2
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 761
    Height = 89
    TabOrder = 1
    object Label6: TLabel
      Left = 336
      Top = 64
      Width = 114
      Height = 23
      Caption = 'Fecha Actual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 456
      Top = 64
      Width = 7
      Height = 23
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 592
      Top = 64
      Width = 47
      Height = 23
      Caption = 'Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 640
      Top = 64
      Width = 7
      Height = 23
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 8
      Top = 66
      Width = 62
      Height = 21
      Caption = 'Usuario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 72
      Top = 64
      Width = 28
      Height = 23
      Caption = '----'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 712
    object CerrarSesion1: TMenuItem
      Caption = 'Cerrar Sesion'
      OnClick = CerrarSesion1Click
    end
    object SALIR2: TMenuItem
      Caption = 'SALIR'
      OnClick = SALIR2Click
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Gestion_Documentos2;Data Source=localho' +
      'st;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=W7ET24;Use Encryption for Data=False;Tag with' +
      ' column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 680
  end
  object ADOquery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 648
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 680
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 652
    Top = 32
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 736
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Gestion_Documentos2;Data Source=localho' +
      'st;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=W7ET24;Use Encryption for Data=False;Tag with' +
      ' column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 400
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from TipoDocumento')
    Left = 32
    Top = 400
  end
  object RvProject1: TRvProject
    ProjectFile = 
      'C:\Users\alumnos\Desktop\TP 2 - V24 Para entregar\Reportes\Lista' +
      'do_Documento.rav'
    Left = 56
    Top = 400
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery2
    Left = 80
    Top = 400
  end
  object RvProject2: TRvProject
    ProjectFile = 
      'C:\Users\alumnos\Desktop\TP 2 - V24 Para entregar\Reportes\Lista' +
      'do_Personas.rav'
    Left = 160
    Top = 400
  end
  object RvDataSetConnection2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QueryPersona
    Left = 184
    Top = 400
  end
  object QueryPersona: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Personas')
    Left = 136
    Top = 400
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 224
    Top = 400
  end
  object RvRenderPDF2: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 248
    Top = 400
  end
  object RvRenderText2: TRvRenderText
    DisplayName = 'Plain Text (TXT)'
    FileExtension = '*.txt'
    CPI = 10.000000000000000000
    LPI = 6.000000000000000000
    Left = 272
    Top = 400
  end
  object qryQueryAuditoria: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from Auditoria')
    Left = 360
    Top = 400
  end
  object qryQueryAudDoc: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from Auditoria_Doc')
    Left = 456
    Top = 400
  end
  object qryQueryAudUsu: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Auditoria_Usuario')
    Left = 552
    Top = 400
  end
  object RvProject4: TRvProject
    ProjectFile = 
      'C:\Users\alumnos\Desktop\TP 2 - V24 Para entregar\Reportes\Audit' +
      'oria_Personas.rav'
    Left = 384
    Top = 400
  end
  object RvDataSetConnection4: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryQueryAuditoria
    Left = 408
    Top = 400
  end
  object RvProject5: TRvProject
    ProjectFile = 
      'C:\Users\alumnos\Desktop\TP 2 - V24 Para entregar\Reportes\Audit' +
      'oria_Documentos.rav'
    Left = 480
    Top = 400
  end
  object RvDataSetConnection5: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryQueryAudDoc
    Left = 504
    Top = 400
  end
  object RvProject6: TRvProject
    ProjectFile = 
      'C:\Users\alumnos\Desktop\TP 2 - V24 Para entregar\Reportes\Audit' +
      'oria_Usuarios.rav'
    Left = 576
    Top = 400
  end
  object RvDataSetConnection6: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryQueryAudUsu
    Left = 600
    Top = 400
  end
  object RenderPreview1: TRvRenderPreview
    DisplayName = 'RPRender'
    ZoomFactor = 100.000000000000000000
    ShadowDepth = 0
    Left = 320
    Top = 400
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=master'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 712
    Top = 32
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 736
    Top = 32
  end
  object dlgOpen1: TOpenDialog
    Left = 728
    Top = 400
  end
  object RvProject7: TRvProject
    Left = 672
    Top = 400
  end
  object RvDataSetConnection7: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrybuckup
    Left = 696
    Top = 400
  end
  object qrybuckup: TADOQuery
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Auditoria_Datos')
    Left = 648
    Top = 400
  end
end
