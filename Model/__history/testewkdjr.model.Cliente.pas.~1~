unit uClienteClass;

interface

uses
  System.SysUtils, Datasnap.DBClient;

type
  TCliente = class
  private
    FClienteId: integer;
    FNome: string;
    FCidade: string;
    FUF: string;
  public
    property ClienteId: integer read FClienteId write FClienteId;
    property Nome: string read FNome write FNome;
    property Cidade: string read FCidade write FCidade;
    property UF: string read FUF write FUF;

    constructor Create; overload;
    constructor Create(iClienteId: integer); overload;
    function getClientes: OleVariant;

  end;

implementation

uses
  uDAOClass;

{ TCliente }

constructor TCliente.Create;
begin

end;

constructor TCliente.Create(iClienteId: integer);
var
  objDA: TDataAcess;
  cdsDados: TClientDataSet;
begin
  objDA := TDataAcess.Create;
  try
    cdsDados := TClientDataSet.Create(nil);
    cdsDados.Data := objDA.ExecDataset('SELECT * FROM Cliente WHERE ClienteId = '
                                  + IntToStr(iClienteId));

    if (cdsDados.RecordCount <= 0) then
      raise Exception.Create('Cliente não encontrado!')
    else
    begin
      FClienteId := cdsDados.FieldByName('ClienteId').asInteger;
      FNome := cdsDados.FieldByName('Nome').asString;
      FCidade := cdsDados.FieldByName('Cidade').AsString;
      FUF := cdsDados.FieldByName('UF').AsString;
    end;

  finally
    objDA.Free;
    cdsDados.Free;
  end;

end;

function TCliente.getClientes: OleVariant;
var
  objDA: TDataAcess;
begin
  objDA := TDataAcess.Create;
  try
    Result := objDA.ExecDataset('SELECT * FROM Cliente ORDER BY Nome');
  finally
    objDA.Free;
  end;

end;

end.
