FUNCTION main
   LOCAL hParams := {=>}
   LOCAL hResult := {=>}

   //Parametros que serão enviados
   hParams['pagina'] := 1
   hParams['registros_por_pagina'] = 50

   //Exemplo de chamada para listar cidades
   //hResult := API_Omie("https://app.omie.com.br/api/v1/geral/cidades/", ; 
   //                    "PesquisarCidades", ;
   //                    hParams)
   hResult := API_Omie("http://localhost/api/v1/geral/cidades/", ; 
                       "PesquisarCidades", ;
                        hParams)
RETURN NIL


/* Comunica com a API da Omie*/
FUNCTION API_Omie
   PARAM cEndpointURI, cMetodo, hParams
   LOCAL hIniData    := HB_ReadIni( "api.ini" )
   LOCAL cKey        := AllTrim(hIniData["AUTH"]["APP_KEY"])
   LOCAL cSecret     := AllTrim(hIniData["AUTH"]["APP_SECRET"])
   LOCAL hResult     := {=>}
   LOCAL oUrl        := TUrl():new(cEndpointURI, .T.)
   LOCAL oHttp       := TIpClientHttp():new(oUrl)
   LOCAL cJson       

   cJson := '{'                                                    + ;
               '"call": "'       + cMetodo                  + '",' + ;
               '"app_key": "'     + cKey                     + '",' + ;
               '"app_secret": "'  + cSecret                  + '",' + ;
               '"param": ['      + hb_jsonEncode(hParams)   + ']'  + ;
            '}'
   ? cJson
   
  
   IF oHttp:open()
      oHttp:post(cJson)
      cJson := oHttp:readAll()
      oHttp:close()
      HB_JsonDecode(cJson , @hResult)
      ? cJson
   ELSE
      ? "Connection error:", oHttp:lastErrorMessage()
   ENDIF

RETURN hResult