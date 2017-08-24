<?php
require_once("../OmieAppAuth.php"); 
require('NFConsultarSoapClient.php');

try { 
  $sc = new NFConsultarSoapClient(); 
 
  $chave = new nfChave();  
  $chave->cCodNFInt = "";  
  $chave->nCodNF = 0;  
  $chave->nNF = "1";  
          
  $ret = $sc->ConsultarNF($chave); 
  print "Resposta: " . print_r($ret, true) . "\n\n"; 

} catch (SoapFault $e) { 
  print "Ocorreu um erro no processamento: " . $e->faultstring . "\n"; 
  @print_r($e->detail); 
} 
