# Acessando a API utilizando Harbour

Para realizar uma requisição na API, utilize a função **"API_Omie"**

Altere os parâmetros **APP_KEY** e **APP_SECRET** dentro do arquivo api.ini conforme as credenciais do seu aplicativo na Omie.  
[http://docs.omie.com.br/m/20204/l/612759-obtendo-a-chave-de-acesso-para-integracoes-de-api](http://docs.omie.com.br/m/20204/l/612759-obtendo-a-chave-de-acesso-para-integracoes-de-api)

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
  - - \[2\] : *Tipo:* Hash | *Conteúdo retornado na resposta JSON*
  - - \[3\] : *Tipo:* Caracter | *Conteúdo retornado no Body da resposta*
