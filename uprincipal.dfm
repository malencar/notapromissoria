object FrmPrincipal: TFrmPrincipal
  Left = 123
  Top = 77
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerador de Notas Promiss'#243'rias'
  ClientHeight = 631
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 367
    Width = 881
    Height = 217
    Caption = ' D A D O S  D O  D E V E D O R'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lbNome: TLabel
      Left = 13
      Top = 20
      Width = 118
      Height = 17
      Caption = 'Nome do Devedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbEndereco: TLabel
      Left = 13
      Top = 118
      Width = 209
      Height = 17
      Caption = 'Endere'#231'o Completo do Devedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbCidade: TLabel
      Left = 12
      Top = 165
      Width = 117
      Height = 17
      Caption = 'Local de Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 13
      Top = 69
      Width = 151
      Height = 17
      Caption = 'CPF/CNPJ do Devedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 588
      Top = 16
      Width = 62
      Height = 17
      Caption = 'Avalista 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 588
      Top = 69
      Width = 157
      Height = 17
      Caption = 'CPF/CNPJ do Avalista 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 772
      Top = 69
      Width = 60
      Height = 17
      Caption = 'Tel Aval 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 197
      Top = 69
      Width = 137
      Height = 17
      Caption = 'Tel Devedor Principal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edDevedor: TCompEdit
      Left = 13
      Top = 39
      Width = 564
      Height = 25
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edDevedorReturnKey
    end
    object edEnddevedor: TCompEdit
      Left = 13
      Top = 137
      Width = 852
      Height = 25
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
    end
    object edEmissao: TCompEdit
      Left = 12
      Top = 185
      Width = 243
      Height = 25
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
    end
    object edcpfDevedor: TCompEdit
      Left = 14
      Top = 88
      Width = 142
      Height = 26
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edcpfDevedorReturnKey
    end
    object edAvalista1: TCompEdit
      Left = 588
      Top = 35
      Width = 277
      Height = 26
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edAvalista1ReturnKey
    end
    object cpfAval1: TCompEdit
      Left = 589
      Top = 88
      Width = 124
      Height = 26
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = cpfAval1ReturnKey
    end
    object edTelav1: TCompEdit
      Left = 775
      Top = 88
      Width = 89
      Height = 26
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edTelav1ReturnKey
    end
    object edTelDevPrinc: TCompEdit
      Left = 198
      Top = 88
      Width = 142
      Height = 26
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = ' '
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edcpfDevedorReturnKey
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 11
    Width = 881
    Height = 350
    Caption = ' D A D O S  D O  C R E D O R '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lbVend: TLabel
      Left = 242
      Top = 48
      Width = 214
      Height = 17
      Caption = 'Data do 1o. Primeiro Vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbExtenso: TLabel
      Left = 16
      Top = 156
      Width = 112
      Height = 17
      Caption = 'Valor por extenso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbParcelas: TLabel
      Left = 15
      Top = 26
      Width = 228
      Height = 17
      Caption = 'Quantidade de Notas Promiss'#243'rias'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbValor: TLabel
      Left = 16
      Top = 103
      Width = 107
      Height = 17
      Caption = 'Valor R$ (Reais)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbEmissao: TLabel
      Left = 16
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Data de Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 13
      Top = 209
      Width = 108
      Height = 17
      Caption = 'Nome do Credor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 602
      Top = 209
      Width = 131
      Height = 16
      Caption = 'CPF/CNPJ do Credor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 15
      Top = 254
      Width = 191
      Height = 17
      Caption = 'Pag'#225'vel em: (Cidade/Estado)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 300
      Width = 88
      Height = 17
      Caption = 'Observa'#231#227'o :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 647
      Top = 26
      Width = 184
      Height = 51
      Caption = 'Clique no bot'#227'o abaixo para preencher automaticamente os campos '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label10: TLabel
      Left = 432
      Top = 16
      Width = 124
      Height = 17
      Caption = 'Vers'#227'o: 05/11/2013'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edExtenso: TCompEdit
      Left = 16
      Top = 175
      Width = 729
      Height = 27
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edExtensoReturnKey
    end
    object ParcINI: TCompEdit
      Left = 252
      Top = 23
      Width = 102
      Height = 23
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Alignment = taRightJustify
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdCode
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = ParcINIReturnKey
    end
    object edValor: TCompEdit
      Left = 16
      Top = 124
      Width = 121
      Height = 26
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '0,00'
      Alignment = taRightJustify
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      EditOptions.Size = 15
      EditOptions.Thousands = True
      Mode = mdFloat
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edValorReturnKey
    end
    object dtVenc: TDateTimePicker
      Left = 240
      Top = 68
      Width = 186
      Height = 31
      Date = 0.616172048597946100
      Time = 0.616172048597946100
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = dtVencKeyPress
    end
    object dtEmissao: TDateTimePicker
      Left = 16
      Top = 67
      Width = 186
      Height = 31
      Date = 0.616172048597946100
      Time = 0.616172048597946100
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = dtEmissaoKeyPress
    end
    object edCredor: TCompEdit
      Left = 13
      Top = 227
      Width = 564
      Height = 25
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edCredorReturnKey
    end
    object edcpfCredor: TCompEdit
      Left = 602
      Top = 226
      Width = 142
      Height = 26
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edcpfCredorReturnKey
    end
    object edPagavel: TCompEdit
      Left = 13
      Top = 275
      Width = 243
      Height = 25
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edPagavelReturnKey
    end
    object btTeste: TButton
      Left = 648
      Top = 90
      Width = 185
      Height = 49
      Caption = 'Preenchimento de Teste'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btTesteClick
    end
    object edObs: TCompEdit
      Left = 12
      Top = 321
      Width = 853
      Height = 25
      AutoSize = False
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      AsInteger = 0
      BarCodeOptions.Gap = 120
      BarCodeOptions.Size = 0
      BarCodeOptions.Terminator = 0
      EditOptions.DateFormat = 'dd/mm/yyyy'
      Mode = mdNormal
      Navigation.EscapeToPrev = False
      Navigation.ReturnToNext = False
      OnReturnKey = edPagavelReturnKey
    end
  end
  object cbGerar: TCompButton
    Left = 436
    Top = 587
    Width = 229
    Height = 41
    Caption = '&Gerar a Nota Promiss'#243'ria'
    TabStop = True
    TabOrder = 2
    OnClick = cbGerarClick
  end
  object cbFechar: TCompButton
    Left = 672
    Top = 587
    Width = 225
    Height = 41
    Caption = '&Fechar o programa'
    TabStop = True
    TabOrder = 3
    OnClick = cbFecharClick
  end
  object cbLimpaCampos: TCompButton
    Left = 16
    Top = 587
    Width = 201
    Height = 41
    Caption = '&Limpar Campos'
    TabStop = True
    TabOrder = 4
    OnClick = cbLimpaCamposClick
  end
  object CompButton1: TCompButton
    Left = 224
    Top = 587
    Width = 204
    Height = 41
    Caption = 'Contatos do Programador'
    TabStop = True
    TabOrder = 5
    OnClick = CompButton1Click
  end
end
