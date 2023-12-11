unit uSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.SqlExpr, maskUtils,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,FireDAC.VCLUI.Wait;

type
  TfrmSearch = class(TForm)
    Panel2: TPanel;
    btnSelecionar: TSpeedButton;
    grdDados: TDBGrid;
    StatusBar1: TStatusBar;
    dtsBusca: TDataSource;
    cdsBusca: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdDadosKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdDadosDblClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    procedure SelecionarItem;
    { Private declarations }
  public
    { Public declarations }
    fBusca: integer;
    fReturnField: String;
    fOpener: TForm;
    procedure openBusca(Opener: TForm; ReturnField: string; Busca: integer;
      FiltroInicial: string = ''; bFiltro: boolean = false);
    procedure setSQL;

  end;

var
  frmSearch: TfrmSearch;

const
  cBuscaCliente: integer = 0;
  cBuscaProduto: integer = 1;
  cBuscaPedido: integer = 2;

implementation

{$R *.dfm}

uses uClienteClass, uPedidoClass, uProdutoClass;

procedure TfrmSearch.setSQL;
begin


end;


procedure TfrmSearch.btnSelecionarClick(Sender: TObject);
begin
  if (cdsBusca.RecordCount > 0) then
    SelecionarItem;
end;

procedure TfrmSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmSearch := nil;
end;

procedure TfrmSearch.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
end;

procedure TfrmSearch.SelecionarItem;
var
  i: integer;
begin

  for i := 0 to fOpener.ComponentCount -1 do
  begin
    if fOpener.Components[i].Name = fReturnField then
    try
      TCustomEdit(fOpener.Components[i]).Text := cdsBusca.Fields[0].asString;

      TCustomEdit(fOpener.Components[i]).Tag := cdsBusca.Fields[0].asInteger;
    except
       raise exception.Create('Tratar tipo de componente de retorno!');
    end;
  end;

  Close;
end;

procedure TfrmSearch.grdDadosDblClick(Sender: TObject);
begin
  if (cdsBusca.RecordCount > 0) then
    SelecionarItem;
end;

procedure TfrmSearch.grdDadosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    grdDadosDblClick(Self);
end;

procedure TfrmSearch.openBusca(Opener: TForm; ReturnField: string; Busca: integer; FiltroInicial: string; bFiltro: boolean);
var
  objCliente: TCliente;
  objProduto: TProduto;
  objPedido: TPedido;
begin
  fReturnField := ReturnField;
  fBusca := Busca;
  fOpener := Opener;

  case FBusca of
    0: begin
      objCliente := TCliente.Create;
      cdsBusca.Data := objCliente.getClientes;
    end;
    1: begin
      objProduto := TProduto.Create;
      cdsBusca.Data := objProduto.getProdutos;
    end;
    2: begin
      objPedido := TPedido.Create;
      cdsBusca.Data := objPedido.getPedidos;
    end;
  end;

  cdsBusca.Open;

  frmSearch.ShowModal;
end;


end.
