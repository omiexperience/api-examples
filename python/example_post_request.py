import requests

#chaves da api
omie_app_key = "38333295000"
omie_app_secret = "4cea520a0e2a2ecdc267b75d3424a0ed"

#parâmetros da requisição
url_api = "https://app.omie.com.br/api/v1/"
route = "produtos/pedido/"
call = "ConsultarPedido"
params = '[{' \
         '"numero_pedido":"11"' \
         '}]'

#cabeçalho e dados enviados na requisição
headers = {
    'Content-Type' : 'application/json'
}
payload = '{' \
          '"call":"'+call+'",' \
          '"app_key":"'+omie_app_key+'",' \
          '"app_secret":"'+omie_app_secret+'",' \
          '"param":'+params+ \
          '}'

response = requests.post(url_api+route, headers=headers, data=payload)

print(response.status_code)
print(response.json())