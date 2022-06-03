# omie_python_api
Uma maneira fácil de comunicar-se com a API da Omie, utilizando Python.

## Configuração inicial

### Primeiramente, crie um arquivo .env contendo os seguintes dados: 

*EmpresaTeste_KEY = '38333295000'*

*EmpresaTeste_SECRET = 'fed2163e2e8dccb53ff914ce9e2f1258'*

*EmpresaTeste_CLIENTE_IMPOSTO = 1*

*EmpresaTeste_CENARIO_IMPOSTO = 1*

*EmpresaTeste_LOCAL_DE_ESTOQUE = 464449588*

#### Essas são as credenciais da API teste da Omie. 

### Para adicionar suas empresas, utilize o mesmo padrão, mudando apenas o nome inicial no nome da variável e as informações. Exemplo:

*MinhaEmpresa_KEY = "APP_KEY da sua primeira empresa"*

*MinhaEmpresa_SECRET = "APP_SECRET da sua primeira empresa"*

*MinhaEmpresa_CLIENTE_IMPOSTO = 'Cliente padrão para consulta de impostos da sua empresa (Código API Omie)'*

*MinhaEmpresa_CENARIO_IMPOSTO = Número do cenário de impostos da sua empresa (Código API Omie)*

*MinhaEmpresa_LOCAL_DE_ESTOQUE = Número do local de estoque padrão da sua empresa (Código API Omie)*

*MinhaOutraEmpresa_KEY = "APP_KEY da sua segunda empresa"*

*MinhaOutraEmpresa_SECRET = "APP_SECRET da sua segunda empresa"*<br>

*MinhaOutraEmpresa_CLIENTE_IMPOSTO = 'Cliente padrão para consulta de impostos da sua segunda empresa'*

*MinhaOutraEmpresa_CENARIO_IMPOSTO = Número do cenário de impostos da sua segunda empresa*

*MinhaOutraEmpresa_LOCAL_DE_ESTOQUE = Número do local de estoque padrão da sua segunda empresa*

### Após, instale as bibliotecas necessárias, rodando dentro dessa pasta o comando:

*pip install -r requirements.txt*<br>

### E então, você pode usar o arquivo *exemplo.py* para entender como essa biblioteca funciona, e se basear.

## Métodos já configurados: 

+ **AlterarProduto** - executar()
+ **ConsultarCliente** - executar()
+ **ConsultarPedido** - executar()
+ **ConsultarVendedor** - executar()
+ **ListarCenarios** - executar()
+ **ListarClientes** - executar(), todos()
+ **ListarLocaisEstoque** - executar()
+ **ListarImpostosCenario** - executar()
+ **ListarPosEstoque** - executar(), todos()
+ **ListarProdutos** - executar(), todos()
+ **ListarTabelaItens** - executar(), todos()
+ **ListarTabelasPreco** - executar()