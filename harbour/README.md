# Acessando a API utilizando Harbour

Para realizar uma requisição na API, utilize a função **"API_Omie"**

## Parâmetros da Função:

**cEndpointURI :**
  - *Tipo:* Caracter (String)
  - *Esperado:* Url do Endpoint da API Omie 
  - *Obrigatório*: Sim

**cMetodo :**
  - *Tipo:* Caracter (String)
  - *Esperado:* Método da API Omie 
  - *Obrigatório*: Sim

**hParams :**
  - *Tipo:* Hash
  - *Esperado:* Parâmetros da Requisição
  - *Obrigatório*: Sim

##  Retorno da Função
  - *Tipo:* Array
  - *Esperado:*
  - - \[1\] : *Tipo:* Lógico | *Houve Erro:* .T. ou .F.
  - - \[2\] : *Tipo:* Hash | *Conteúdo retornado no JSON*
  - - \[3\] : *Tipo:* Caracter | *Conteúdo retornado no Body da Resposta*