program TesteWKDjr;

uses
  Vcl.Forms,
  testewkdjr.model.Cliente in 'Model\testewkdjr.model.Cliente.pas',
  testewkdjr.model.DM in 'Model\testewkdjr.model.DM.pas',
  testewkdjr.model.DetalhePedido in 'Model\testewkdjr.model.DetalhePedido.pas',
  testewkdjr.model.Pedido in 'Model\testewkdjr.model.Pedido.pas',
  testewkdjr.model.Produto in 'Model\testewkdjr.model.Produto.pas',
  testewkdjr.controller.Cliente in 'Controllers\testewkdjr.controller.Cliente.pas',
  testewkdjr.controller.Pedido in 'Controllers\testewkdjr.controller.Pedido.pas',
  testewkdjr.controller.Produto in 'Controllers\testewkdjr.controller.Produto.pas',
  testewkdjr.view.Pedido in 'View\testewkdjr.view.Pedido.pas' {frmPedidoVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPedidoVenda, frmPedidoVenda);
  Application.Run;
end.
