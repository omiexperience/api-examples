
# Acessando a API utilizando PHP

Segue abaixo um exemplo usando o *SDK* disponibilizado para PHP:

```php
    <?php  
      require_once("ClientesCadastroSoapClient.php");  
      require_once("OmieAppAuth.php"); // gere a sua chave em: http://developer.omie.com.br/generate-key/ 
    
      try { 
        $sc = new ClientesCadastroSoapClient(); 
       
        // Cria o objeto do tipo "clientes_cadastro"  
        // @see http://app.omie.com.br/api/v1/geral/clientes/#clientes_cadastro  
        $novoCliente = new clientes_cadastro();  
        $novoCliente->razao_social = "Omiexperience S/A";  
        $novoCliente->cnpj_cpf = "18511742000147";  
        $novoCliente->codigo_cliente_integracao = "1234";  
                
        // Solicita a criação do novo cliente  
        $ret = $sc->IncluirCliente($novoCliente); 
        print "Cadastrado com sucesso: " . print_r($ret, true) . "\n\n"; 
    
      // Tratamento de erros 
      } catch (SoapFault $e) { 
        print "Ocorreu um erro no processamento: " . $e->faultstring . "\n"; 
        @print_r($e->detail); 
      } 
```

Se a requisição for aceita, o resultado exibido será algo como:

```php
    Cadastrado com sucesso: stdClass Object 
    ( 
        [codigo_cliente_omie] => 363296 
        [codigo_cliente_integracao] => 1234 
    )
```
