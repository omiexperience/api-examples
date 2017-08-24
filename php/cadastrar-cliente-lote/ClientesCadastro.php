<?php
class CBSoapClient extends SoapClient {
    public function __doRequest($request, $location, $action, $version, $one_way = 0) {
        $xmlRequest = new DOMDocument("1.0");
        $xmlRequest->loadXML($request);
        $header = $xmlRequest->createElement("SOAP-ENV:Header");
        if (defined("OMIE_APP_KEY")) { $header->appendChild( $xmlRequest->createElement("app_key", OMIE_APP_KEY) ); }
        if (defined("OMIE_APP_SECRET")) { $header->appendChild( $xmlRequest->createElement("app_secret", OMIE_APP_SECRET) ); }
        if (defined("OMIE_USER_LOGIN")) { $header->appendChild( $xmlRequest->createElement("user_login", OMIE_USER_LOGIN) ); }
        if (defined("OMIE_USER_PASSWORD")) { $header->appendChild( $xmlRequest->createElement("user_password", OMIE_USER_PASSWORD) ); }
        $envelope = $xmlRequest->firstChild;
        $envelope->insertBefore($header, $envelope->firstChild);
        $request = $xmlRequest->saveXML();
        return parent::__doRequest($request, $location, $action, $version, $one_way);
    }
}
/**
 * @service ClientesCadastroSoapClient
 */
class ClientesCadastroSoapClient{
	/**
	 * The WSDL URI
	 *
	 * @var string
	 */
	public static $_WsdlUri='http://app.omie.com.br/api/v1/geral/clientes/?WSDL';
	/**
	 * The PHP SoapClient object
	 *
	 * @var object
	 */
	public static $_Server=null;

	/**
	 * Send a SOAP request to the server
	 *
	 * @param string $method The method name
	 * @param array $param The parameters
	 * @return mixed The server response
	 */
	public static function _Call($method,$param){
		if(is_null(self::$_Server))
			self::$_Server=new CBSoapClient(self::$_WsdlUri);
		return self::$_Server->__soapCall($method,$param);
	}

	/**
	 * Inclui o cliente no Omie
	 *
	 * @param clientes_cadastro $clientes_cadastro Cadastro reduzido de produtos
	 * @return clientes_status Status de retorno do cadastro de clientes.
	 */
	public function IncluirCliente($clientes_cadastro){
		return self::_Call('IncluirCliente',Array(
			$clientes_cadastro
		));
	}

	/**
	 * Altera os dados do cliente
	 *
	 * @param clientes_cadastro $clientes_cadastro Cadastro reduzido de produtos
	 * @return clientes_status Status de retorno do cadastro de clientes.
	 */
	public function AlterarCliente($clientes_cadastro){
		return self::_Call('AlterarCliente',Array(
			$clientes_cadastro
		));
	}

	/**
	 * Exclui um cliente da base de dados.
	 *
	 * @param clientes_cadastro_chave $clientes_cadastro_chave Chave para pesquisa do cadastro de clientes.
	 * @return clientes_status Status de retorno do cadastro de clientes.
	 */
	public function ExcluirCliente($clientes_cadastro_chave){
		return self::_Call('ExcluirCliente',Array(
			$clientes_cadastro_chave
		));
	}

	/**
	 * Consulta os dados de um cliente
	 *
	 * @param clientes_cadastro_chave $clientes_cadastro_chave Chave para pesquisa do cadastro de clientes.
	 * @return clientes_cadastro Cadastro reduzido de produtos
	 */
	public function ConsultarCliente($clientes_cadastro_chave){
		return self::_Call('ConsultarCliente',Array(
			$clientes_cadastro_chave
		));
	}

	/**
	 * Lista os clientes cadastrados
	 *
	 * @param clientes_list_request $clientes_list_request Lista os clientes cadastrados
	 * @return clientes_listfull_response Lista de clientes cadastrados no omie.
	 */
	public function ListarClientes($clientes_list_request){
		return self::_Call('ListarClientes',Array(
			$clientes_list_request
		));
	}

	/**
	 * Realiza pesquisa dos clientes
	 *
	 * @param clientes_list_request $clientes_list_request Lista os clientes cadastrados
	 * @return clientes_list_response Lista de clientes cadastrados no omie.
	 */
	public function ListarClientesResumido($clientes_list_request){
		return self::_Call('ListarClientesResumido',Array(
			$clientes_list_request
		));
	}

	/**
	 * Rotina para inclusão por lote de clientes.
	 *
	 * @param clientes_lote_request $clientes_lote_request Lote de cadastros de clientes para inclusão, limitado a 50 ocorrências por requisição.
	 * @return clientes_lote_response Resposta do processamento do lote de clientes cadastrados.
	 */
	public function IncluirClientesPorLote($clientes_lote_request){
		return self::_Call('IncluirClientesPorLote',Array(
			$clientes_lote_request
		));
	}

	/**
	 * Realiza o UPSERT da tabela de clientes (INCLUSÃO/ALTERAÇÃO).
	 *
	 * @param clientes_cadastro $clientes_cadastro Cadastro reduzido de produtos
	 * @return clientes_status Status de retorno do cadastro de clientes.
	 */
	public function UpsertCliente($clientes_cadastro){
		return self::_Call('UpsertCliente',Array(
			$clientes_cadastro
		));
	}

	/**
	 * Inclui/Altera clientes por lote.
	 *
	 * @param clientes_lote_request $clientes_lote_request Lote de cadastros de clientes para inclusão, limitado a 50 ocorrências por requisição.
	 * @return clientes_lote_response Resposta do processamento do lote de clientes cadastrados.
	 */
	public function UpsertClientesPorLote($clientes_lote_request){
		return self::_Call('UpsertClientesPorLote',Array(
			$clientes_lote_request
		));
	}
}

/**
 * Cadastro reduzido de produtos
 *
 * @pw_element integer $codigo_cliente_omie Código do cliente - gerado pelo Omie.
 * @pw_element string $codigo_cliente_integracao Código de Integração com sistemas legados.
 * @pw_element string $cnpj_cpf CNPJ / CPF do cliente.
 * @pw_element string $razao_social Razão Social do cliente
 * @pw_element string $nome_fantasia Nome Fantasia do cliente
 * @pw_element string $logradouro Logradouro
 * @pw_element string $endereco Endereço
 * @pw_element string $endereco_numero Número do Endereço
 * @pw_element string $complemento Complemento para o Número do Endereço
 * @pw_element string $bairro Bairro
 * @pw_element string $cidade Código da Cidade
 * @pw_element string $estado Sigla do Estado
 * @pw_element string $cep CEP
 * @pw_element string $codigo_pais Código do País
 * @pw_element string $contato Nome para contato
 * @pw_element string $telefone1_ddd DDD Telefone
 * @pw_element string $telefone1_numero Telefone para Contato
 * @pw_element string $telefone2_ddd DDD Telefone 2
 * @pw_element string $telefone2_numero Telefone 2
 * @pw_element string $fax_ddd DDD Fax
 * @pw_element string $fax_numero Fax
 * @pw_element string $email E-Mail
 * @pw_element string $homepage WebSite
 * @pw_element string $observacao Observação
 * @pw_element string $inscricao_municipal Inscrição Municipal
 * @pw_element string $inscricao_estadual Inscrição Estadual
 * @pw_element string $inscricao_suframa Inscrição Suframa
 * @pw_element string $pessoa_fisica Pessoa Física
 * @pw_element string $optante_simples_nacional Indica se o Cliente / Fornecedor é Optante do Simples Nacional [S/N]
 * @pw_element string $bloqueado Registro Bloqueado pela API
 * @pw_element string $importado_api Gerado da API (S/N)
 * @pw_element tagsArray $tags Tags do Cliente ou Fornecedor
 * @pw_complex clientes_cadastro
 */
class clientes_cadastro{
	/**
	 * Código do cliente - gerado pelo Omie.
	 *
	 * @var integer
	 */
	public $codigo_cliente_omie;
	/**
	 * Código de Integração com sistemas legados.
	 *
	 * @var string
	 */
	public $codigo_cliente_integracao;
	/**
	 * CNPJ / CPF do cliente.
	 *
	 * @var string
	 */
	public $cnpj_cpf;
	/**
	 * Razão Social do cliente
	 *
	 * @var string
	 */
	public $razao_social;
	/**
	 * Nome Fantasia do cliente
	 *
	 * @var string
	 */
	public $nome_fantasia;
	/**
	 * Logradouro
	 *
	 * @var string
	 */
	public $logradouro;
	/**
	 * Endereço
	 *
	 * @var string
	 */
	public $endereco;
	/**
	 * Número do Endereço
	 *
	 * @var string
	 */
	public $endereco_numero;
	/**
	 * Complemento para o Número do Endereço
	 *
	 * @var string
	 */
	public $complemento;
	/**
	 * Bairro
	 *
	 * @var string
	 */
	public $bairro;
	/**
	 * Código da Cidade
	 *
	 * @var string
	 */
	public $cidade;
	/**
	 * Sigla do Estado
	 *
	 * @var string
	 */
	public $estado;
	/**
	 * CEP
	 *
	 * @var string
	 */
	public $cep;
	/**
	 * Código do País
	 *
	 * @var string
	 */
	public $codigo_pais;
	/**
	 * Nome para contato
	 *
	 * @var string
	 */
	public $contato;
	/**
	 * DDD Telefone
	 *
	 * @var string
	 */
	public $telefone1_ddd;
	/**
	 * Telefone para Contato
	 *
	 * @var string
	 */
	public $telefone1_numero;
	/**
	 * DDD Telefone 2
	 *
	 * @var string
	 */
	public $telefone2_ddd;
	/**
	 * Telefone 2
	 *
	 * @var string
	 */
	public $telefone2_numero;
	/**
	 * DDD Fax
	 *
	 * @var string
	 */
	public $fax_ddd;
	/**
	 * Fax
	 *
	 * @var string
	 */
	public $fax_numero;
	/**
	 * E-Mail
	 *
	 * @var string
	 */
	public $email;
	/**
	 * WebSite
	 *
	 * @var string
	 */
	public $homepage;
	/**
	 * Observação
	 *
	 * @var string
	 */
	public $observacao;
	/**
	 * Inscrição Municipal
	 *
	 * @var string
	 */
	public $inscricao_municipal;
	/**
	 * Inscrição Estadual
	 *
	 * @var string
	 */
	public $inscricao_estadual;
	/**
	 * Inscrição Suframa
	 *
	 * @var string
	 */
	public $inscricao_suframa;
	/**
	 * Pessoa Física
	 *
	 * @var string
	 */
	public $pessoa_fisica;
	/**
	 * Indica se o Cliente / Fornecedor é Optante do Simples Nacional [S/N]
	 *
	 * @var string
	 */
	public $optante_simples_nacional;
	/**
	 * Registro Bloqueado pela API
	 *
	 * @var string
	 */
	public $bloqueado;
	/**
	 * Gerado da API (S/N)
	 *
	 * @var string
	 */
	public $importado_api;
	/**
	 * Tags do Cliente ou Fornecedor
	 *
	 * @var tagsArray
	 */
	public $tags;
}


/**
 * Tags do Cliente ou Fornecedor
 *
 * @pw_element string $tag Tag do Cliente ou Fornecedor
 * @pw_complex tags
 */
class tags{
	/**
	 * Tag do Cliente ou Fornecedor
	 *
	 * @var string
	 */
	public $tag;
}


/**
 * Chave para pesquisa do cadastro de clientes.
 *
 * @pw_element integer $codigo_cliente_omie Código do cliente - gerado pelo Omie.
 * @pw_element string $codigo_cliente_integracao Código de Integração com sistemas legados.
 * @pw_complex clientes_cadastro_chave
 */
class clientes_cadastro_chave{
	/**
	 * Código do cliente - gerado pelo Omie.
	 *
	 * @var integer
	 */
	public $codigo_cliente_omie;
	/**
	 * Código de Integração com sistemas legados.
	 *
	 * @var string
	 */
	public $codigo_cliente_integracao;
}

/**
 * Cadastro reduzido de produtos
 *
 * @pw_element integer $codigo_cliente Código do cliente - gerado pelo Omie.
 * @pw_element string $codigo_cliente_integracao Código de Integração com sistemas legados.
 * @pw_element string $razao_social Razão Social do cliente
 * @pw_element string $nome_fantasia Nome Fantasia do cliente
 * @pw_element string $cnpj_cpf CNPJ / CPF do cliente.
 * @pw_complex clientes_cadastro_resumido
 */
class clientes_cadastro_resumido{
	/**
	 * Código do cliente - gerado pelo Omie.
	 *
	 * @var integer
	 */
	public $codigo_cliente;
	/**
	 * Código de Integração com sistemas legados.
	 *
	 * @var string
	 */
	public $codigo_cliente_integracao;
	/**
	 * Razão Social do cliente
	 *
	 * @var string
	 */
	public $razao_social;
	/**
	 * Nome Fantasia do cliente
	 *
	 * @var string
	 */
	public $nome_fantasia;
	/**
	 * CNPJ / CPF do cliente.
	 *
	 * @var string
	 */
	public $cnpj_cpf;
}


/**
 * Status de retorno do cadastro de clientes.
 *
 * @pw_element integer $codigo_cliente_omie Código do cliente - gerado pelo Omie.
 * @pw_element string $codigo_cliente_integracao Código de Integração com sistemas legados.
 * @pw_element string $codigo_status Código do status do processamento
 * @pw_element string $descricao_status Descrição do status do lote de processamento
 * @pw_complex clientes_status
 */
class clientes_status{
	/**
	 * Código do cliente - gerado pelo Omie.
	 *
	 * @var integer
	 */
	public $codigo_cliente_omie;
	/**
	 * Código de Integração com sistemas legados.
	 *
	 * @var string
	 */
	public $codigo_cliente_integracao;
	/**
	 * Código do status do processamento
	 *
	 * @var string
	 */
	public $codigo_status;
	/**
	 * Descrição do status do lote de processamento
	 *
	 * @var string
	 */
	public $descricao_status;
}

/**
 * Solicitação de pesquisa de dados.
 *
 * @pw_element integer $limite Quantidade máxima de registros retornados. <BR>Limite máximo 200.
 * @pw_element integer $iniciar_em Informe a partir de qual registro as informações serão retornadas.
 * @pw_element string $ordenar_por Informe qual a ordem de pesquisa.
 * @pw_element string $ordem_tipo Se a ordem dos dados é ascendente ou descendente.
 * @pw_complex clientes_pesquisar
 */
class clientes_pesquisar{
	/**
	 * Quantidade máxima de registros retornados. <BR>Limite máximo 200.
	 *
	 * @var integer
	 */
	public $limite;
	/**
	 * Informe a partir de qual registro as informações serão retornadas.
	 *
	 * @var integer
	 */
	public $iniciar_em;
	/**
	 * Informe qual a ordem de pesquisa.
	 *
	 * @var string
	 */
	public $ordenar_por;
	/**
	 * Se a ordem dos dados é ascendente ou descendente.
	 *
	 * @var string
	 */
	public $ordem_tipo;
}

/**
 * Resposta da pesquisa.
 *
 * @pw_element integer $total_registros Retorna a quantidade total de registro para a pesquisa realizada.
 * @pw_element integer $registros_encontrados Retorna o total de registros retornados no offset solicitado.
 * @pw_complex clientes_pesquisar_retorno
 */
class clientes_pesquisar_retorno{
	/**
	 * Retorna a quantidade total de registro para a pesquisa realizada.
	 *
	 * @var integer
	 */
	public $total_registros;
	/**
	 * Retorna o total de registros retornados no offset solicitado.
	 *
	 * @var integer
	 */
	public $registros_encontrados;
}

/**
 * Lote de cadastros de clientes para inclusão, limitado a 50 ocorrências por requisição.
 *
 * @pw_element integer $lote Número do lote
 * @pw_element clientes_cadastroArray $clientes_cadastro Cadastro reduzido de produtos
 * @pw_complex clientes_lote_request
 */
class clientes_lote_request{
	/**
	 * Número do lote
	 *
	 * @var integer
	 */
	public $lote;
	/**
	 * Cadastro reduzido de produtos
	 *
	 * @var clientes_cadastroArray
	 */
	public $clientes_cadastro;
}

/**
 * Resposta do processamento do lote de clientes cadastrados.
 *
 * @pw_element integer $lote Número do lote
 * @pw_element string $codigo_status Código do status do processamento
 * @pw_element string $descricao_status Descrição do status do lote de processamento
 * @pw_complex clientes_lote_response
 */
class clientes_lote_response{
	/**
	 * Número do lote
	 *
	 * @var integer
	 */
	public $lote;
	/**
	 * Código do status do processamento
	 *
	 * @var string
	 */
	public $codigo_status;
	/**
	 * Descrição do status do lote de processamento
	 *
	 * @var string
	 */
	public $descricao_status;
}

/**
 * Lista os clientes cadastrados
 *
 * @pw_element integer $pagina Número da página retornada
 * @pw_element integer $registros_por_pagina Número de registros retornados na página.
 * @pw_element string $apenas_importado_api Exibir apenas os registros gerados pela API
 * @pw_element string $ordenar_por Ordem de exibição dos dados. Padrão: Código.
 * @pw_element string $ordem_decrescente Se a lista será apresentada em ordem decrescente.
 * @pw_element string $filtrar_por_data_de Filtrar os registros a partir de uma data.
 * @pw_element string $filtrar_por_data_ate Filtrar os registros até uma data.
 * @pw_element string $filtrar_apenas_inclusao Filtrar apenas os registros incluídos.
 * @pw_element string $filtrar_apenas_alteracao Filtrar apenas os registros alterados.
 * @pw_element clientesFiltro $clientesFiltro Filtrar cadastro de clientes&nbsp;&nbsp;
 * @pw_element string $ordem_descrescente Deprecated
 * @pw_complex clientes_list_request
 */
class clientes_list_request{
	/**
	 * Número da página retornada
	 *
	 * @var integer
	 */
	public $pagina;
	/**
	 * Número de registros retornados na página.
	 *
	 * @var integer
	 */
	public $registros_por_pagina;
	/**
	 * Exibir apenas os registros gerados pela API
	 *
	 * @var string
	 */
	public $apenas_importado_api;
	/**
	 * Ordem de exibição dos dados. Padrão: Código.
	 *
	 * @var string
	 */
	public $ordenar_por;
	/**
	 * Se a lista será apresentada em ordem decrescente.
	 *
	 * @var string
	 */
	public $ordem_decrescente;
	/**
	 * Filtrar os registros a partir de uma data.
	 *
	 * @var string
	 */
	public $filtrar_por_data_de;
	/**
	 * Filtrar os registros até uma data.
	 *
	 * @var string
	 */
	public $filtrar_por_data_ate;
	/**
	 * Filtrar apenas os registros incluídos.
	 *
	 * @var string
	 */
	public $filtrar_apenas_inclusao;
	/**
	 * Filtrar apenas os registros alterados.
	 *
	 * @var string
	 */
	public $filtrar_apenas_alteracao;
	/**
	 * Filtrar cadastro de clientes&nbsp;&nbsp;
	 *
	 * @var clientesFiltro
	 */
	public $clientesFiltro;
	/**
	 * Deprecated
	 *
	 * @var string
	 */
	public $ordem_descrescente;
}

/**
 * Filtrar cadastro de clientes
 *
 * @pw_element integer $codigo_cliente_omie Código do cliente - gerado pelo Omie.
 * @pw_element string $codigo_cliente_integracao Código de Integração com sistemas legados.
 * @pw_element string $cnpj_cpf CNPJ / CPF do cliente.
 * @pw_element string $razao_social Razão Social do cliente
 * @pw_element string $nome_fantasia Nome Fantasia do cliente
 * @pw_element string $endereco Endereço
 * @pw_element string $bairro Bairro
 * @pw_element string $cidade Código da Cidade
 * @pw_element string $estado Sigla do Estado
 * @pw_element string $cep CEP
 * @pw_element string $contato Nome para contato
 * @pw_element string $email E-Mail
 * @pw_element string $homepage WebSite
 * @pw_element string $inscricao_municipal Inscrição Municipal
 * @pw_element string $inscricao_estadual Inscrição Estadual
 * @pw_element string $inscricao_suframa Inscrição Suframa
 * @pw_element string $pessoa_fisica Pessoa Física
 * @pw_element string $optante_simples_nacional Indica se o Cliente / Fornecedor é Optante do Simples Nacional [S/N]
 * @pw_complex clientesFiltro
 */
class clientesFiltro{
	/**
	 * Código do cliente - gerado pelo Omie.
	 *
	 * @var integer
	 */
	public $codigo_cliente_omie;
	/**
	 * Código de Integração com sistemas legados.
	 *
	 * @var string
	 */
	public $codigo_cliente_integracao;
	/**
	 * CNPJ / CPF do cliente.
	 *
	 * @var string
	 */
	public $cnpj_cpf;
	/**
	 * Razão Social do cliente
	 *
	 * @var string
	 */
	public $razao_social;
	/**
	 * Nome Fantasia do cliente
	 *
	 * @var string
	 */
	public $nome_fantasia;
	/**
	 * Endereço
	 *
	 * @var string
	 */
	public $endereco;
	/**
	 * Bairro
	 *
	 * @var string
	 */
	public $bairro;
	/**
	 * Código da Cidade
	 *
	 * @var string
	 */
	public $cidade;
	/**
	 * Sigla do Estado
	 *
	 * @var string
	 */
	public $estado;
	/**
	 * CEP
	 *
	 * @var string
	 */
	public $cep;
	/**
	 * Nome para contato
	 *
	 * @var string
	 */
	public $contato;
	/**
	 * E-Mail
	 *
	 * @var string
	 */
	public $email;
	/**
	 * WebSite
	 *
	 * @var string
	 */
	public $homepage;
	/**
	 * Inscrição Municipal
	 *
	 * @var string
	 */
	public $inscricao_municipal;
	/**
	 * Inscrição Estadual
	 *
	 * @var string
	 */
	public $inscricao_estadual;
	/**
	 * Inscrição Suframa
	 *
	 * @var string
	 */
	public $inscricao_suframa;
	/**
	 * Pessoa Física
	 *
	 * @var string
	 */
	public $pessoa_fisica;
	/**
	 * Indica se o Cliente / Fornecedor é Optante do Simples Nacional [S/N]
	 *
	 * @var string
	 */
	public $optante_simples_nacional;
}

/**
 * Lista de clientes cadastrados no omie.
 *
 * @pw_element integer $pagina Número da página retornada
 * @pw_element integer $total_de_paginas Número total de páginas
 * @pw_element integer $registros Número de registros retornados na página.
 * @pw_element integer $total_de_registros total de registros encontrados
 * @pw_element clientes_cadastro_resumidoArray $clientes_cadastro_resumido Cadastro reduzido de produtos
 * @pw_complex clientes_list_response
 */
class clientes_list_response{
	/**
	 * Número da página retornada
	 *
	 * @var integer
	 */
	public $pagina;
	/**
	 * Número total de páginas
	 *
	 * @var integer
	 */
	public $total_de_paginas;
	/**
	 * Número de registros retornados na página.
	 *
	 * @var integer
	 */
	public $registros;
	/**
	 * total de registros encontrados
	 *
	 * @var integer
	 */
	public $total_de_registros;
	/**
	 * Cadastro reduzido de produtos
	 *
	 * @var clientes_cadastro_resumidoArray
	 */
	public $clientes_cadastro_resumido;
}

/**
 * Lista de clientes cadastrados no omie.
 *
 * @pw_element integer $pagina Número da página retornada
 * @pw_element integer $total_de_paginas Número total de páginas
 * @pw_element integer $registros Número de registros retornados na página.
 * @pw_element integer $total_de_registros total de registros encontrados
 * @pw_element clientes_cadastroArray $clientes_cadastro Cadastro reduzido de produtos
 * @pw_complex clientes_listfull_response
 */
class clientes_listfull_response{
	/**
	 * Número da página retornada
	 *
	 * @var integer
	 */
	public $pagina;
	/**
	 * Número total de páginas
	 *
	 * @var integer
	 */
	public $total_de_paginas;
	/**
	 * Número de registros retornados na página.
	 *
	 * @var integer
	 */
	public $registros;
	/**
	 * total de registros encontrados
	 *
	 * @var integer
	 */
	public $total_de_registros;
	/**
	 * Cadastro reduzido de produtos
	 *
	 * @var clientes_cadastroArray
	 */
	public $clientes_cadastro;
}

/**
 * Erro gerado pela aplicação.
 *
 * @pw_element integer $code Codigo do erro
 * @pw_element string $description Descricao do erro
 * @pw_element string $referer Origem do erro
 * @pw_element boolean $fatal Indica se eh um erro fatal
 * @pw_complex omie_fail
 */
class omie_fail{
	/**
	 * Codigo do erro
	 *
	 * @var integer
	 */
	public $code;
	/**
	 * Descricao do erro
	 *
	 * @var string
	 */
	public $description;
	/**
	 * Origem do erro
	 *
	 * @var string
	 */
	public $referer;
	/**
	 * Indica se eh um erro fatal
	 *
	 * @var boolean
	 */
	public $fatal;
}