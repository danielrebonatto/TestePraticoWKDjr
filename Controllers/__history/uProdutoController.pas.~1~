unit uProdutoController;

interface

uses
  uProdutoClass;

type
  TProdutoController = class
  public
    function getProduto(iProdutoId: integer): TProduto;
    function getProdutos: OleVariant;
  end;

implementation

{ TProdutoController }

function TProdutoController.getProduto(iProdutoId: integer): TProduto;
var
  objProd: TProduto;
begin
  objProd := TProduto.Create(iProdutoId);
  Result := objProd;
end;

function TProdutoController.getProdutos: OleVariant;
begin

end;

end.
