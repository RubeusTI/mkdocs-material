
# Contato

## Cadastro de contato

Método para cadastro de contatos no CRM Rubeus. Segue abaixo os dados necessários para o cadastro.

!!! done ""

    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Contato/cadastro

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codigo` | `string` | Não | Código de identificação externa. | 
| `nome` | `string` | Sim | Nome. | 
| `nomeSocial` | `string` | Não | Nome social | 
| `dataNascimento` | `date` | Não | Data de nascimento.<br>**Padrão: YYYY-MM-DD** | 
| `telefonePrincipal` | `string` | Condicional | Telefone principal de contato.<br>**No cadastro de contato é obrigatório informar o e-mail principal ou o telefone principal.** | 
| `emailPrincipal` | `string` | Condicional | E-mail principal de contato.<br>**No cadastro de contato é obrigatório informar o e-mail principal ou o telefone principal.** | 
| `telefone` | `array[]` | Não | É possível enviar uma lista de telefones secundários para o cadastro de contato. | 
| `email` | `array[]` | Não | É possível enviar uma lista de telefones secundários para o cadastro de contato. | 
| `cpf` | `string` | Não | CPF do contato.<br>**Padrão: xxxxxxxxxxx** | 
| `endereco` | `string` | Não | Endereço. Limite de caracteres: 255. | 
| `cep` | `string` | Não | CEP<br>**Padrão:xxxxx-xxx** | 
| `numero` | `string` | Não | Número (endereço). | 
| `bairro` | `string` | Não | Bairro. Limite de caracteres: 45. | 
| `sexo` | `integer` | Não | Para informar o Sexo utilize:1 para Masculino. 2 para Feminino. | 
| `imagemUrl` | `string` | Não | URL para foto de perfil do contato.<br>**Em alguns casos o contato pode já estar cadastrado em um sistema e ter uma foto de perfil. Caso esteja disponível para acesso externo basta informar a url de acesso.** | 
| `estadoCidade` | `object` | Não | Deve ser informado um objeto com os dados necessários para vincular o contato a uma [cidade](/api_crm/metodosdelistagem/#listar-cidades).<br>**Se não for encontrada uma cidade com esse nome nessa UF o contato não será vinculada a uma cidade.** | 
| ↳ `cidade` | `string` | Não | - | 
| ↳ `estado` | `string` | Não | - | 
| `canhoto` | `integer` | Não | Campo para informar se o contato é ou não canhoto.<br>**Padrão: 1 para** `sim` **ou 0 para** `não` | 
| `profissao` | `string` | Não | Profissão | 
| `aluno` | `integer` | Não | Se o contato é ou não aluno<br>**Padrão: 1 para quando for aluno ou 0 para quando não for aluno.** | 
| `exaluno` | `integer` | Não | Se o contato é ex-aluno ou não<br>**Padrão: 1 se já foi aluno ou 0 se nunca foi aluno.** | 
| `anoFormacao` | `string` | Não | Ano de formação do contato<br>**Padrão: YYYY** | 
| `deficiencias` | `object` | Não | Usado para informar a deficiência(s) do contato.<hr>Usar os dados da tabela de [deficiências](/tabelasauxiliares/#deficiencias) | 
| ↳ `id` | `integer` | Não | Identificação da deficiência. | 
| ↳ `tipos` | `array[]` | Não | Usar o método listarDeficiencias para obter o campo `id` para a passagem de parâmetro. | 
| `outrasDeficiencias` | `string` | Não | Campo destinado à descrição da deficiência do contato se ela não existir nas opções pré-definidas. | 
| `estadoCivil` | `integer` | Não | Utilizar os dados da tabela [estado civil](/tabelasauxiliares/#estado-civil) | 
| `cor` | `integer` | Não | Utilizar os dados da tabela [cor](/tabelasauxiliares/#cor) | 
| `grauInstrucao` | `integer` | Não | Utilizar os dados da tabela [grau de instrucao](/tabelasauxiliares/#grau-de-instrucao) | 
| `tags` | `array[]` | Não | Utilizado para enviar as tags do contato | 
| `tagsRemovidas` | `array[]` | Não | Utilizado para remover as tags do contato | 
| `evento` | `object` | Não | Utilizado para criar um evento ao realizar o cadastro do contato. | 
| ↳ `tipo` | `integer` | Não | Id do tipo de evento. | 
| ↳ `descricao` | `string` | Não | Texto HTML personalizado para agregar informações na exibição do evento. | 
| ↳ `codOferta` | `integer` | Não | Para vincular o evento a uma oferta de curso informar este campo junto com o `codCurso` correspondente. | 
| ↳ `codCurso` | `integer` | Não | Para vincular o evento a uma oferta de curso informar este campo junto com o codOferta correspondente. | 
| `camposPersonalizados` | `object` | Não | Usado para atribuir algum campo específico que não está presente no escopo da API.<hr>**Os campos devem ser informados como no exemplo abaixo**:<br><br>`#!json camposPersonalizados : { coluna: "valor" }`<hr>Os nomes das colunas dos campos personalizados são informados no método [Instituicao/campoPersonalizado](/api_crm/campopersonalizados/#listar-campos-personalizados), o valor poderá ser uma string normal ou um array de strings caso o campo seja multi valorado | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
	"success": true,
	"dados": 10
}
```

## Dados do contato

!!! done ""
    
    <strong  class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Contato/dadosPessoa

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codigo` | `string` | Condicional | Chave única de identificação externa do contato enviada. | 
| `id` | `integer` | Condicional | Código de identificação do contato no CRM. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
	"success": true,
	"dados": {
		"id": "155",
		"nome": "Nome Exemplo",
		"nomeSocial": null,
		"codigo": "000",
		"imagem": "null",
		"cpf": "977.250.067-10",
		"datanascimento": "1996-07-02",
		"endereco": "Rua Heitor Tadeu",
		"cep": "xxxxx-xxx",
		"numero": "752",
		"bairro": "Barra",
		"cidade": "2354",
		"cidadeNome": "Sete Lagoas - MG",
		"sexo": "1",
		"sexoNome": "Masculino",
		"origemId": "1",
		"origemNome": "CRM",
		"urlPublicaRdStation": "null",
		"canhoto": null,
		"profissao": null,
		"aluno": null,
		"exaluno": null,
		"anoFormacao": null,
		"estadoCivil": null,
		"estadoCivilNome": null,
		"cor": null,
		"corNome": null,
		"grauInstrucao": null,
		"grauInstrucaoNome": null,
		"outrasDeficiencias": null,
		"mesclada": "1",
		"verificada": "0",
		"desinscreveu": "0",
		"camposPersonalizados": [{
			"nome": "Campo Personalizado",
			"coluna": "campopersonalizado",
			"tipo": "1",
			"valor": "valor"
		}],
		"pessoasRelacionadas": false,
		"telefones": {
			"principal": {
				"id": "1534",
				"telefone": "(31)154689835"
			},
			"secundarios": [{}]
		},
		"emails": {
			"principal": {
				"id": "1598",
				"email": "email@email.com"
			},
			"secundarios": [{
				"id": "1600",
				"email": "email2@email.com"
			}]
		},
		"tags": false,
		"origemCanal": false,
		"origens": [{
			"id": "1",
			"titulo": "CRM"
		}],
		"deficiencias": false
	}
}
```

## Alterar código do contato

!!! done ""
    
    <strong  class='REST PUT'>PUT</strong><strong class="MIME">application/json</strong> /api/Contato/alterarCodigo

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Condicional | Id do contato<hr>**Passar se o** `codigoAntigo` **não for passado.** | 
| `codigoAntigo` | `string` | Condicional | Código enviado no cadastro do contato.<hr>**Passar se o** `id` **não for passado.**  | 
| `codigoNovo` | `string` | Sim | Código que será substituído com base no código antigo enviado. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
    "success":true,
    "id":"9"
}
```

