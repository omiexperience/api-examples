unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Soap.InvokeRegistry, Soap.Rio,
  Soap.SOAPHTTPClient, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    memRequest: TMemo;
    HTTPRIO: THTTPRIO;
    memResponse: TMemo;
    lbl1: TLabel;
    lbl2: TLabel;
    editApp_key: TEdit;
    editApp_secret: TEdit;
    lbl3: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    memBancos: TMemo;
    btnCadCliente: TButton;
    Button1: TButton;
    btnRequest: TButton;
    btnLoop: TButton;
    DBGrid1: TDBGrid;
    dsClient: TDataSource;
    CdsClient: TClientDataSet;
    CdsClientcodigo_omie: TIntegerField;
    CdsClientcodigo_integracao: TStringField;
    CdsClientcnpj_cpf: TStringField;
    CdsClientrazao_social: TStringField;
    CdsClientnome_fantasia: TStringField;
    Button2: TButton;
    procedure HTTPRIOAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure HTTPRIOBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure btnRequestClick(Sender: TObject);
    procedure btnLoopClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCadClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure InserirChave();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  BancosCadastro, ClienteCadastro, UnitFormClient;

{$R *.dfm}

procedure TForm1.btnCadClienteClick(Sender: TObject);
var
  oCCSoap : ClientesCadastroSoap;  //WS
  request : clientes_cadastro; //request

  response : clientes_status; //response
  i : Integer;
begin
  {TODO -o Edson Alves (edson.alvesan@gmail.com) : Instancia o Formulario de Cadastro de Cliente }
  FormClient := TFormClient.Create(Self);
  try
   if FormClient.ShowModal = mrOk then
   begin

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : Inserir a chaves OMIE_APP_KEY e OMIE_APP_SECRET }
    InserirChave;

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : Monta request - parametros para requisição }
    request := clientes_cadastro.Create;
    with request do
    begin
     codigo_cliente_integracao := FormClient.edtCodSisLocal.Text;
     cnpj_cpf                  := FormClient.edtcpf_cnpj.Text;
     razao_social              := FormClient.edtRazao.Text;
     nome_fantasia             := FormClient.edtFantasia.Text;
    end;

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : instancia o objeto ws com o nosso HTTPRIO }
    oCCSoap := GetClientesCadastroSoap(false,EmptyStr,HTTPRIO);
    try
      response := oCCSoap.IncluirCliente(request);
    finally
      oCCSoap := nil;
    end;

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : Recuperando dados da consulta }
    memBancos.Clear;
    memBancos.Lines.Add(response.descricao_status);
   end;

  finally
   FormClient.Release;
   FormClient:= nil;
  end;

end;

procedure TForm1.btnLoopClick(Sender: TObject);
var
  oCCSoap : BancosCadastroSoap;  //WS
  request : fin_bancos_list_request; //request

  response : fin_bancos_list_response; //response
  iPag, iTotalPag, i : Integer;
begin
  iPag := 1;
  iTotalPag := 999999999;
  memBancos.Clear;
  {Loop entre as paginas }
  while iPag < iTotalPag do
  begin
    {TODO -o Heraldo Fentes (hfentes@gmail.com) : Inserir a chaves OMIE_APP_KEY e OMIE_APP_SECRET }
    InserirChave;

    {TODO -o Heraldo Fentes (hfentes@gmail.com) : Monta request - parametros para requisição }
	 request := fin_bancos_list_request.Create;
    with request do
    begin
      pagina := iPag;
      registros_por_pagina := 20;
      apenas_importado_api := 'N';
    end;
    {TODO -o Heraldo Fentes (hfentes@gmail.com) : instancia o objeto ws com o nosso HTTPRIO }
	 oCCSoap := GetBancosCadastroSoap(false,EmptyStr,HTTPRIO);
    response := oCCSoap.ListarBancos(request);

    {TODO -o Heraldo Fentes (hfentes@gmail.com) : Recuperando dados da consulta }
	 iTotalPag := response.total_de_paginas;
    for I := 0 to response.registros -1 do
    begin
      memBancos.Lines.Add(IntToStr(iPag)+'/'+IntToStr(i)+':'+ response.fin_banco_cadastro[i].tipo+' - '+response.fin_banco_cadastro[i].codigo +' - '+response.fin_banco_cadastro[i].nome);
    end;
    inc(iPag);
  end;
  oCCSoap := nil;
  request.Free;
end;

procedure TForm1.btnRequestClick(Sender: TObject);
var
  oCCSoap : BancosCadastroSoap;  //WS
  request : fin_bancos_list_request; //request

  response : fin_bancos_list_response; //response
  i : Integer;
begin
  {TODO -o Heraldo Fentes (hfentes@gmail.com) : Inserir a chaves OMIE_APP_KEY e OMIE_APP_SECRET }
  InserirChave;

  {TODO -o Heraldo Fentes (hfentes@gmail.com) : Monta request - parametros para requisição }
  request := fin_bancos_list_request.Create;
  with request do
  begin
    pagina := 1;
    registros_por_pagina := 50;
    apenas_importado_api := 'N';
  end;

  {TODO -o Heraldo Fentes (hfentes@gmail.com) : instancia o objeto ws com o nosso HTTPRIO }
  oCCSoap := GetBancosCadastroSoap(false,EmptyStr,HTTPRIO);
  try
    response := oCCSoap.ListarBancos(request);
  finally
    oCCSoap := nil;
  end;

  {TODO -o Heraldo Fentes (hfentes@gmail.com) : Recuperando dados da consulta }
  memBancos.Clear;
  for I := 0 to response.registros -1 do
  begin
    memBancos.Lines.Add(response.fin_banco_cadastro[i].tipo+' - '+response.fin_banco_cadastro[i].codigo +' - '+response.fin_banco_cadastro[i].nome);
  end;


end;

procedure TForm1.Button1Click(Sender: TObject);
var
  oCCSoap : ClientesCadastroSoap;  //WS
  request : clientes_list_request; //request

  response : clientes_listfull_response; //response
  i : Integer;
begin
   {TODO -o Edson Alves (edson.alvesan@gmail.com) :Inserir a chaves OMIE_APP_KEY e OMIE_APP_SECRET }
  InserirChave;

  {TODO -o Edson Alves (edson.alvesan@gmail.com) : Monta request - parametros para requisição }
  request := clientes_list_request.Create;
  with request do
  begin
    pagina := 1;
    registros_por_pagina := 50;
    apenas_importado_api := 'N';
  end;

  {TODO -o Edson Alves (edson.alvesan@gmail.com) : instancia o objeto ws com o nosso HTTPRIO }
  oCCSoap := GetClientesCadastroSoap(false,EmptyStr,HTTPRIO);
  try
    response := oCCSoap.ListarClientes(request);
  finally
    oCCSoap := nil;
  end;

  {TODO -o Edson Alves (edson.alvesan@gmail.com) : Limpa o DataSet e Popula com Result da Request }
  CdsClient.EmptyDataSet;
  for I := 0 to response.registros -1 do
  begin
    CdsClient.Insert;
    CdsClientcodigo_omie.AsInteger      := response.clientes_cadastro[i].codigo_cliente_omie;
    CdsClientcodigo_integracao.AsString := response.clientes_cadastro[i].codigo_cliente_integracao;
    CdsClientcnpj_cpf.AsString          := response.clientes_cadastro[i].cnpj_cpf;
    CdsClientrazao_social.AsString      := response.clientes_cadastro[i].razao_social;
    CdsClientnome_fantasia.AsString     := response.clientes_cadastro[i].nome_fantasia;
    CdsClient.Post;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  oCCSoap : ClientesCadastroSoap;  //WS
  request : clientes_cadastro; //request

  response : clientes_status; //response
  i : Integer;
begin
 {TODO -o Edson Alves (edson.alvesan@gmail.com) : Instancia o Formulario de Cadastro de Cliente }
  FormClient := TFormClient.Create(Self);
  try
    FormClient.Edit1.Text          := IntToStr(CdsClientcodigo_omie.Value);
    FormClient.edtCodSisLocal.Text := CdsClientcodigo_integracao.Value;
    FormClient.edtcpf_cnpj.Text    := CdsClientcnpj_cpf.Value;
    FormClient.edtRazao.Text       := CdsClientrazao_social.Value;
    FormClient.edtFantasia.Text    := CdsClientnome_fantasia.Value;

   if FormClient.ShowModal = mrOk then
   begin

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : Inserir a chaves OMIE_APP_KEY e OMIE_APP_SECRET }
    InserirChave;

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : Monta request - parametros para requisição }
    request := clientes_cadastro.Create;
    with request do
    begin
     codigo_cliente_integracao := FormClient.edtCodSisLocal.Text;
     cnpj_cpf                  := FormClient.edtcpf_cnpj.Text;
     razao_social              := FormClient.edtRazao.Text;
     nome_fantasia             := FormClient.edtFantasia.Text;
    end;

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : instancia o objeto ws com o nosso HTTPRIO }
    oCCSoap := GetClientesCadastroSoap(false,EmptyStr,HTTPRIO);
    try
      response := oCCSoap.AlterarCliente(request);
    finally
      oCCSoap := nil;
    end;

    {TODO -o Edson Alves (edson.alvesan@gmail.com) : Recuperando dados da consulta }
    memBancos.Clear;
    memBancos.Lines.Add(response.descricao_status);
   end;

  finally
   FormClient.Release;
   FormClient:= nil;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 {TODO -o Edson Alves (edson.alvesan@gmail.com) : Cria o DataSet em memoria }
 CdsClient.CreateDataSet;
end;

procedure TForm1.HTTPRIOAfterExecute(const MethodName: string; SOAPResponse: TStream);
begin
  {TODO -o Heraldo Fentes (hfentes@gmail.com) : mostrar a resposta da requisicao }
  SOAPResponse.Position := 0;
  memResponse.Lines.LoadFromStream(SOAPResponse);
  SOAPResponse.Position := 0;
end;

procedure TForm1.HTTPRIOBeforeExecute(const MethodName: string; SOAPRequest: TStream);
begin
  {TODO -o Heraldo Fentes (hfentes@gmail.com) : mostrar a requisicao }
  SOAPRequest.Position := 0;
  memRequest.Lines.LoadFromStream(SOAPRequest);
  SOAPRequest.Position := 0;
end;


{TODO -o Heraldo Fentes (hfentes@gmail.com) : metodo para inserir as chaves }
procedure TForm1.InserirChave;
var
  kAPP_Key : APP_KEY;
  kAPP_Secret : APP_SECRET;
begin
  kAPP_Key := APP_KEY.Create;
  kAPP_Key.Value := editApp_key.Text;

  kAPP_Secret := APP_SECRET.Create;
  kAPP_Secret.Value := editApp_secret.Text;

  HTTPRIO.SOAPHeaders.Send(kAPP_Key);
  HTTPRIO.SOAPHeaders.Send(kAPP_Secret);
end;

end.
