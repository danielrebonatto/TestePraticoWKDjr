unit testewkdjr.model.Pedido;

interface

uses
  System.SysUtils, Datasnap.DBClient, System.Generics.Collections,
  testewkdjr.model.DetalhePedido;

type
  TPedido = class
  private
    FNumPedido: integer;
    FDataEmissao: TDateTime;
    FClienteId: integer;
    FValorTotal: Double;
    FNome: String;

  public
    property NumPedido: integer read FNumPedido write FNumPedido;
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    property ClienteId: integer read FClienteId write FClienteId;
    property ValorTotal: Double read FValorTotal write FValorTotal;
    property Nome: string read FNome;

    constructor Create; overload;
    constructor Create(iNumPedido: integer); overload;

    procedure Inserir;
    procedure Atualizar;
    procedure Excluir;
    function GetNextNumPedido: integer;
    procedure LimpaDetalhes;
    function getPedidos: OleVariant;
  end;

implementation

{ TPedido }

uses testewkdjr.model.DM;

constructor TPedido.Create;
begin

end;

constructor TPedido.Create(iNumPedido: integer);
var
  objDA: TDataAcess;
  cdsDados: TClientDataSet;
begin
  objDA := TDataAcess.Create;
  try
    cdsDados := TClientDataSet.Create(nil);
    cdsDados.Data := objDA.ExecutaDataset('SELECT P.*, C.Nome FROM Pedido P ' +
      'INNER JOIN Cliente C ON P.CLienteId = C.CLienteId ' +
      'WHERE P.NumPedido = ' + IntToStr(iNumPedido));

    if (cdsDados.RecordCount <= 0) then
      raise Exception.Create('Pedido n�o encontrado!')
    else
    begin
      FNumPedido := cdsDados.FieldByName('NumPedido').AsInteger;
      FDataEmissao := cdsDados.FieldByName('DataEmissao').AsDateTime;
      FClienteId := cdsDados.FieldByName('ClienteId').AsInteger;
      FValorTotal := cdsDados.FieldByName('ValorTotal').AsFloat;
      FNome := cdsDados.FieldByName('Nome').AsString;
    end;

  finally
    objDA.Free;
    cdsDados.Free;
  end;
end;

procedure TPedido.Excluir;
var
  objDA: TDataAcess;
  sSQL: string;
begin
  objDA := TDataAcess.Create;

  sSQL := 'DELETE FROM Pedido WHERE NumPedido = ' + QuotedStr(IntToStr(FNumPedido));

  try
    objDA.ExecCommand(sSQL);
  finally
    objDA.Free;
  end;

end;

function TPedido.GetNextNumPedido: integer;
var
  objDA: TDataAcess;
  i: integer;
  Id: string;
begin
  objDA := TDataAcess.Create;
  Id := objDA.ExecCommandSingleValue('SELECT MAX(NumPedido) + 1 FROM Pedido');
  if (Id = '') then
    i := 1
  else
    i := StrToInt(Id);
  result := i;
end;

procedure TPedido.Inserir;
var
  objDA: TDataAcess;
  sSQL, sValorTotal: string;
begin

  sValorTotal := '0';
  if (not FValorTotal.IsNan) then
  begin
    sValorTotal := StringReplace(FormatFloat('#.00', FValorTotal), '.', '',
      [rfReplaceAll]);
    sValorTotal := StringReplace(sValorTotal, ',', '.', [rfReplaceAll]);
  end;

  objDA := TDataAcess.Create;

  sSQL := 'INSERT INTO Pedido (NumPedido, DataEmissao, ClienteId ,ValorTotal) VALUES ('
    + QuotedStr(IntToStr(FNumPedido)) + ', ' + 'NOW(),' + QuotedStr(IntToStr(FClienteId)) + ',' +
    sValorTotal + ')';

  try
    objDA.ExecCommand(sSQL);
  finally
    objDA.Free;
  end;
end;

procedure TPedido.Atualizar;
var
  objDA: TDataAcess;
  sSQL, sValorTotal: string;
begin

  sValorTotal := '0';
  if (not FValorTotal.IsNan) then
  begin
    sValorTotal := StringReplace(FormatFloat('#.00', FValorTotal), '.', '',
      [rfReplaceAll]);
    sValorTotal := StringReplace(sValorTotal, ',', '.', [rfReplaceAll]);
  end;

  objDA := TDataAcess.Create;
  sSQL := 'UPDATE Pedido ' + ' SET ClienteId  = ' + QuotedStr(IntToStr(FClienteId)) + ',' +
    ' ValorTotal  = ' + QuotedStr(sValorTotal) + ' WHERE NumPedido = ' +
    QuotedStr(IntToStr(FNumPedido));

  try
    objDA.ExecCommand(sSQL);
  finally
    objDA.Free;
  end;
end;

procedure TPedido.LimpaDetalhes;
var
  objDA: TDataAcess;
  sSQL: string;
begin
  objDA := TDataAcess.Create;
  sSQL := 'DELETE FROM DetalhePedido WHERE NumPedido = ' + IntToStr(FNumPedido);

  try
    objDA.ExecCommand(sSQL);
  finally
    objDA.Free;
  end;
end;

function TPedido.getPedidos: OleVariant;
var
  objDA: TDataAcess;
begin
  objDA := TDataAcess.Create;
  try
    Result := objDA.ExecutaDataset
      ('SELECT P.NumPedido, C.Nome, P.DataEmissao, P.ValorTotal ' +
      ' FROM Pedido P ' + ' INNER JOIN Cliente C ON P.ClienteId = C.ClienteId '
      + ' ORDER BY P.NumPedido ');

  finally
    objDA.Free;
  end;
end;

end.
