// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://app.omie.com.br/api/v1/geral/clientes/?WSDL
//  >Import : https://app.omie.com.br/api/v1/geral/clientes/?WSDL>0
// Encoding : UTF-8
// Version  : 1.0
// (02/06/2016 17:08:28 - - $Rev: 45757 $)
// ************************************************************************ //

unit ClienteCadastro;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;

{TODO - Criação dos headers para autenticação }
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

  clientes_cadastro    = class;                 { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientesFiltro       = class;                 { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_list_request = class;                { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_listfull_response = class;           { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_lote_request = class;                { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_lote_response = class;               { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_list_response = class;               { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_status      = class;                 { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_cadastro_resumido = class;           { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  tags                 = class;                 { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_cadastro_chave = class;              { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }

  tagsArray  = array of tags;                   { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }
  clientes_cadastroArray = array of clientes_cadastro;   { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }


  // ************************************************************************ //
  // XML       : clientes_cadastro, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_cadastro = class(TRemotable)
  private
    Fcodigo_cliente_omie: Int64;
    Fcodigo_cliente_omie_Specified: boolean;
    Fcodigo_cliente_integracao: string;
    Fcodigo_cliente_integracao_Specified: boolean;
    Fcnpj_cpf: string;
    Fcnpj_cpf_Specified: boolean;
    Frazao_social: string;
    Frazao_social_Specified: boolean;
    Fnome_fantasia: string;
    Fnome_fantasia_Specified: boolean;
    Flogradouro: string;
    Flogradouro_Specified: boolean;
    Fendereco: string;
    Fendereco_Specified: boolean;
    Fendereco_numero: string;
    Fendereco_numero_Specified: boolean;
    Fcomplemento: string;
    Fcomplemento_Specified: boolean;
    Fbairro: string;
    Fbairro_Specified: boolean;
    Fcidade: string;
    Fcidade_Specified: boolean;
    Festado: string;
    Festado_Specified: boolean;
    Fcep: string;
    Fcep_Specified: boolean;
    Fcodigo_pais: string;
    Fcodigo_pais_Specified: boolean;
    Fcontato: string;
    Fcontato_Specified: boolean;
    Ftelefone1_ddd: string;
    Ftelefone1_ddd_Specified: boolean;
    Ftelefone1_numero: string;
    Ftelefone1_numero_Specified: boolean;
    Ftelefone2_ddd: string;
    Ftelefone2_ddd_Specified: boolean;
    Ftelefone2_numero: string;
    Ftelefone2_numero_Specified: boolean;
    Ffax_ddd: string;
    Ffax_ddd_Specified: boolean;
    Ffax_numero: string;
    Ffax_numero_Specified: boolean;
    Femail: string;
    Femail_Specified: boolean;
    Fhomepage: string;
    Fhomepage_Specified: boolean;
    Fobservacao: string;
    Fobservacao_Specified: boolean;
    Finscricao_municipal: string;
    Finscricao_municipal_Specified: boolean;
    Finscricao_estadual: string;
    Finscricao_estadual_Specified: boolean;
    Finscricao_suframa: string;
    Finscricao_suframa_Specified: boolean;
    Fpessoa_fisica: string;
    Fpessoa_fisica_Specified: boolean;
    Foptante_simples_nacional: string;
    Foptante_simples_nacional_Specified: boolean;
    Fbloqueado: string;
    Fbloqueado_Specified: boolean;
    Fimportado_api: string;
    Fimportado_api_Specified: boolean;
    Ftags: tagsArray;
    Ftags_Specified: boolean;
    procedure Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
    function  codigo_cliente_omie_Specified(Index: Integer): boolean;
    procedure Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
    function  codigo_cliente_integracao_Specified(Index: Integer): boolean;
    procedure Setcnpj_cpf(Index: Integer; const Astring: string);
    function  cnpj_cpf_Specified(Index: Integer): boolean;
    procedure Setrazao_social(Index: Integer; const Astring: string);
    function  razao_social_Specified(Index: Integer): boolean;
    procedure Setnome_fantasia(Index: Integer; const Astring: string);
    function  nome_fantasia_Specified(Index: Integer): boolean;
    procedure Setlogradouro(Index: Integer; const Astring: string);
    function  logradouro_Specified(Index: Integer): boolean;
    procedure Setendereco(Index: Integer; const Astring: string);
    function  endereco_Specified(Index: Integer): boolean;
    procedure Setendereco_numero(Index: Integer; const Astring: string);
    function  endereco_numero_Specified(Index: Integer): boolean;
    procedure Setcomplemento(Index: Integer; const Astring: string);
    function  complemento_Specified(Index: Integer): boolean;
    procedure Setbairro(Index: Integer; const Astring: string);
    function  bairro_Specified(Index: Integer): boolean;
    procedure Setcidade(Index: Integer; const Astring: string);
    function  cidade_Specified(Index: Integer): boolean;
    procedure Setestado(Index: Integer; const Astring: string);
    function  estado_Specified(Index: Integer): boolean;
    procedure Setcep(Index: Integer; const Astring: string);
    function  cep_Specified(Index: Integer): boolean;
    procedure Setcodigo_pais(Index: Integer; const Astring: string);
    function  codigo_pais_Specified(Index: Integer): boolean;
    procedure Setcontato(Index: Integer; const Astring: string);
    function  contato_Specified(Index: Integer): boolean;
    procedure Settelefone1_ddd(Index: Integer; const Astring: string);
    function  telefone1_ddd_Specified(Index: Integer): boolean;
    procedure Settelefone1_numero(Index: Integer; const Astring: string);
    function  telefone1_numero_Specified(Index: Integer): boolean;
    procedure Settelefone2_ddd(Index: Integer; const Astring: string);
    function  telefone2_ddd_Specified(Index: Integer): boolean;
    procedure Settelefone2_numero(Index: Integer; const Astring: string);
    function  telefone2_numero_Specified(Index: Integer): boolean;
    procedure Setfax_ddd(Index: Integer; const Astring: string);
    function  fax_ddd_Specified(Index: Integer): boolean;
    procedure Setfax_numero(Index: Integer; const Astring: string);
    function  fax_numero_Specified(Index: Integer): boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function  email_Specified(Index: Integer): boolean;
    procedure Sethomepage(Index: Integer; const Astring: string);
    function  homepage_Specified(Index: Integer): boolean;
    procedure Setobservacao(Index: Integer; const Astring: string);
    function  observacao_Specified(Index: Integer): boolean;
    procedure Setinscricao_municipal(Index: Integer; const Astring: string);
    function  inscricao_municipal_Specified(Index: Integer): boolean;
    procedure Setinscricao_estadual(Index: Integer; const Astring: string);
    function  inscricao_estadual_Specified(Index: Integer): boolean;
    procedure Setinscricao_suframa(Index: Integer; const Astring: string);
    function  inscricao_suframa_Specified(Index: Integer): boolean;
    procedure Setpessoa_fisica(Index: Integer; const Astring: string);
    function  pessoa_fisica_Specified(Index: Integer): boolean;
    procedure Setoptante_simples_nacional(Index: Integer; const Astring: string);
    function  optante_simples_nacional_Specified(Index: Integer): boolean;
    procedure Setbloqueado(Index: Integer; const Astring: string);
    function  bloqueado_Specified(Index: Integer): boolean;
    procedure Setimportado_api(Index: Integer; const Astring: string);
    function  importado_api_Specified(Index: Integer): boolean;
    procedure Settags(Index: Integer; const AtagsArray: tagsArray);
    function  tags_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigo_cliente_omie:       Int64      Index (IS_OPTN) read Fcodigo_cliente_omie write Setcodigo_cliente_omie stored codigo_cliente_omie_Specified;
    property codigo_cliente_integracao: string     Index (IS_OPTN) read Fcodigo_cliente_integracao write Setcodigo_cliente_integracao stored codigo_cliente_integracao_Specified;
    property cnpj_cpf:                  string     Index (IS_OPTN) read Fcnpj_cpf write Setcnpj_cpf stored cnpj_cpf_Specified;
    property razao_social:              string     Index (IS_OPTN) read Frazao_social write Setrazao_social stored razao_social_Specified;
    property nome_fantasia:             string     Index (IS_OPTN) read Fnome_fantasia write Setnome_fantasia stored nome_fantasia_Specified;
    property logradouro:                string     Index (IS_OPTN) read Flogradouro write Setlogradouro stored logradouro_Specified;
    property endereco:                  string     Index (IS_OPTN) read Fendereco write Setendereco stored endereco_Specified;
    property endereco_numero:           string     Index (IS_OPTN) read Fendereco_numero write Setendereco_numero stored endereco_numero_Specified;
    property complemento:               string     Index (IS_OPTN) read Fcomplemento write Setcomplemento stored complemento_Specified;
    property bairro:                    string     Index (IS_OPTN) read Fbairro write Setbairro stored bairro_Specified;
    property cidade:                    string     Index (IS_OPTN) read Fcidade write Setcidade stored cidade_Specified;
    property estado:                    string     Index (IS_OPTN) read Festado write Setestado stored estado_Specified;
    property cep:                       string     Index (IS_OPTN) read Fcep write Setcep stored cep_Specified;
    property codigo_pais:               string     Index (IS_OPTN) read Fcodigo_pais write Setcodigo_pais stored codigo_pais_Specified;
    property contato:                   string     Index (IS_OPTN) read Fcontato write Setcontato stored contato_Specified;
    property telefone1_ddd:             string     Index (IS_OPTN) read Ftelefone1_ddd write Settelefone1_ddd stored telefone1_ddd_Specified;
    property telefone1_numero:          string     Index (IS_OPTN) read Ftelefone1_numero write Settelefone1_numero stored telefone1_numero_Specified;
    property telefone2_ddd:             string     Index (IS_OPTN) read Ftelefone2_ddd write Settelefone2_ddd stored telefone2_ddd_Specified;
    property telefone2_numero:          string     Index (IS_OPTN) read Ftelefone2_numero write Settelefone2_numero stored telefone2_numero_Specified;
    property fax_ddd:                   string     Index (IS_OPTN) read Ffax_ddd write Setfax_ddd stored fax_ddd_Specified;
    property fax_numero:                string     Index (IS_OPTN) read Ffax_numero write Setfax_numero stored fax_numero_Specified;
    property email:                     string     Index (IS_OPTN) read Femail write Setemail stored email_Specified;
    property homepage:                  string     Index (IS_OPTN) read Fhomepage write Sethomepage stored homepage_Specified;
    property observacao:                string     Index (IS_OPTN) read Fobservacao write Setobservacao stored observacao_Specified;
    property inscricao_municipal:       string     Index (IS_OPTN) read Finscricao_municipal write Setinscricao_municipal stored inscricao_municipal_Specified;
    property inscricao_estadual:        string     Index (IS_OPTN) read Finscricao_estadual write Setinscricao_estadual stored inscricao_estadual_Specified;
    property inscricao_suframa:         string     Index (IS_OPTN) read Finscricao_suframa write Setinscricao_suframa stored inscricao_suframa_Specified;
    property pessoa_fisica:             string     Index (IS_OPTN) read Fpessoa_fisica write Setpessoa_fisica stored pessoa_fisica_Specified;
    property optante_simples_nacional:  string     Index (IS_OPTN) read Foptante_simples_nacional write Setoptante_simples_nacional stored optante_simples_nacional_Specified;
    property bloqueado:                 string     Index (IS_OPTN) read Fbloqueado write Setbloqueado stored bloqueado_Specified;
    property importado_api:             string     Index (IS_OPTN) read Fimportado_api write Setimportado_api stored importado_api_Specified;
    property tags:                      tagsArray  Index (IS_OPTN) read Ftags write Settags stored tags_Specified;
  end;



  // ************************************************************************ //
  // XML       : clientesFiltro, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientesFiltro = class(TRemotable)
  private
    Fcodigo_cliente_omie: Int64;
    Fcodigo_cliente_omie_Specified: boolean;
    Fcodigo_cliente_integracao: string;
    Fcodigo_cliente_integracao_Specified: boolean;
    Fcnpj_cpf: string;
    Fcnpj_cpf_Specified: boolean;
    Frazao_social: string;
    Frazao_social_Specified: boolean;
    Fnome_fantasia: string;
    Fnome_fantasia_Specified: boolean;
    Fendereco: string;
    Fendereco_Specified: boolean;
    Fbairro: string;
    Fbairro_Specified: boolean;
    Fcidade: string;
    Fcidade_Specified: boolean;
    Festado: string;
    Festado_Specified: boolean;
    Fcep: string;
    Fcep_Specified: boolean;
    Fcontato: string;
    Fcontato_Specified: boolean;
    Femail: string;
    Femail_Specified: boolean;
    Fhomepage: string;
    Fhomepage_Specified: boolean;
    Finscricao_municipal: string;
    Finscricao_municipal_Specified: boolean;
    Finscricao_estadual: string;
    Finscricao_estadual_Specified: boolean;
    Finscricao_suframa: string;
    Finscricao_suframa_Specified: boolean;
    Fpessoa_fisica: string;
    Fpessoa_fisica_Specified: boolean;
    Foptante_simples_nacional: string;
    Foptante_simples_nacional_Specified: boolean;
    procedure Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
    function  codigo_cliente_omie_Specified(Index: Integer): boolean;
    procedure Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
    function  codigo_cliente_integracao_Specified(Index: Integer): boolean;
    procedure Setcnpj_cpf(Index: Integer; const Astring: string);
    function  cnpj_cpf_Specified(Index: Integer): boolean;
    procedure Setrazao_social(Index: Integer; const Astring: string);
    function  razao_social_Specified(Index: Integer): boolean;
    procedure Setnome_fantasia(Index: Integer; const Astring: string);
    function  nome_fantasia_Specified(Index: Integer): boolean;
    procedure Setendereco(Index: Integer; const Astring: string);
    function  endereco_Specified(Index: Integer): boolean;
    procedure Setbairro(Index: Integer; const Astring: string);
    function  bairro_Specified(Index: Integer): boolean;
    procedure Setcidade(Index: Integer; const Astring: string);
    function  cidade_Specified(Index: Integer): boolean;
    procedure Setestado(Index: Integer; const Astring: string);
    function  estado_Specified(Index: Integer): boolean;
    procedure Setcep(Index: Integer; const Astring: string);
    function  cep_Specified(Index: Integer): boolean;
    procedure Setcontato(Index: Integer; const Astring: string);
    function  contato_Specified(Index: Integer): boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function  email_Specified(Index: Integer): boolean;
    procedure Sethomepage(Index: Integer; const Astring: string);
    function  homepage_Specified(Index: Integer): boolean;
    procedure Setinscricao_municipal(Index: Integer; const Astring: string);
    function  inscricao_municipal_Specified(Index: Integer): boolean;
    procedure Setinscricao_estadual(Index: Integer; const Astring: string);
    function  inscricao_estadual_Specified(Index: Integer): boolean;
    procedure Setinscricao_suframa(Index: Integer; const Astring: string);
    function  inscricao_suframa_Specified(Index: Integer): boolean;
    procedure Setpessoa_fisica(Index: Integer; const Astring: string);
    function  pessoa_fisica_Specified(Index: Integer): boolean;
    procedure Setoptante_simples_nacional(Index: Integer; const Astring: string);
    function  optante_simples_nacional_Specified(Index: Integer): boolean;
  published
    property codigo_cliente_omie:       Int64   Index (IS_OPTN) read Fcodigo_cliente_omie write Setcodigo_cliente_omie stored codigo_cliente_omie_Specified;
    property codigo_cliente_integracao: string  Index (IS_OPTN) read Fcodigo_cliente_integracao write Setcodigo_cliente_integracao stored codigo_cliente_integracao_Specified;
    property cnpj_cpf:                  string  Index (IS_OPTN) read Fcnpj_cpf write Setcnpj_cpf stored cnpj_cpf_Specified;
    property razao_social:              string  Index (IS_OPTN) read Frazao_social write Setrazao_social stored razao_social_Specified;
    property nome_fantasia:             string  Index (IS_OPTN) read Fnome_fantasia write Setnome_fantasia stored nome_fantasia_Specified;
    property endereco:                  string  Index (IS_OPTN) read Fendereco write Setendereco stored endereco_Specified;
    property bairro:                    string  Index (IS_OPTN) read Fbairro write Setbairro stored bairro_Specified;
    property cidade:                    string  Index (IS_OPTN) read Fcidade write Setcidade stored cidade_Specified;
    property estado:                    string  Index (IS_OPTN) read Festado write Setestado stored estado_Specified;
    property cep:                       string  Index (IS_OPTN) read Fcep write Setcep stored cep_Specified;
    property contato:                   string  Index (IS_OPTN) read Fcontato write Setcontato stored contato_Specified;
    property email:                     string  Index (IS_OPTN) read Femail write Setemail stored email_Specified;
    property homepage:                  string  Index (IS_OPTN) read Fhomepage write Sethomepage stored homepage_Specified;
    property inscricao_municipal:       string  Index (IS_OPTN) read Finscricao_municipal write Setinscricao_municipal stored inscricao_municipal_Specified;
    property inscricao_estadual:        string  Index (IS_OPTN) read Finscricao_estadual write Setinscricao_estadual stored inscricao_estadual_Specified;
    property inscricao_suframa:         string  Index (IS_OPTN) read Finscricao_suframa write Setinscricao_suframa stored inscricao_suframa_Specified;
    property pessoa_fisica:             string  Index (IS_OPTN) read Fpessoa_fisica write Setpessoa_fisica stored pessoa_fisica_Specified;
    property optante_simples_nacional:  string  Index (IS_OPTN) read Foptante_simples_nacional write Setoptante_simples_nacional stored optante_simples_nacional_Specified;
  end;



  // ************************************************************************ //
  // XML       : clientes_list_request, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_list_request = class(TRemotable)
  private
    Fpagina: Int64;
    Fregistros_por_pagina: Int64;
    Fapenas_importado_api: string;
    Fordenar_por: string;
    Fordenar_por_Specified: boolean;
    Fordem_decrescente: string;
    Fordem_decrescente_Specified: boolean;
    Ffiltrar_por_data_de: string;
    Ffiltrar_por_data_de_Specified: boolean;
    Ffiltrar_por_data_ate: string;
    Ffiltrar_por_data_ate_Specified: boolean;
    Ffiltrar_apenas_inclusao: string;
    Ffiltrar_apenas_inclusao_Specified: boolean;
    Ffiltrar_apenas_alteracao: string;
    Ffiltrar_apenas_alteracao_Specified: boolean;
    FclientesFiltro: clientesFiltro;
    Fordem_descrescente: string;
    Fordem_descrescente_Specified: boolean;
    procedure Setordenar_por(Index: Integer; const Astring: string);
    function  ordenar_por_Specified(Index: Integer): boolean;
    procedure Setordem_decrescente(Index: Integer; const Astring: string);
    function  ordem_decrescente_Specified(Index: Integer): boolean;
    procedure Setfiltrar_por_data_de(Index: Integer; const Astring: string);
    function  filtrar_por_data_de_Specified(Index: Integer): boolean;
    procedure Setfiltrar_por_data_ate(Index: Integer; const Astring: string);
    function  filtrar_por_data_ate_Specified(Index: Integer): boolean;
    procedure Setfiltrar_apenas_inclusao(Index: Integer; const Astring: string);
    function  filtrar_apenas_inclusao_Specified(Index: Integer): boolean;
    procedure Setfiltrar_apenas_alteracao(Index: Integer; const Astring: string);
    function  filtrar_apenas_alteracao_Specified(Index: Integer): boolean;
    procedure Setordem_descrescente(Index: Integer; const Astring: string);
    function  ordem_descrescente_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property pagina:                   Int64           read Fpagina write Fpagina;
    property registros_por_pagina:     Int64           read Fregistros_por_pagina write Fregistros_por_pagina;
    property apenas_importado_api:     string          read Fapenas_importado_api write Fapenas_importado_api;
    property ordenar_por:              string          Index (IS_OPTN) read Fordenar_por write Setordenar_por stored ordenar_por_Specified;
    property ordem_decrescente:        string          Index (IS_OPTN) read Fordem_decrescente write Setordem_decrescente stored ordem_decrescente_Specified;
    property filtrar_por_data_de:      string          Index (IS_OPTN) read Ffiltrar_por_data_de write Setfiltrar_por_data_de stored filtrar_por_data_de_Specified;
    property filtrar_por_data_ate:     string          Index (IS_OPTN) read Ffiltrar_por_data_ate write Setfiltrar_por_data_ate stored filtrar_por_data_ate_Specified;
    property filtrar_apenas_inclusao:  string          Index (IS_OPTN) read Ffiltrar_apenas_inclusao write Setfiltrar_apenas_inclusao stored filtrar_apenas_inclusao_Specified;
    property filtrar_apenas_alteracao: string          Index (IS_OPTN) read Ffiltrar_apenas_alteracao write Setfiltrar_apenas_alteracao stored filtrar_apenas_alteracao_Specified;
    property clientesFiltro:           clientesFiltro  read FclientesFiltro write FclientesFiltro;
    property ordem_descrescente:       string          Index (IS_OPTN) read Fordem_descrescente write Setordem_descrescente stored ordem_descrescente_Specified;
  end;



  // ************************************************************************ //
  // XML       : clientes_listfull_response, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_listfull_response = class(TRemotable)
  private
    Fpagina: Int64;
    Ftotal_de_paginas: Int64;
    Fregistros: Int64;
    Ftotal_de_registros: Int64;
    Fclientes_cadastro: clientes_cadastroArray;
  public
    destructor Destroy; override;
  published
    property pagina:             Int64                   read Fpagina write Fpagina;
    property total_de_paginas:   Int64                   read Ftotal_de_paginas write Ftotal_de_paginas;
    property registros:          Int64                   read Fregistros write Fregistros;
    property total_de_registros: Int64                   read Ftotal_de_registros write Ftotal_de_registros;
    property clientes_cadastro:  clientes_cadastroArray  read Fclientes_cadastro write Fclientes_cadastro;
  end;



  // ************************************************************************ //
  // XML       : clientes_lote_request, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_lote_request = class(TRemotable)
  private
    Flote: Int64;
    Fclientes_cadastro: clientes_cadastroArray;
  public
    destructor Destroy; override;
  published
    property lote:              Int64                   read Flote write Flote;
    property clientes_cadastro: clientes_cadastroArray  read Fclientes_cadastro write Fclientes_cadastro;
  end;



  // ************************************************************************ //
  // XML       : clientes_lote_response, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_lote_response = class(TRemotable)
  private
    Flote: Int64;
    Fcodigo_status: string;
    Fdescricao_status: string;
  published
    property lote:             Int64   read Flote write Flote;
    property codigo_status:    string  read Fcodigo_status write Fcodigo_status;
    property descricao_status: string  read Fdescricao_status write Fdescricao_status;
  end;

  clientes_cadastro_resumidoArray = array of clientes_cadastro_resumido;   { "http://app.omie.com.br/api/v1/geral/clientes/?WSDL"[GblCplx] }


  // ************************************************************************ //
  // XML       : clientes_list_response, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_list_response = class(TRemotable)
  private
    Fpagina: Int64;
    Ftotal_de_paginas: Int64;
    Fregistros: Int64;
    Ftotal_de_registros: Int64;
    Fclientes_cadastro_resumido: clientes_cadastro_resumidoArray;
  public
    destructor Destroy; override;
  published
    property pagina:                     Int64                            read Fpagina write Fpagina;
    property total_de_paginas:           Int64                            read Ftotal_de_paginas write Ftotal_de_paginas;
    property registros:                  Int64                            read Fregistros write Fregistros;
    property total_de_registros:         Int64                            read Ftotal_de_registros write Ftotal_de_registros;
    property clientes_cadastro_resumido: clientes_cadastro_resumidoArray  read Fclientes_cadastro_resumido write Fclientes_cadastro_resumido;
  end;



  // ************************************************************************ //
  // XML       : clientes_status, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_status = class(TRemotable)
  private
    Fcodigo_cliente_omie: Int64;
    Fcodigo_cliente_omie_Specified: boolean;
    Fcodigo_cliente_integracao: string;
    Fcodigo_cliente_integracao_Specified: boolean;
    Fcodigo_status: string;
    Fdescricao_status: string;
    procedure Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
    function  codigo_cliente_omie_Specified(Index: Integer): boolean;
    procedure Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
    function  codigo_cliente_integracao_Specified(Index: Integer): boolean;
  published
    property codigo_cliente_omie:       Int64   Index (IS_OPTN) read Fcodigo_cliente_omie write Setcodigo_cliente_omie stored codigo_cliente_omie_Specified;
    property codigo_cliente_integracao: string  Index (IS_OPTN) read Fcodigo_cliente_integracao write Setcodigo_cliente_integracao stored codigo_cliente_integracao_Specified;
    property codigo_status:             string  read Fcodigo_status write Fcodigo_status;
    property descricao_status:          string  read Fdescricao_status write Fdescricao_status;
  end;



  // ************************************************************************ //
  // XML       : clientes_cadastro_resumido, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_cadastro_resumido = class(TRemotable)
  private
    Fcodigo_cliente: Int64;
    Fcodigo_cliente_Specified: boolean;
    Fcodigo_cliente_integracao: string;
    Fcodigo_cliente_integracao_Specified: boolean;
    Frazao_social: string;
    Frazao_social_Specified: boolean;
    Fnome_fantasia: string;
    Fnome_fantasia_Specified: boolean;
    Fcnpj_cpf: string;
    Fcnpj_cpf_Specified: boolean;
    procedure Setcodigo_cliente(Index: Integer; const AInt64: Int64);
    function  codigo_cliente_Specified(Index: Integer): boolean;
    procedure Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
    function  codigo_cliente_integracao_Specified(Index: Integer): boolean;
    procedure Setrazao_social(Index: Integer; const Astring: string);
    function  razao_social_Specified(Index: Integer): boolean;
    procedure Setnome_fantasia(Index: Integer; const Astring: string);
    function  nome_fantasia_Specified(Index: Integer): boolean;
    procedure Setcnpj_cpf(Index: Integer; const Astring: string);
    function  cnpj_cpf_Specified(Index: Integer): boolean;
  published
    property codigo_cliente:            Int64   Index (IS_OPTN) read Fcodigo_cliente write Setcodigo_cliente stored codigo_cliente_Specified;
    property codigo_cliente_integracao: string  Index (IS_OPTN) read Fcodigo_cliente_integracao write Setcodigo_cliente_integracao stored codigo_cliente_integracao_Specified;
    property razao_social:              string  Index (IS_OPTN) read Frazao_social write Setrazao_social stored razao_social_Specified;
    property nome_fantasia:             string  Index (IS_OPTN) read Fnome_fantasia write Setnome_fantasia stored nome_fantasia_Specified;
    property cnpj_cpf:                  string  Index (IS_OPTN) read Fcnpj_cpf write Setcnpj_cpf stored cnpj_cpf_Specified;
  end;



  // ************************************************************************ //
  // XML       : tags, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  tags = class(TRemotable)
  private
    Ftag: string;
  published
    property tag: string  read Ftag write Ftag;
  end;



  // ************************************************************************ //
  // XML       : clientes_cadastro_chave, global, <complexType>
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // ************************************************************************ //
  clientes_cadastro_chave = class(TRemotable)
  private
    Fcodigo_cliente_omie: Int64;
    Fcodigo_cliente_omie_Specified: boolean;
    Fcodigo_cliente_integracao: string;
    Fcodigo_cliente_integracao_Specified: boolean;
    procedure Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
    function  codigo_cliente_omie_Specified(Index: Integer): boolean;
    procedure Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
    function  codigo_cliente_integracao_Specified(Index: Integer): boolean;
  published
    property codigo_cliente_omie:       Int64   Index (IS_OPTN) read Fcodigo_cliente_omie write Setcodigo_cliente_omie stored codigo_cliente_omie_Specified;
    property codigo_cliente_integracao: string  Index (IS_OPTN) read Fcodigo_cliente_integracao write Setcodigo_cliente_integracao stored codigo_cliente_integracao_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://app.omie.com.br/api/v1/geral/clientes/?WSDL
  // soapAction: http://app.omie.com.br/api/v1/geral/clientes/?WSDL%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : ClientesCadastroSoap
  // service   : ClientesCadastro
  // port      : ClientesCadastroSoap
  // URL       : http://app.omie.com.br/api/v1/geral/clientes/
  // ************************************************************************ //
  ClientesCadastroSoap = interface(IInvokable)
  ['{910C0A42-AED6-A992-7A85-E709B223FE07}']
    function  IncluirCliente(const clientes_cadastro: clientes_cadastro): clientes_status; stdcall;
    function  AlterarCliente(const clientes_cadastro: clientes_cadastro): clientes_status; stdcall;
    function  ExcluirCliente(const clientes_cadastro_chave: clientes_cadastro_chave): clientes_status; stdcall;
    function  ConsultarCliente(const clientes_cadastro_chave: clientes_cadastro_chave): clientes_cadastro; stdcall;
    function  ListarClientes(const clientes_list_request: clientes_list_request): clientes_listfull_response; stdcall;
    function  ListarClientesResumido(const clientes_list_request: clientes_list_request): clientes_list_response; stdcall;
    function  IncluirClientesPorLote(const clientes_lote_request: clientes_lote_request): clientes_lote_response; stdcall;
    function  UpsertCliente(const clientes_cadastro: clientes_cadastro): clientes_status; stdcall;
    function  UpsertClientesPorLote(const clientes_lote_request: clientes_lote_request): clientes_lote_response; stdcall;
  end;

function GetClientesCadastroSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ClientesCadastroSoap;


implementation
  uses SysUtils;

function GetClientesCadastroSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ClientesCadastroSoap;
const
  defWSDL = 'https://app.omie.com.br/api/v1/geral/clientes/?WSDL';
  defURL  = 'http://app.omie.com.br/api/v1/geral/clientes/';
  defSvc  = 'ClientesCadastro';
  defPrt  = 'ClientesCadastroSoap';
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
    Result := (RIO as ClientesCadastroSoap);
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


destructor clientes_cadastro.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftags)-1 do
    SysUtils.FreeAndNil(Ftags[I]);
  System.SetLength(Ftags, 0);
  inherited Destroy;
end;

procedure clientes_cadastro.Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
begin
  Fcodigo_cliente_omie := AInt64;
  Fcodigo_cliente_omie_Specified := True;
end;

function clientes_cadastro.codigo_cliente_omie_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_omie_Specified;
end;

procedure clientes_cadastro.Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
begin
  Fcodigo_cliente_integracao := Astring;
  Fcodigo_cliente_integracao_Specified := True;
end;

function clientes_cadastro.codigo_cliente_integracao_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_integracao_Specified;
end;

procedure clientes_cadastro.Setcnpj_cpf(Index: Integer; const Astring: string);
begin
  Fcnpj_cpf := Astring;
  Fcnpj_cpf_Specified := True;
end;

function clientes_cadastro.cnpj_cpf_Specified(Index: Integer): boolean;
begin
  Result := Fcnpj_cpf_Specified;
end;

procedure clientes_cadastro.Setrazao_social(Index: Integer; const Astring: string);
begin
  Frazao_social := Astring;
  Frazao_social_Specified := True;
end;

function clientes_cadastro.razao_social_Specified(Index: Integer): boolean;
begin
  Result := Frazao_social_Specified;
end;

procedure clientes_cadastro.Setnome_fantasia(Index: Integer; const Astring: string);
begin
  Fnome_fantasia := Astring;
  Fnome_fantasia_Specified := True;
end;

function clientes_cadastro.nome_fantasia_Specified(Index: Integer): boolean;
begin
  Result := Fnome_fantasia_Specified;
end;

procedure clientes_cadastro.Setlogradouro(Index: Integer; const Astring: string);
begin
  Flogradouro := Astring;
  Flogradouro_Specified := True;
end;

function clientes_cadastro.logradouro_Specified(Index: Integer): boolean;
begin
  Result := Flogradouro_Specified;
end;

procedure clientes_cadastro.Setendereco(Index: Integer; const Astring: string);
begin
  Fendereco := Astring;
  Fendereco_Specified := True;
end;

function clientes_cadastro.endereco_Specified(Index: Integer): boolean;
begin
  Result := Fendereco_Specified;
end;

procedure clientes_cadastro.Setendereco_numero(Index: Integer; const Astring: string);
begin
  Fendereco_numero := Astring;
  Fendereco_numero_Specified := True;
end;

function clientes_cadastro.endereco_numero_Specified(Index: Integer): boolean;
begin
  Result := Fendereco_numero_Specified;
end;

procedure clientes_cadastro.Setcomplemento(Index: Integer; const Astring: string);
begin
  Fcomplemento := Astring;
  Fcomplemento_Specified := True;
end;

function clientes_cadastro.complemento_Specified(Index: Integer): boolean;
begin
  Result := Fcomplemento_Specified;
end;

procedure clientes_cadastro.Setbairro(Index: Integer; const Astring: string);
begin
  Fbairro := Astring;
  Fbairro_Specified := True;
end;

function clientes_cadastro.bairro_Specified(Index: Integer): boolean;
begin
  Result := Fbairro_Specified;
end;

procedure clientes_cadastro.Setcidade(Index: Integer; const Astring: string);
begin
  Fcidade := Astring;
  Fcidade_Specified := True;
end;

function clientes_cadastro.cidade_Specified(Index: Integer): boolean;
begin
  Result := Fcidade_Specified;
end;

procedure clientes_cadastro.Setestado(Index: Integer; const Astring: string);
begin
  Festado := Astring;
  Festado_Specified := True;
end;

function clientes_cadastro.estado_Specified(Index: Integer): boolean;
begin
  Result := Festado_Specified;
end;

procedure clientes_cadastro.Setcep(Index: Integer; const Astring: string);
begin
  Fcep := Astring;
  Fcep_Specified := True;
end;

function clientes_cadastro.cep_Specified(Index: Integer): boolean;
begin
  Result := Fcep_Specified;
end;

procedure clientes_cadastro.Setcodigo_pais(Index: Integer; const Astring: string);
begin
  Fcodigo_pais := Astring;
  Fcodigo_pais_Specified := True;
end;

function clientes_cadastro.codigo_pais_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_pais_Specified;
end;

procedure clientes_cadastro.Setcontato(Index: Integer; const Astring: string);
begin
  Fcontato := Astring;
  Fcontato_Specified := True;
end;

function clientes_cadastro.contato_Specified(Index: Integer): boolean;
begin
  Result := Fcontato_Specified;
end;

procedure clientes_cadastro.Settelefone1_ddd(Index: Integer; const Astring: string);
begin
  Ftelefone1_ddd := Astring;
  Ftelefone1_ddd_Specified := True;
end;

function clientes_cadastro.telefone1_ddd_Specified(Index: Integer): boolean;
begin
  Result := Ftelefone1_ddd_Specified;
end;

procedure clientes_cadastro.Settelefone1_numero(Index: Integer; const Astring: string);
begin
  Ftelefone1_numero := Astring;
  Ftelefone1_numero_Specified := True;
end;

function clientes_cadastro.telefone1_numero_Specified(Index: Integer): boolean;
begin
  Result := Ftelefone1_numero_Specified;
end;

procedure clientes_cadastro.Settelefone2_ddd(Index: Integer; const Astring: string);
begin
  Ftelefone2_ddd := Astring;
  Ftelefone2_ddd_Specified := True;
end;

function clientes_cadastro.telefone2_ddd_Specified(Index: Integer): boolean;
begin
  Result := Ftelefone2_ddd_Specified;
end;

procedure clientes_cadastro.Settelefone2_numero(Index: Integer; const Astring: string);
begin
  Ftelefone2_numero := Astring;
  Ftelefone2_numero_Specified := True;
end;

function clientes_cadastro.telefone2_numero_Specified(Index: Integer): boolean;
begin
  Result := Ftelefone2_numero_Specified;
end;

procedure clientes_cadastro.Setfax_ddd(Index: Integer; const Astring: string);
begin
  Ffax_ddd := Astring;
  Ffax_ddd_Specified := True;
end;

function clientes_cadastro.fax_ddd_Specified(Index: Integer): boolean;
begin
  Result := Ffax_ddd_Specified;
end;

procedure clientes_cadastro.Setfax_numero(Index: Integer; const Astring: string);
begin
  Ffax_numero := Astring;
  Ffax_numero_Specified := True;
end;

function clientes_cadastro.fax_numero_Specified(Index: Integer): boolean;
begin
  Result := Ffax_numero_Specified;
end;

procedure clientes_cadastro.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function clientes_cadastro.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure clientes_cadastro.Sethomepage(Index: Integer; const Astring: string);
begin
  Fhomepage := Astring;
  Fhomepage_Specified := True;
end;

function clientes_cadastro.homepage_Specified(Index: Integer): boolean;
begin
  Result := Fhomepage_Specified;
end;

procedure clientes_cadastro.Setobservacao(Index: Integer; const Astring: string);
begin
  Fobservacao := Astring;
  Fobservacao_Specified := True;
end;

function clientes_cadastro.observacao_Specified(Index: Integer): boolean;
begin
  Result := Fobservacao_Specified;
end;

procedure clientes_cadastro.Setinscricao_municipal(Index: Integer; const Astring: string);
begin
  Finscricao_municipal := Astring;
  Finscricao_municipal_Specified := True;
end;

function clientes_cadastro.inscricao_municipal_Specified(Index: Integer): boolean;
begin
  Result := Finscricao_municipal_Specified;
end;

procedure clientes_cadastro.Setinscricao_estadual(Index: Integer; const Astring: string);
begin
  Finscricao_estadual := Astring;
  Finscricao_estadual_Specified := True;
end;

function clientes_cadastro.inscricao_estadual_Specified(Index: Integer): boolean;
begin
  Result := Finscricao_estadual_Specified;
end;

procedure clientes_cadastro.Setinscricao_suframa(Index: Integer; const Astring: string);
begin
  Finscricao_suframa := Astring;
  Finscricao_suframa_Specified := True;
end;

function clientes_cadastro.inscricao_suframa_Specified(Index: Integer): boolean;
begin
  Result := Finscricao_suframa_Specified;
end;

procedure clientes_cadastro.Setpessoa_fisica(Index: Integer; const Astring: string);
begin
  Fpessoa_fisica := Astring;
  Fpessoa_fisica_Specified := True;
end;

function clientes_cadastro.pessoa_fisica_Specified(Index: Integer): boolean;
begin
  Result := Fpessoa_fisica_Specified;
end;

procedure clientes_cadastro.Setoptante_simples_nacional(Index: Integer; const Astring: string);
begin
  Foptante_simples_nacional := Astring;
  Foptante_simples_nacional_Specified := True;
end;

function clientes_cadastro.optante_simples_nacional_Specified(Index: Integer): boolean;
begin
  Result := Foptante_simples_nacional_Specified;
end;

procedure clientes_cadastro.Setbloqueado(Index: Integer; const Astring: string);
begin
  Fbloqueado := Astring;
  Fbloqueado_Specified := True;
end;

function clientes_cadastro.bloqueado_Specified(Index: Integer): boolean;
begin
  Result := Fbloqueado_Specified;
end;

procedure clientes_cadastro.Setimportado_api(Index: Integer; const Astring: string);
begin
  Fimportado_api := Astring;
  Fimportado_api_Specified := True;
end;

function clientes_cadastro.importado_api_Specified(Index: Integer): boolean;
begin
  Result := Fimportado_api_Specified;
end;

procedure clientes_cadastro.Settags(Index: Integer; const AtagsArray: tagsArray);
begin
  Ftags := AtagsArray;
  Ftags_Specified := True;
end;

function clientes_cadastro.tags_Specified(Index: Integer): boolean;
begin
  Result := Ftags_Specified;
end;

procedure clientesFiltro.Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
begin
  Fcodigo_cliente_omie := AInt64;
  Fcodigo_cliente_omie_Specified := True;
end;

function clientesFiltro.codigo_cliente_omie_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_omie_Specified;
end;

procedure clientesFiltro.Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
begin
  Fcodigo_cliente_integracao := Astring;
  Fcodigo_cliente_integracao_Specified := True;
end;

function clientesFiltro.codigo_cliente_integracao_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_integracao_Specified;
end;

procedure clientesFiltro.Setcnpj_cpf(Index: Integer; const Astring: string);
begin
  Fcnpj_cpf := Astring;
  Fcnpj_cpf_Specified := True;
end;

function clientesFiltro.cnpj_cpf_Specified(Index: Integer): boolean;
begin
  Result := Fcnpj_cpf_Specified;
end;

procedure clientesFiltro.Setrazao_social(Index: Integer; const Astring: string);
begin
  Frazao_social := Astring;
  Frazao_social_Specified := True;
end;

function clientesFiltro.razao_social_Specified(Index: Integer): boolean;
begin
  Result := Frazao_social_Specified;
end;

procedure clientesFiltro.Setnome_fantasia(Index: Integer; const Astring: string);
begin
  Fnome_fantasia := Astring;
  Fnome_fantasia_Specified := True;
end;

function clientesFiltro.nome_fantasia_Specified(Index: Integer): boolean;
begin
  Result := Fnome_fantasia_Specified;
end;

procedure clientesFiltro.Setendereco(Index: Integer; const Astring: string);
begin
  Fendereco := Astring;
  Fendereco_Specified := True;
end;

function clientesFiltro.endereco_Specified(Index: Integer): boolean;
begin
  Result := Fendereco_Specified;
end;

procedure clientesFiltro.Setbairro(Index: Integer; const Astring: string);
begin
  Fbairro := Astring;
  Fbairro_Specified := True;
end;

function clientesFiltro.bairro_Specified(Index: Integer): boolean;
begin
  Result := Fbairro_Specified;
end;

procedure clientesFiltro.Setcidade(Index: Integer; const Astring: string);
begin
  Fcidade := Astring;
  Fcidade_Specified := True;
end;

function clientesFiltro.cidade_Specified(Index: Integer): boolean;
begin
  Result := Fcidade_Specified;
end;

procedure clientesFiltro.Setestado(Index: Integer; const Astring: string);
begin
  Festado := Astring;
  Festado_Specified := True;
end;

function clientesFiltro.estado_Specified(Index: Integer): boolean;
begin
  Result := Festado_Specified;
end;

procedure clientesFiltro.Setcep(Index: Integer; const Astring: string);
begin
  Fcep := Astring;
  Fcep_Specified := True;
end;

function clientesFiltro.cep_Specified(Index: Integer): boolean;
begin
  Result := Fcep_Specified;
end;

procedure clientesFiltro.Setcontato(Index: Integer; const Astring: string);
begin
  Fcontato := Astring;
  Fcontato_Specified := True;
end;

function clientesFiltro.contato_Specified(Index: Integer): boolean;
begin
  Result := Fcontato_Specified;
end;

procedure clientesFiltro.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function clientesFiltro.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure clientesFiltro.Sethomepage(Index: Integer; const Astring: string);
begin
  Fhomepage := Astring;
  Fhomepage_Specified := True;
end;

function clientesFiltro.homepage_Specified(Index: Integer): boolean;
begin
  Result := Fhomepage_Specified;
end;

procedure clientesFiltro.Setinscricao_municipal(Index: Integer; const Astring: string);
begin
  Finscricao_municipal := Astring;
  Finscricao_municipal_Specified := True;
end;

function clientesFiltro.inscricao_municipal_Specified(Index: Integer): boolean;
begin
  Result := Finscricao_municipal_Specified;
end;

procedure clientesFiltro.Setinscricao_estadual(Index: Integer; const Astring: string);
begin
  Finscricao_estadual := Astring;
  Finscricao_estadual_Specified := True;
end;

function clientesFiltro.inscricao_estadual_Specified(Index: Integer): boolean;
begin
  Result := Finscricao_estadual_Specified;
end;

procedure clientesFiltro.Setinscricao_suframa(Index: Integer; const Astring: string);
begin
  Finscricao_suframa := Astring;
  Finscricao_suframa_Specified := True;
end;

function clientesFiltro.inscricao_suframa_Specified(Index: Integer): boolean;
begin
  Result := Finscricao_suframa_Specified;
end;

procedure clientesFiltro.Setpessoa_fisica(Index: Integer; const Astring: string);
begin
  Fpessoa_fisica := Astring;
  Fpessoa_fisica_Specified := True;
end;

function clientesFiltro.pessoa_fisica_Specified(Index: Integer): boolean;
begin
  Result := Fpessoa_fisica_Specified;
end;

procedure clientesFiltro.Setoptante_simples_nacional(Index: Integer; const Astring: string);
begin
  Foptante_simples_nacional := Astring;
  Foptante_simples_nacional_Specified := True;
end;

function clientesFiltro.optante_simples_nacional_Specified(Index: Integer): boolean;
begin
  Result := Foptante_simples_nacional_Specified;
end;

destructor clientes_list_request.Destroy;
begin
  SysUtils.FreeAndNil(FclientesFiltro);
  inherited Destroy;
end;

procedure clientes_list_request.Setordenar_por(Index: Integer; const Astring: string);
begin
  Fordenar_por := Astring;
  Fordenar_por_Specified := True;
end;

function clientes_list_request.ordenar_por_Specified(Index: Integer): boolean;
begin
  Result := Fordenar_por_Specified;
end;

procedure clientes_list_request.Setordem_decrescente(Index: Integer; const Astring: string);
begin
  Fordem_decrescente := Astring;
  Fordem_decrescente_Specified := True;
end;

function clientes_list_request.ordem_decrescente_Specified(Index: Integer): boolean;
begin
  Result := Fordem_decrescente_Specified;
end;

procedure clientes_list_request.Setfiltrar_por_data_de(Index: Integer; const Astring: string);
begin
  Ffiltrar_por_data_de := Astring;
  Ffiltrar_por_data_de_Specified := True;
end;

function clientes_list_request.filtrar_por_data_de_Specified(Index: Integer): boolean;
begin
  Result := Ffiltrar_por_data_de_Specified;
end;

procedure clientes_list_request.Setfiltrar_por_data_ate(Index: Integer; const Astring: string);
begin
  Ffiltrar_por_data_ate := Astring;
  Ffiltrar_por_data_ate_Specified := True;
end;

function clientes_list_request.filtrar_por_data_ate_Specified(Index: Integer): boolean;
begin
  Result := Ffiltrar_por_data_ate_Specified;
end;

procedure clientes_list_request.Setfiltrar_apenas_inclusao(Index: Integer; const Astring: string);
begin
  Ffiltrar_apenas_inclusao := Astring;
  Ffiltrar_apenas_inclusao_Specified := True;
end;

function clientes_list_request.filtrar_apenas_inclusao_Specified(Index: Integer): boolean;
begin
  Result := Ffiltrar_apenas_inclusao_Specified;
end;

procedure clientes_list_request.Setfiltrar_apenas_alteracao(Index: Integer; const Astring: string);
begin
  Ffiltrar_apenas_alteracao := Astring;
  Ffiltrar_apenas_alteracao_Specified := True;
end;

function clientes_list_request.filtrar_apenas_alteracao_Specified(Index: Integer): boolean;
begin
  Result := Ffiltrar_apenas_alteracao_Specified;
end;

procedure clientes_list_request.Setordem_descrescente(Index: Integer; const Astring: string);
begin
  Fordem_descrescente := Astring;
  Fordem_descrescente_Specified := True;
end;

function clientes_list_request.ordem_descrescente_Specified(Index: Integer): boolean;
begin
  Result := Fordem_descrescente_Specified;
end;

destructor clientes_listfull_response.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fclientes_cadastro)-1 do
    SysUtils.FreeAndNil(Fclientes_cadastro[I]);
  System.SetLength(Fclientes_cadastro, 0);
  inherited Destroy;
end;

destructor clientes_lote_request.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fclientes_cadastro)-1 do
    SysUtils.FreeAndNil(Fclientes_cadastro[I]);
  System.SetLength(Fclientes_cadastro, 0);
  inherited Destroy;
end;

destructor clientes_list_response.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fclientes_cadastro_resumido)-1 do
    SysUtils.FreeAndNil(Fclientes_cadastro_resumido[I]);
  System.SetLength(Fclientes_cadastro_resumido, 0);
  inherited Destroy;
end;

procedure clientes_status.Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
begin
  Fcodigo_cliente_omie := AInt64;
  Fcodigo_cliente_omie_Specified := True;
end;

function clientes_status.codigo_cliente_omie_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_omie_Specified;
end;

procedure clientes_status.Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
begin
  Fcodigo_cliente_integracao := Astring;
  Fcodigo_cliente_integracao_Specified := True;
end;

function clientes_status.codigo_cliente_integracao_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_integracao_Specified;
end;

procedure clientes_cadastro_resumido.Setcodigo_cliente(Index: Integer; const AInt64: Int64);
begin
  Fcodigo_cliente := AInt64;
  Fcodigo_cliente_Specified := True;
end;

function clientes_cadastro_resumido.codigo_cliente_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_Specified;
end;

procedure clientes_cadastro_resumido.Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
begin
  Fcodigo_cliente_integracao := Astring;
  Fcodigo_cliente_integracao_Specified := True;
end;

function clientes_cadastro_resumido.codigo_cliente_integracao_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_integracao_Specified;
end;

procedure clientes_cadastro_resumido.Setrazao_social(Index: Integer; const Astring: string);
begin
  Frazao_social := Astring;
  Frazao_social_Specified := True;
end;

function clientes_cadastro_resumido.razao_social_Specified(Index: Integer): boolean;
begin
  Result := Frazao_social_Specified;
end;

procedure clientes_cadastro_resumido.Setnome_fantasia(Index: Integer; const Astring: string);
begin
  Fnome_fantasia := Astring;
  Fnome_fantasia_Specified := True;
end;

function clientes_cadastro_resumido.nome_fantasia_Specified(Index: Integer): boolean;
begin
  Result := Fnome_fantasia_Specified;
end;

procedure clientes_cadastro_resumido.Setcnpj_cpf(Index: Integer; const Astring: string);
begin
  Fcnpj_cpf := Astring;
  Fcnpj_cpf_Specified := True;
end;

function clientes_cadastro_resumido.cnpj_cpf_Specified(Index: Integer): boolean;
begin
  Result := Fcnpj_cpf_Specified;
end;

procedure clientes_cadastro_chave.Setcodigo_cliente_omie(Index: Integer; const AInt64: Int64);
begin
  Fcodigo_cliente_omie := AInt64;
  Fcodigo_cliente_omie_Specified := True;
end;

function clientes_cadastro_chave.codigo_cliente_omie_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_omie_Specified;
end;

procedure clientes_cadastro_chave.Setcodigo_cliente_integracao(Index: Integer; const Astring: string);
begin
  Fcodigo_cliente_integracao := Astring;
  Fcodigo_cliente_integracao_Specified := True;
end;

function clientes_cadastro_chave.codigo_cliente_integracao_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_cliente_integracao_Specified;
end;

initialization
  { ClientesCadastroSoap }
  InvRegistry.RegisterInterface(TypeInfo(ClientesCadastroSoap), 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ClientesCadastroSoap), 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tagsArray), 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'tagsArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(clientes_cadastroArray), 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_cadastroArray');
  RemClassRegistry.RegisterXSClass(clientes_cadastro, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_cadastro');
  RemClassRegistry.RegisterXSClass(clientesFiltro, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientesFiltro');
  RemClassRegistry.RegisterXSClass(clientes_list_request, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_list_request');
  RemClassRegistry.RegisterXSClass(clientes_listfull_response, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_listfull_response');
  RemClassRegistry.RegisterXSClass(clientes_lote_request, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_lote_request');
  RemClassRegistry.RegisterXSClass(clientes_lote_response, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_lote_response');
  RemClassRegistry.RegisterXSInfo(TypeInfo(clientes_cadastro_resumidoArray), 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_cadastro_resumidoArray');
  RemClassRegistry.RegisterXSClass(clientes_list_response, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_list_response');
  RemClassRegistry.RegisterXSClass(clientes_status, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_status');
  RemClassRegistry.RegisterXSClass(clientes_cadastro_resumido, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_cadastro_resumido');
  RemClassRegistry.RegisterXSClass(tags, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'tags');
  RemClassRegistry.RegisterXSClass(clientes_cadastro_chave, 'http://app.omie.com.br/api/v1/geral/clientes/?WSDL', 'clientes_cadastro_chave');

    {TODO - registrando a chamada e as chaves para autenticacao }
  {************************ inicio ******************************}
  InvRegistry.RegisterInvokeOptions(TypeInfo(ClientesCadastroSoap), [ioDefault, ioDocument, ioHasReturnParamNames, ioHasNamespace]);
  InvRegistry.RegisterHeaderClass(TypeInfo(ClientesCadastroSoap), APP_KEY, 'app_key', 'https://app.omie.com.br/api/v1/geral/clientes/');
  InvRegistry.RegisterHeaderClass(TypeInfo(ClientesCadastroSoap), APP_SECRET, 'app_secret', 'https://app.omie.com.br/api/v1/geral/clientes/');
  {************************* fim ********************************}

end.