FUNCTION main
   LOCAL hParams := {=>}
   LOCAL hResult := {=>}

   //Parametros que serão enviados
   hParams['pagina'] := 1
   hParams['registros_por_pagina'] = 50

   //Exemplo de chamada para listar cidades
   hResult := API_Omie("https://app.omie.com.br/api/v1/geral/cidades/", ; 
                       "PesquisarCidades", ;
                       hParams)
RETURN NIL


/* Comunica com a API da Omie*/
FUNCTION API_Omie
   PARAM cEndpointURI, cMetodo, hParams
   LOCAL hIniData    := HB_ReadIni( "api.ini" )
   LOCAL cHost       := AllTrim(hIniData["AUTH"]["APP_KEY"])
   LOCAL cPort       := AllTrim(hIniData["AUTH"]["APP_SECRET"])
   LOCAL hResult     := {=>}
   LOCAL cJson       := hb_jsonEncode(hParams)

   ? cJson
   //Construir Requisição POST
RETURN hResult