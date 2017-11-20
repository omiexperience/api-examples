#region

using System;
using System.ServiceModel;
using System.ServiceModel.Channels;
using OmieSoapClientExample.ClientesCadastroReference;

#endregion

namespace OmieSoapClientExample
{
    class Program
    {
        // Olá :-)
        //
        // Esse é um exemplo (bem simples) de como fazer um upsert no cadastro de um cliente.
        //
        // Um "upsert" significa que se o cadastro existe, ele será atualizado, caso contrário, criará um novo :-)
        //
        // As credenciais de acesso solicitadas abaixo estão disponíveis no Portal do Desenvolvedor: http://developer.omie.com.br/

        static string omie_app_key = "DIGITE_O_APP_KEY_AQUI";
        static string omie_app_secret = "DIGITE_O_APP_SECRET_AQUI";

        static void Main(string[] args)
        {
            // Cria um novo client e define o responsável pelo tratamento do retorno
            var soapClient = new ClientesCadastroSoapClient();

            // Define os dados de autenticação
            var builder = new EndpointAddressBuilder(soapClient.Endpoint.Address);
            builder.Headers.Add(AddressHeader.CreateAddressHeader("app_key", "", omie_app_key));
            builder.Headers.Add(AddressHeader.CreateAddressHeader("app_secret", "", omie_app_secret));
            soapClient.Endpoint.Address = builder.ToEndpointAddress();

            CBLog("Exemplo DotNet");
            CBLog("");
            CBLog("  1 - Atualizar um cliente");
            CBLog("  2 - Listar clientes");
            CBLog("");
            CBLog("      Opção: ", false);

            var a = Console.ReadKey();
            CBLog("");
            CBLog("");

            if (a.KeyChar == '1')
            {
                // Upsert no cadastro de cliente
                CBLog("Atualizando o cadastro do cliente... ", false);
                var cliente = new clientes_cadastro
                {
                    razao_social = "Omiexperience S/A",
                    cnpj_cpf = "18.511.742/0001-47",
                    cidade = "SAO PAULO (SP)",
                    estado = "SP",
                    codigo_cliente_integracao = "444"
                };

                // Executa a chamada
                soapClient.UpsertClienteCompleted += OnSoapClientOnUpsertClienteCompleted;
                soapClient.UpsertClienteAsync(cliente);
            }
            else if (a.KeyChar == '2')
            {
                CBLog("Listando clientes cadastrados... ");

                var clientes_filtro = new clientes_list_request();
                clientes_filtro.apenas_importado_api = "N";
                clientes_filtro.pagina = "1";
                clientes_filtro.registros_por_pagina = "3";

                soapClient.ListarClientesCompleted += soapClient_ListarClientesCompleted;
                soapClient.ListarClientesAsync(clientes_filtro);

            }

            Console.ReadKey();
        }

        /// <summary>
        /// Trata o resultado da chamada de atualizacao de um cliente
        /// </summary>
        /// <param name="o"></param>
        /// <param name="soapArgs"></param>
        private static void OnSoapClientOnUpsertClienteCompleted(object o, UpsertClienteCompletedEventArgs soapArgs)
        {
            if (soapArgs.Error == null)
            {
                CBLog("pronto!");
                CBLog(string.Format("Código Cliente Omie = [{0}]", soapArgs.Result.codigo_cliente_omie));
            }
            else
                CBLog("ERRO: " + soapArgs.Error.Message);
        }

        /// <summary>
        /// Exibe no console a lista de clientes :-)
        /// </summary>
        /// <param name="o"></param>
        /// <param name="soapArgs"></param>
        static void soapClient_ListarClientesCompleted(object sender, ListarClientesCompletedEventArgs soapArgs)
        {
            if (soapArgs.Error == null)
            {
                foreach (var cliente in soapArgs.Result.clientes_cadastro)
                {
                    CBLog(string.Format("Código Cliente Omie = [{0}]", cliente.codigo_cliente_omie));
                    CBLog(string.Format("Razão Social        = [{0}]", cliente.razao_social));
                    CBLog(string.Format("E-mail              = [{0}]", cliente.email));
                    CBLog("------------------------------------------------------------------------------");
                }
            }
            else
                CBLog("ERRO: " + soapArgs.Error.Message);
        }
        /// <summary>
        /// Exibe uma mensagem no console
        /// </summary>
        /// <param name="text">mensagem que será exibida</param>
        /// <param name="newLine">define se deve quebrar a linha ou não</param>
        private static void CBLog(string text, bool newLine = true)
        {
            if (newLine)
                Console.Out.WriteLine(text);
            else
                Console.Out.Write(text);
        }

    }
}
