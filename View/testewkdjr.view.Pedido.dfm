object frmPedidoVenda: TfrmPedidoVenda
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro de Pedido de venda'
  ClientHeight = 606
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 805
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 757
    object Label6: TLabel
      Left = 27
      Top = 7
      Width = 85
      Height = 13
      Caption = 'Numero Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 50
      Width = 328
      Height = 73
      Caption = 'Cliente'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 17
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 75
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object edtCodCliente: TEdit
        Left = 10
        Top = 36
        Width = 59
        Height = 21
        TabOrder = 0
        OnExit = edtCodClienteExit
        OnKeyPress = edtCodClienteKeyPress
      end
      object edtNomeCliente: TEdit
        Left = 75
        Top = 36
        Width = 241
        Height = 21
        Color = clMenu
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 528
      Top = 49
      Width = 265
      Height = 74
      Caption = 'Produto'
      TabOrder = 1
      object Label3: TLabel
        Left = 10
        Top = 21
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        Left = 88
        Top = 21
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label5: TLabel
        Left = 160
        Top = 21
        Width = 64
        Height = 13
        Caption = 'Valor Unit'#225'rio'
      end
      object btnAddProduto: TSpeedButton
        Left = 230
        Top = 32
        Width = 31
        Height = 29
        Hint = 'Adiciona Produto'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0FA5280FA5280FA5280FA5280FA5280FA528FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E37B55E37B55E37B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C2
          7337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA528
          7EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C2
          7337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0FA5280FA5280FA5280FA5280FA5280FA5280FA5280FA528
          7EE09E38C27338C27337B55E0FA5280FA5280FA5280FA5280FA5280FA5280FA5
          280FA528FF00FFFF00FFFF00FFFF00FF0FA5287EE09E37B55E37B55E37B55E37
          B55E37B55E37B55E37B55E38C27338C27337B55E37B55E37B55E37B55E37B55E
          37B55E37B55E37B55E0FA528FF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C2
          7338C27338C27338C27338C27338C27338C27338C27338C27338C27338C27338
          C27338C27338C27338C27338C27337B55E0FA528FF00FFFF00FFFF00FFFF00FF
          0FA5287EE09E38C27338C27338C27338C27338C27338C27338C27338C27338C2
          7338C27338C27338C27338C27338C27338C27338C27337B55E0FA528FF00FFFF
          00FFFF00FFFF00FF0FA52852CE8452CE8452CE8452CE8452CE8452CE8452CE84
          7EE09E38C27338C27337B55E52CE8452CE8452CE8452CE8452CE8452CE8452CE
          840FA528FF00FFFF00FFFF00FFFF00FF0FA5280FA5280FA5280FA5280FA5280F
          A5280FA5280FA5287EE09E38C27338C27337B55E0FA5280FA5280FA5280FA528
          0FA5280FA5280FA5280FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C2
          7337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA528
          7EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA52852CE8452CE8452CE
          8452CE840FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA528
          0FA5280FA5280FA5280FA5280FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = btnAddProdutoClick
      end
      object edtCodProduto: TEdit
        Left = 10
        Top = 40
        Width = 59
        Height = 21
        TabOrder = 0
        OnExit = edtCodProdutoExit
        OnKeyPress = edtCodProdutoKeyPress
      end
      object edtQtde: TEdit
        Left = 88
        Top = 40
        Width = 56
        Height = 21
        TabOrder = 1
        OnKeyPress = edtQtdeKeyPress
      end
      object edtValorUnit: TEdit
        Left = 158
        Top = 40
        Width = 64
        Height = 21
        TabOrder = 2
        OnKeyPress = edtValorUnitKeyPress
      end
    end
    object edtNumPedido: TEdit
      Left = 28
      Top = 23
      Width = 84
      Height = 21
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 805
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 444
    ExplicitWidth = 757
    object btnGravarPedido: TSpeedButton
      Left = 126
      Top = 17
      Width = 127
      Height = 29
      Caption = 'Gravar Pedido'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnGravarPedidoClick
    end
    object btnNovoPedido: TSpeedButton
      Left = 0
      Top = 17
      Width = 127
      Height = 29
      Caption = 'Novo Pedido'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNovoPedidoClick
    end
    object btnExcluir: TSpeedButton
      Left = 359
      Top = 17
      Width = 127
      Height = 29
      Caption = 'Excluir Pedido'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnExcluirClick
    end
    object btnCancelar: TSpeedButton
      Left = 259
      Top = 17
      Width = 94
      Height = 29
      Caption = 'Cancelar'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCancelarClick
    end
    object GpboxResumo: TGroupBox
      Left = 620
      Top = 6
      Width = 180
      Height = 51
      Caption = 'Resumo'
      TabOrder = 0
      object DBText1: TDBText
        Left = 87
        Top = 14
        Width = 65
        Height = 17
        DataField = 'ValorTotalPedido'
        DataSource = dtsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblValorTotalPedido: TLabel
        Left = 18
        Top = 18
        Width = 64
        Height = 13
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dbgrdProdutos: TDBGrid
    Left = 0
    Top = 170
    Width = 805
    Height = 374
    Align = alClient
    DataSource = dtsProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = dbgrdProdutosKeyDown
    OnKeyPress = dbgrdProdutosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ProdutoId'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorUnitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorTotal'
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMedGray
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = -71
    ExplicitWidth = 844
    object btnFechar: TSpeedButton
      Left = 706
      Top = 6
      Width = 94
      Height = 29
      Caption = 'Fechar'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFecharClick
    end
    object Label7: TLabel
      Left = 17
      Top = 6
      Width = 277
      Height = 23
      Caption = 'Cadastro de Pedido de venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      950000009619E0BD01000000180000000600000000000300000095000654656D
      70496404000100000000000950726F6475746F496404000100000000000A5175
      616E74696461646504000100000000000D56616C6F72556E69746172696F0800
      0400000000000A56616C6F72546F74616C080004000000000009446573637269
      63616F01004900000001000557494454480200020064000000}
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'ValorTotalPedido'
        Expression = 'SUM(ValorTotal)'
        IndexName = 'idValTotPed'
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    BeforeDelete = cdsProdutosBeforeDelete
    AfterDelete = cdsProdutosAfterDelete
    Left = 408
    Top = 128
    object cdsProdutosTempId: TIntegerField
      FieldName = 'TempId'
    end
    object cdsProdutosProdutoId: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'ProdutoId'
    end
    object cdsProdutosQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object cdsProdutosValorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'ValorUnitario'
      currency = True
    end
    object cdsProdutosValorTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
      currency = True
    end
    object cdsProdutosDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 100
    end
    object cdsProdutosValorTotalPedido: TAggregateField
      FieldName = 'ValorTotalPedido'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(ValorTotal)'
    end
  end
  object dtsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 368
    Top = 128
  end
end
