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

   ? ValToPrg(hResult)
RETURN NIL


/* Comunica com a API da Omie*/
FUNCTION API_Omie
   PARAM cEndpointURI, cMetodo, hParams
   LOCAL hIniData    := HB_ReadIni( "api.ini" )
   LOCAL cKey        := AllTrim(hIniData["AUTH"]["APP_KEY"])
   LOCAL cSecret     := AllTrim(hIniData["AUTH"]["APP_SECRET"])
   LOCAL hResult     := {=>}
   LOCAL cJson       

   TRY
      oHttp := CreateObject("MSXML2.ServerXMLHTTP.6.0")
   CATCH
      ? "Não foi possível iniciar o objeto MSXML"
      QUIT
   END
   
   cJson := '{'                                                     + ;
               '"call": "'        + cMetodo                  + '",' + ;
               '"app_key": "'     + cKey                     + '",' + ;
               '"app_secret": "'  + cSecret                  + '",' + ;
               '"param": ['       + hb_jsonEncode(hParams)   + ']'  + ;
            '}'
      
   oHttp:Open("POST", cEndpointURI, .F.)
   oHttp:SetRequestHeader("Content-Type", "application/json")
   oHttp:Send(cJson)

   cResponse := oHttp:ResponseText
   
   IF oHttp:ReadyState = 4 .AND. oHttp:Status = 200
      hResult[1] := .F.    
      hResult[2] := hb_jsonDecode(cResponse)
      hResult[3] := cResponse   
   ELSE
      hResult[1] := .T.
      hResult[2] := "{}"
      hResult[3] := cResponse
   ENDIF
RETURN hResult