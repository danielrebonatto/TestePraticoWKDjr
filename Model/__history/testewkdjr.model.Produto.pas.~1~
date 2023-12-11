unit uProdutoClass;

interface

uses
  System.SysUtils, Datasnap.DBClient;

type
  TProduto = class
  private
    FProdutoId: integer;
    FDescricao: string;
    FPrecoVenda: double;

  public
    property ProdutoId: integer read FProdutoId write FProdutoId;
    property Descricao: string read FDescricao write FDescricao;
    property PrecoVenda: double read FPrecoVenda write FPrecoVenda;

    constructor Create; overload;
    constructor Create(iProdutoId: integer); overload;
    function getProdutos: OleVariant;
  end;

implementation

{ TProduto }

uses uDAOClass;

constructor TProduto.Create;
begin

end;

constructor TProduto.Create(iProdutoId: integer);
var
  objDA: TDataAcess;
  cdsDados: TClientDataSet;
begin
  objDA := TDataAcess.Create;
  try
    cdsDados := TClientDataSet.Create(nil);
    cdsDados.Data := objDA.ExecDataset('SELECT * FROM Produto WHERE ProdutoId = '
                                  + IntToStr(iProdutoId));

    if (cdsDados.RecordCount <= 0) then
      raise Exception.Create('Produto não encontrado!')
    else
    begin
      FProdutoId := cdsDados.FieldByName('ProdutoId').asInteger;
      FDescricao := cdsDados.FieldByName('Descricao').asString;
      PrecoVenda := cdsDados.FieldByName('PrecoVenda').AsFloat;
    end;

  finally
    objDA.Free;
    cdsDados.Free;
  end;

end;

function TProduto.getProdutos: OleVariant;
var
  objDA: TDataAcess;
begin
  objDA := TDataAcess.Create;
  try
    Result := objDA.ExecDataset('SELECT * FROM Produto ORDER BY Descricao');
  finally
    objDA.Free;
  end;
end;

end.
