import requests
import yaml

url = 'https://app.omie.com.br/api/v1/'

# Lendo arquivos de configuração
with open('./keys.yaml') as file:
    keys = yaml.load(file, Loader=yaml.FullLoader)

with open('./routes.yaml') as file:
    routes = yaml.load(file, Loader=yaml.FullLoader)

# Atribuindo chaves da api para variaveis
app_key = keys['app_key']
app_secret = keys['app_secret']

route = routes['route']
call = routes['call']

# Parâmetros para requisição
params = {
    "call": "{}".format(call),
    "app_key": "{}".format(app_key),
    "app_secret": "{}".format(app_secret),
    "param": [
        {
            "registros_por_pagina": 10,
            "apenas_importado_api": "N"
        }
    ]
}

# Formata o url para pegar os dados
url_api = '{}{}?JSON={}'.format(
    url,
    route,
    str(params).replace('\'', "\"")
)

# Fazendo a request pra página
response = requests.get(url_api)

# Testa se deu tudo certo
if response.status_code == 200:
    print(response.json()[list(response.json().keys())[-1]])
else:
    print('Requisição falhou')
