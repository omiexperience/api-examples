# Começando a integração com Omie

Agora vai! Seja bem vindo ao nosso repositório com mais informações para os nerds, geeks e entusiastas :-)

## Portal do desenvolvedor

O Portal do desenvolvedor é a nossa *nave mãe*, lá você encontrará a lista de todas as API's, exemplos de uso, credenciais de acesso, etc:

http://developer.omie.com.br/

## Credencias de autenticação

Para obter as credenciais de acesso siga esse guia:

http://docs.omie.com.br/m/20204/l/612759-obtendo-a-chave-de-acesso-para-integracoes-de-api

Por boa prática, não começa os testes no aplicativo de produção :-)

> Eu sei que é mais forte que você, mas recomendamos do fundo do coração
> que você crie um aplicativo novo para realizar os testes (pode ficar
> tranquilo, é grátis)

## Lista de API's

Não queremos ser repetitivos, mas para facilitar a sua vida vamos deixar um link para a lista de API's e exemplos de uso:

http://developer.omie.com.br/service-list/

## Como testar as API's

Você pode começar os testes usando os exemplos que deixamos prontos. Por exemplo, se acessarmos a API de [Contas Correntes](https://app.omie.com.br/api/v1/geral/contacorrente/), será possível, consultar todos os métodos e a documentação dos campos disponíveis. A grande maioria das APIs dispõe de um método para listar os registros cadastrados. Para começar, podemos testar o método [PesquisarContaCorrente](https://app.omie.com.br/api/v1/geral/contacorrente/#PesquisarContaCorrente).

Na própria documentação, você encontra uma forma de testar a API sem que haja necessidade de realizar nenhuma implementação. Basta clicar no botão "**Teste agora mesmo**":

![Teste agora mesmo](https://github.com/omiexperience/api-examples/raw/master/help-assets/api-call-start.png)

Ao clicar no botão “Teste agora mesmo” a ferramenta de teste é exibida e já está pronta para que você experimente. Basta clicar no botão “Executar”. Nesse momento, você não precisa se preocupar com o APP_KEY e o APP_SECRET que já estão informados na tela. Eles se referem a um aplicativo de testes da Omie e você pode utilizar para consultar e verificar os resultados da requisição. Mas, se preferir, você pode substituir essas informações pela APP_KEY e APP_SECRET do aplicativo que você acabou de criar. Você também irá notar que pode trocar o método da requisição alterando o valor do campo OMIE_CALL. Caso você altere o método é importante verificar também o conteúdo da requisição, que varia de acordo com a requisição. 

![Requisição](https://github.com/omiexperience/api-examples/raw/master/help-assets/api-call-request.png)

O resultado da requisição será algo semelhante ao que podemos observar abaixo: 

![Resposta](https://github.com/omiexperience/api-examples/raw/master/help-assets/api-call-response.png)

## Mais ajuda

Caso você tenha alguma dúvida sobre o uso API ou se o teste que você está realizando não está retornando o que você esperava, você pode compartilhar a requisição clicando em “Compartilhar esse exemplo”. 

Ao clicar, você verá o link do compartilhamento desse exemplo. Nos encaminhe esse link que para termos acesso ao mesmo teste que você está realizando: ajuda@omie.com.br ou chame-nos no chat :-)

Se você está começando o seu projeto agora, também pode ajudar um bate papo com nossos especialistas para debater a melhor forma de montar a integração :-)
