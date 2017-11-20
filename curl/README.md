# Acessando a API utilizando JSON (via cURL)

Abaixo, temos um exemplo bem simples de como consumir a nossa API usando cURL e Json :-)

    $ curl http://app.omie.com.br/api/v1/geral/bancos/ -H "Content-type: application/json" -d '{
                "call": "ListarBancos",
                "app_key": "SUA_APP_KEY_AQUI",
                "app_secret": "SEU_APP_SECRET_AQUI",
                "param": [
                    {
                        "pagina": 1,
                        "registros_por_pagina": 100,
                        "apenas_importado_api": "N"
                    }
                ]
            }' | jq '.'

Se você ainda não conhece o **jq**, recomendamos que você dê uma olhada: https://stedolan.github.io/jq/
