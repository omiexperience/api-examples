<?php
require_once("../OmieAppAuth.php"); 
require('ClientesCadastro.php');

try { 
	$sc = new ClientesCadastroSoapClient();

	// Exemplo de um array com cadastro de clientes
	$clientes = array(
		array(
			"cnpj_cpf" => "18511742000147",
			"razao_social" => "Omiexperience S/A",
			"codigo_cliente_integracao" => 1234
		),
		array(
			"cnpj_cpf" => "22108833854",
			"razao_social" => "Igor",
			"codigo_cliente_integracao" => 1235
		)
	);

	// Cria o Lote	
	$lote_request = new clientes_lote_request();
	$lote_request->lote = '0001';
	$lote_request->clientes_cadastro = array();

	// Adiciona elementos no lote
	foreach ($clientes as $cliente) {
		$cliente_cadastro = new clientes_cadastro();  
		$cliente_cadastro->razao_social = $cliente['razao_social'];
		$cliente_cadastro->cnpj_cpf = $cliente['cnpj_cpf'];
		$cliente_cadastro->codigo_cliente_integracao = $cliente['codigo_cliente_integracao'];

		array_push($lote_request->clientes_cadastro, $cliente_cadastro);
	}

	// Executa a ação em lote
	$ret = $sc->UpsertClientesPorLote($lote_request); 
	print "Resposta: " . print_r($ret, true) . "\n\n"; 

// Tratamento de erros 
} catch (SoapFault $e) { 
	print "Ocorreu um erro no processamento: " . $e->faultstring . "\n"; 
	@print_r($e->detail); 
} 
