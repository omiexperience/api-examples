// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://app.omie.com.br/api/v1/geral/bancos/?WSDL
//  >Import : http://app.omie.com.br/api/v1/geral/bancos/?WSDL>0
// Encoding : UTF-8
// Version  : 1.0
// (27/05/2016 10:13:03 - - $Rev: 69934 $)
// ************************************************************************ //

unit BancosCadastro;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;

{TODO -o Heraldo Fentes (hfentes@gmail.com) : Criação dos headers para autenticação }
{************************ inicio ******************************}
const
  IS_TEXT = $0020;

type
  APP_KEY = class(TSOAPHeader)
  private
    FValue: string;
  published
    property Value: string Index (IS_TEXT) read FValue write FValue;
  end;

type
  APP_SECRET = class(TSOAPHeader)
  private
    FValue: string;
  published
    property Value: string Index (IS_TEXT) read FValue write FValue;
  end;
{************************** fim ********************************}

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  fin_bancos_cadastro_chave = class;            { "http://app.omie.com.br/api/v1/geral/bancos/?WSDL"[GblCplx] }
  fin_banco_cadastro   = class;                 { "http://app.omie.com.br/api/v1/geral/bancos/?WSDL"[GblCplx] }
  fin_bancos_cadastro  = class;                 { "http://app.omie.com.br/api/v1/geral/bancos/?WSDL"[GblCplx] }
  fin_bancos_list_response = class;             { "http://app.omie.com.br/api/v1/geral/bancos/?WSDL"[GblCplx] }
  fin_bancos_list_request = class;              { "http://app.omie.com.br/api/v1/geral/bancos/?WSDL"[GblCplx] }

  fin_banco_cadastroArray = array of fin_banco_cadastro;   { "http://app.omie.com.br/api/v1/geral/bancos/?WSDL"[GblCplx] }


  // ************************************************************************ //
  // XML       : fin_bancos_cadastro_chave, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/bancos/?WSDL
  // ************************************************************************ //
  fin_bancos_cadastro_chave = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
  published
    property codigo: string  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
  end;



  // ************************************************************************ //
  // XML       : fin_banco_cadastro, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/bancos/?WSDL
  // ************************************************************************ //
  fin_banco_cadastro = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    Ftipo: string;
    Ftipo_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const Astring: string);
    function  tipo_Specified(Index: Integer): boolean;
  published
    property codigo: string  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property nome:   string  Index (IS_OPTN) read Fnome write Setnome stored nome_Specified;
    property tipo:   string  Index (IS_OPTN) read Ftipo write Settipo stored tipo_Specified;
  end;



  // ************************************************************************ //
  // XML       : fin_bancos_cadastro, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/bancos/?WSDL
  // ************************************************************************ //
  fin_bancos_cadastro = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    Ftipo: string;
    Ftipo_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const Astring: string);
    function  tipo_Specified(Index: Integer): boolean;
  published
    property codigo: string  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property nome:   string  Index (IS_OPTN) read Fnome write Setnome stored nome_Specified;
    property tipo:   string  Index (IS_OPTN) read Ftipo write Settipo stored tipo_Specified;
  end;



  // ************************************************************************ //
  // XML       : fin_bancos_list_response, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/bancos/?WSDL
  // ************************************************************************ //
  fin_bancos_list_response = class(TRemotable)
  private
    Fpagina: Int64;
    Ftotal_de_paginas: Int64;
    Fregistros: Int64;
    Ftotal_de_registros: Int64;
    Ffin_banco_cadastro: fin_banco_cadastroArray;
  public
    destructor Destroy; override;
  published
    property pagina:             Int64                    read Fpagina write Fpagina;
    property total_de_paginas:   Int64                    read Ftotal_de_paginas write Ftotal_de_paginas;
    property registros:          Int64                    read Fregistros write Fregistros;
    property total_de_registros: Int64                    read Ftotal_de_registros write Ftotal_de_registros;
    property fin_banco_cadastro: fin_banco_cadastroArray  read Ffin_banco_cadastro write Ffin_banco_cadastro;
  end;



  // ************************************************************************ //
  // XML       : fin_bancos_list_request, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/bancos/?WSDL
  // ************************************************************************ //
  fin_bancos_list_request = class(TRemotable)
  private
    Fpagina: Int64;
    Fregistros_por_pagina: Int64;
    Fapenas_importado_api: string;
    Fordenar_por: string;
    Fordenar_por_Specified: boolean;
    Fordem_descrescente: string;
    Fordem_descrescente_Specified: boolean;
    procedure Setordenar_por(Index: Integer; const Astring: string);
    function  ordenar_por_Specified(Index: Integer): boolean;
    procedure Setordem_descrescente(Index: Integer; const Astring: string);
    function  ordem_descrescente_Specified(Index: Integer): boolean;
  published
    property pagina:               Int64   read Fpagina write Fpagina;
    property registros_por_pagina: Int64   read Fregistros_por_pagina write Fregistros_por_pagina;
    property apenas_importado_api: string  read Fapenas_importado_api write Fapenas_importado_api;
    property ordenar_por:          string  Index (IS_OPTN) read Fordenar_por write Setordenar_por stored ordenar_por_Specified;
    property ordem_descrescente:   string  Index (IS_OPTN) read Fordem_descrescente write Setordem_descrescente stored ordem_descrescente_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://app.omie.com.br/api/v1/geral/bancos/?WSDL
  // soapAction: http://app.omie.com.br/api/v1/geral/bancos/?WSDL%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : BancosCadastroSoap
  // service   : BancosCadastro
  // port      : BancosCadastroSoap
  // URL       : http://app.omie.com.br/api/v1/geral/bancos/
  // ************************************************************************ //
  BancosCadastroSoap = interface(IInvokable)
  ['{0CD309A5-B0E3-B259-8556-9EE373378993}']
    function  ConsultarBanco(const fin_bancos_cadastro_chave: fin_bancos_cadastro_chave): fin_bancos_cadastro; stdcall;
    function  ListarBancos(const fin_bancos_list_request: fin_bancos_list_request): fin_bancos_list_response; stdcall;
  end;

function GetBancosCadastroSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): BancosCadastroSoap;


implementation
  uses System.SysUtils;

function GetBancosCadastroSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): BancosCadastroSoap;
const
  defWSDL = 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL';
  defURL  = 'http://app.omie.com.br/api/v1/geral/bancos/';
  defSvc  = 'BancosCadastro';
  defPrt  = 'BancosCadastroSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as BancosCadastroSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure fin_bancos_cadastro_chave.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function fin_bancos_cadastro_chave.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure fin_banco_cadastro.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function fin_banco_cadastro.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure fin_banco_cadastro.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function fin_banco_cadastro.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure fin_banco_cadastro.Settipo(Index: Integer; const Astring: string);
begin
  Ftipo := Astring;
  Ftipo_Specified := True;
end;

function fin_banco_cadastro.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

procedure fin_bancos_cadastro.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function fin_bancos_cadastro.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure fin_bancos_cadastro.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function fin_bancos_cadastro.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure fin_bancos_cadastro.Settipo(Index: Integer; const Astring: string);
begin
  Ftipo := Astring;
  Ftipo_Specified := True;
end;

function fin_bancos_cadastro.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

destructor fin_bancos_list_response.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ffin_banco_cadastro)-1 do
    System.SysUtils.FreeAndNil(Ffin_banco_cadastro[I]);
  System.SetLength(Ffin_banco_cadastro, 0);
  inherited Destroy;
end;

procedure fin_bancos_list_request.Setordenar_por(Index: Integer; const Astring: string);
begin
  Fordenar_por := Astring;
  Fordenar_por_Specified := True;
end;

function fin_bancos_list_request.ordenar_por_Specified(Index: Integer): boolean;
begin
  Result := Fordenar_por_Specified;
end;

procedure fin_bancos_list_request.Setordem_descrescente(Index: Integer; const Astring: string);
begin
  Fordem_descrescente := Astring;
  Fordem_descrescente_Specified := True;
end;

function fin_bancos_list_request.ordem_descrescente_Specified(Index: Integer): boolean;
begin
  Result := Fordem_descrescente_Specified;
end;

initialization
  { BancosCadastroSoap }
  InvRegistry.RegisterInterface(TypeInfo(BancosCadastroSoap), 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(BancosCadastroSoap), 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(fin_banco_cadastroArray), 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL', 'fin_banco_cadastroArray');
  RemClassRegistry.RegisterXSClass(fin_bancos_cadastro_chave, 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL', 'fin_bancos_cadastro_chave');
  RemClassRegistry.RegisterXSClass(fin_banco_cadastro, 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL', 'fin_banco_cadastro');
  RemClassRegistry.RegisterXSClass(fin_bancos_cadastro, 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL', 'fin_bancos_cadastro');
  RemClassRegistry.RegisterXSClass(fin_bancos_list_response, 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL', 'fin_bancos_list_response');
  RemClassRegistry.RegisterXSClass(fin_bancos_list_request, 'http://app.omie.com.br/api/v1/geral/bancos/?WSDL', 'fin_bancos_list_request');

  {TODO -o Heraldo Fentes (hfentes@gmail.com) : registrando a chamada e as chaves para autenticacao }
  {************************ inicio ******************************}
  InvRegistry.RegisterInvokeOptions(TypeInfo(BancosCadastroSoap), [ioDefault, ioDocument, ioHasReturnParamNames, ioHasNamespace]);
  InvRegistry.RegisterHeaderClass(TypeInfo(BancosCadastroSoap), APP_KEY, 'app_key', 'http://app.omie.com.br/api/v1/geral/bancos/');
  InvRegistry.RegisterHeaderClass(TypeInfo(BancosCadastroSoap), APP_SECRET, 'app_secret', 'http://app.omie.com.br/api/v1/geral/bancos/');
  {************************* fim ********************************}
end.