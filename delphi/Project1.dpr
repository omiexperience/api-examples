program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  BancosCadastro in 'BancosCadastro.pas',
  ClienteCadastro in 'ClienteCadastro.pas',
  UnitFormClient in 'UnitFormClient.pas' {FormClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
