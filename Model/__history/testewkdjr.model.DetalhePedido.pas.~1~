unit uDetalhePedidoClass;

interface

uses
  System.SysUtils, Datasnap.DBClient;

type
  TDetalhePedido = class
  private
    FDetalhePedidoId: integer;
    FNumPedido: integer;
    FProdutoId: integer;
    FQuantidade: integer;
    FValorUnitario: Double;
    FValorTotal: Double;


  public
    property DetalhePedidoId: integer read FDetalhePedidoId write FDetalhePedidoId;
    property NumPedido: integer read FNumPedido write FNumPedido;
    property ProdutoId: integer read FProdutoId write FProdutoId;
    property Quantidade: integer read FQuantidade write FQuantidade;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property ValorTotal: Double read FValorTotal write FValorTotal;


    constructor Create; overload;
    constructor Create(iProdutoId: integer); overload;
    function getDetalhesPedidos(iNumPedido: integer): OleVariant;

    procedure Inserir;
    procedure Excluir;
    procedure ExcluirPorPedido(iNumPedido: Integer);
  end;


implementation

{ TDetalhePedido }

uses uDAOClass;

constructor TDetalhePedido.Create;
begin

end;

constructor TDetalhePedido.Create(iProdutoId: integer);
begin

end;

procedure TDetalhePedido.Excluir;
var
  objDA: TDataAcess;
  sSQL: string;
begin
  objDA := TDataAcess.Create;

  sSQL := 'DELETE FROM DetalhePedido WHERE DetalhePedidoId = ' + IntToStr(FDetalhePedidoId);

  try
    objDA.ExecCommand(sSQL);
  finally
    objDA.Free;
  end;
end;

procedure TDetalhePedido.ExcluirPorPedido(iNumPedido: Integer);
var
  objDA: TDataAcess;
  sSQL: string;
begin
  objDA := TDataAcess.Create;

  sSQL := 'DELETE FROM DetalhePedido WHERE NumPedido = ' + IntToStr(iNumPedido);

  try
    objDA.ExecCommand(sSQL);
  finally
    objDA.Free;
  end;

end;

procedure TDetalhePedido.Inserir;
var
  objDA: TDataAcess;
  sSQL, sValorTotal, sValorUnitario: string;
begin

  sValorUnitario := '0';
  if (not FValorTotal.IsNan) then
  begin
    sValorUnitario := StringReplace(FormatFloat('#.00',FValorUnitario), '.', '',[rfReplaceAll]);
    sValorUnitario := StringReplace(sValorUnitario, ',', '.',[rfReplaceAll]);
  end;

  sValorTotal := '0';
  if (not FValorTotal.IsNan) then
  begin
    sValorTotal := StringReplace(FormatFloat('#.00',FValorTotal), '.', '',[rfReplaceAll]);
    sValorTotal := StringReplace(sValorTotal, ',', '.',[rfReplaceAll]);
  end;

  objDA := TDataAcess.Create;

  sSQL := 'INSERT INTO  DetalhePedido (NumPedido, ProdutoId, ' +
            'Quantidade, ValorUnitario, ValorTotal) VALUES (' +
           IntToStr(FNumPedido) + ',' +
           IntToStr(FProdutoId) + ',' +
           IntToStr(FQuantidade) + ',' +
           sValorUnitario + ',' +
           sValorTotal + ')';

  try
    objDA.ExecCommand(sSQL);
  finally
    objDA.Free;
  end;

end;

function TDetalhePedido.getDetalhesPedidos(iNumPedido: integer): OleVariant;
var
  objDA: TDataAcess;
begin
  objDA := TDataAcess.Create;
  try
    Result := objDA.ExecDataset('SELECT D.*, P.Descricao '+
                                ' FROM DetalhePedido D ' +
                                ' INNER JOIN Produto P ON D.ProdutoId = P.ProdutoId ' +
                                ' WHERE D.NumPedido = ' + IntToStr(iNumPedido) +
                                ' ORDER BY D.DetalhePedidoId ');
  finally
    objDA.Free;
  end;
end;

end.
