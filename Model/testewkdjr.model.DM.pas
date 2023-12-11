unit testewkdjr.model.DM;

interface

uses
  Vcl.Dialogs, Data.DB, Data.SqlExpr, System.SysUtils, Vcl.Forms,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider;

type
  TConnection = class(TFDConnection)
  strict private
    class var FInstance: TConnection;
  private
    class procedure ReleaseInstance();
  public
    class function GetInstance(): TConnection;
  end;

type
  TDataAcess = class
  private
    FConn: TFDConnection;
    function getFDQuery(sSQL: String): TFDQuery;
  public
    property Conn: TFDConnection read FConn write FConn;

    constructor Create;
    procedure ExecCommand(const sSQL: string);
    function ExecutaDataset(const sSQL: string): OleVariant;
    function ExecCommandSingleValue(const sSQL: string): String;

  end;

implementation

class function TConnection.GetInstance: TConnection;
var
  FDManager: TFDCustomManager;
begin

  if not Assigned(Self.FInstance) then
  begin

    FDManager := TFDCustomManager.Create(Application);
    FDManager.ConnectionDefFileName := ExtractFilePath(Application.ExeName) + 'config.ini';
    FDManager.ConnectionDefFileAutoLoad := True;

    Self.FInstance := TConnection.Create(Application);
    Self.FInstance.ConnectionName := 'MySQLConnection';
    Self.FInstance.LoginPrompt := false;
    Self.FInstance.ConnectionDefName := 'MySQL';
    Self.FInstance.Connected := True;
  end;

  Result := Self.FInstance;
end;

class procedure TConnection.ReleaseInstance;
begin
  if Assigned(Self.FInstance) then
  begin
    Self.FInstance.Connected := false;
    Self.FInstance.Free;
  end;
end;

constructor TDataAcess.Create;
begin
  FConn := TConnection.GetInstance;
end;

procedure TDataAcess.ExecCommand(const sSQL: string);
var
  sqlQuery: TFDQuery;
begin
  sqlQuery := getFDQuery(sSQL);
  try
    try
      sqlQuery.ExecSQL();
    except
      on E: Exception do
        raise Exception.Create(E.Message);
    end;
  finally
    sqlQuery.Free;
  end;
end;

function TDataAcess.ExecCommandSingleValue(const sSQL: string): String;
var
  cdsRetorno: TClientDataSet;
begin
  cdsRetorno := TClientDataSet.Create(nil);
  try
    cdsRetorno.Data := ExecutaDataset(sSQL);
    cdsRetorno.Open;
    Result := cdsRetorno.Fields[0].AsString;
  finally
    cdsRetorno.Free;
  end;
end;

function TDataAcess.ExecutaDataset(const sSQL: string): OleVariant;
var
  sqlQuery: TFDQuery;
  dsProv: TDataSetProvider;
  cdsRetorno: TClientDataSet;
begin

  sqlQuery := getFDQuery(sSQL);
  dsProv := TDataSetProvider.Create(nil);
  dsProv.DataSet := sqlQuery;
  cdsRetorno := TClientDataSet.Create(nil);
  cdsRetorno.SetProvider(dsProv);
  try
    cdsRetorno.Open;
    Result := cdsRetorno.Data;
  finally
    cdsRetorno.Free;
    dsProv.Free;
    sqlQuery.Free;
  end;
end;

function TDataAcess.getFDQuery(sSQL: String): TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FConn;
  Result.SQL.Add(sSQL);
end;

end.
