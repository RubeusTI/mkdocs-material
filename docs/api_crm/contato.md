# Contato

## Cadastro de contato

O cadastro de contatos no CRM Rubeus é realizado através de um método bem simples e, para isso, será necessário apenas alguns dados. Confira, abaixo, estes dados:

!!! done ""

    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Contato/cadastro


| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codigo` | `string` | Não | Código de identificação externa. | 
| `id` | `integer` | Não | Código de identificação do contato no CRM | 
| `nome` | `string` | Sim | Nome. | 
| `nomeSocial` | `string` | Não | Nome Social. | 
| `dataNascimento` | `date` | Não | Data de Nascimento.<br>**Padrão: YYYY-MM-DD** | 
| `telefonePrincipal` | `string` | Condicional | Telefone principal de contato.<br>**No cadastro de contato é obrigatório informar o e-mail principal ou o telefone principal.** | 
| `emailPrincipal` | `string` | Condicional | E-mail principal de contato.<br>**No cadastro de contato é obrigatório informar o e-mail principal ou o telefone principal.** | 
| `telefone` | `array[]` | Não | É possível enviar uma lista de telefones secundários para o cadastro de contato. | 
| `email` | `array[]` | Não | É possível enviar uma lista de emails secundários para o cadastro de contato. | 
| `cpf` | `string` | Não | CPF do contato.<br>**Padrão: xxxxxxxxxxx** | 
| `endereco` | `string` | Não | Endereço (limite de caracteres: 255). | 
| `cep` | `string` | Não | CEP.<br>**Padrão:xxxxx-xxx** | 
| `numero` | `string` | Não | Número (endereço). | 
| `bairro` | `string` | Não | Bairro (limite de caracteres: 45). | 
| `sexo` | `integer` | Não | Para informar o sexo utilize: **1** para Masculino e **2** para Feminino. | 
| `imagemUrl` | `string` | Não | URL para foto de perfil do contato.<br>**Em alguns casos, o contato pode já estar cadastrado em um sistema e ter uma foto de perfil. Caso esteja disponível para acesso externo, basta informar a URL de acesso.** | 
| `estadoCidade` | `object` | Não | Deve ser informado um objeto com os dados necessários para vincular o contato a uma [cidade](/api_crm/metodosdelistagem/#listar-cidades).<br>**Se não for encontrada uma cidade com esse nome nessa UF, o contato não será vinculado a uma cidade.** | 
| ↳ `cidade` | `string` | Não | - | 
| ↳ `estado` | `string` | Não | - | 
| `canhoto` | `integer` | Não | Campo para informar se o contato é ou não canhoto.<br>**Padrão: 1 para** `sim` **ou 0 para** `não`. | 
| `profissao` | `string` | Não | Profissão. | 
| `aluno` | `integer` | Não | Se o contato é ou não aluno.<br>**Padrão: 1 para quando for aluno e 0 para quando não for aluno.** | 
| `exaluno` | `integer` | Não | Se o contato é ex-aluno ou não.<br>**Padrão: 1 se já foi aluno e 0 se nunca foi aluno.** | 
| `escolaOrigem` | `string` | Não | Escola de origem do contato | 
| `anoFormacao` | `string` | Não | Ano de formação do contato.<br>**Padrão: YYYY** | 
| `deficiencias` | `object` | Não | Usado para informar a(s) deficiência(s) do contato.<hr>**Usar os dados da tabela de** [deficiências](/tabelasauxiliares/#deficiencias). | 
| ↳ `id` | `integer` | Não | Identificação da deficiência. | 
| ↳ `tipos` | `array[]` | Não | Usar o método listarDeficiencias para obter o campo `id` para a passagem de parâmetro. | 
| `outrasDeficiencias` | `string` | Não | Campo destinado à descrição da deficiência do contato se ela não existir nas opções pré-definidas. | 
| `estadoCivil` | `integer` | Não | Utilizar os dados da tabela [estado civil](/tabelasauxiliares/#estado-civil). | 
| `cor` | `integer` | Não | Utilizar os dados da tabela [cor](/tabelasauxiliares/#cor). | 
| `grauInstrucao` | `integer` | Não | Utilizar os dados da tabela [grau de instrução](/tabelasauxiliares/#grau-de-instrucao). | 
| `tags` | `array[]` | Não | Utilizado para enviar as tags do contato. | 
| `tagsRemovidas` | `array[]` | Não | Utilizado para remover as tags do contato. | 
| `evento` | `object` | Não | Utilizado para criar um evento ao realizar o cadastro do contato. | 
| ↳ `tipo` | `integer` | Não | Id do tipo de evento. | 
| ↳ `codTipo` | `string` | Não | código do tipo de evento. | 
| ↳ `descricao` | `string` | Não | Texto HTML personalizado para agregar informações na exibição do evento. | 
| ↳ `codOferta` | `string` | Não | Para vincular o evento a uma oferta de curso é preciso informar este campo junto com o `codCurso`  correspondente. | 
| ↳ `codCurso` | `string` | Não | Para vincular o evento a uma oferta de curso, é preciso informar este campo junto com o codOferta correspondente. | 
| `camposPersonalizados` | `object` | Não | Usado para atribuir algum campo específico que não está presente no escopo da API.<hr>**Os campos devem ser informados como no exemplo abaixo**:<br><br>`#!json camposPersonalizados : { coluna: "valor" }`<hr>Os nomes das colunas dos campos personalizados são informados no método [Instituicao/campoPersonalizado](/api_crm/campopersonalizados/#listar-campos-personalizados), e o valor poderá ser uma string normal ou um array de strings caso o campo seja multi valorado. | 
| `baseLegal` | `integer` | Sim | Usado para atribuir uma [base legal](/api_crm/metodosdelistagem/#listar-bases-legais) ao contato. | 
| `assinaturas` | `array[] of objects` | Não | Utilizado para atribuir as [assinaturas](/api_crm/metodosdelistagem/#listar-assinaturas-ativas) para o contato. | 
| ↳ `id` | `integer` |  | Identificação da assinatura. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

!!! info ""

O valor do campo `dados` no exemplo de retorno abaixo é o `id` que foi criado no processo.

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
| `codigo` | `string` | Condicional | Chave única de identificação externa do contato enviado. | 
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
        "camposPersonalizados": [
            {
                "nome": "Campo Personalizado",
                "coluna": "campopersonalizado",
                "tipo": "1",
                "valor": "valor"
            }
        ],
        "pessoasRelacionadas": false,
        "telefones": {
            "principal": {
                "id": "1534",
                "telefone": "(31)154689835"
            },
            "secundarios": [
                {}
            ]
        },
        "emails": {
            "principal": {
                "id": "1598",
                "email": "email@email.com"
            },
            "secundarios": [
                {
                    "id": "1600",
                    "email": "email2@email.com"
                }
            ]
        },
        "tags": false,
        "origemCanal": false,
        "origens": [
            {
                "id": "1",
                "titulo": "CRM"
            }
        ],
        "deficiencias": false
    }
}
```

#### Buscar por nome, email, telefone ou CPF

Semelhante ao método acima, este também faz a consulta de contatos no Rubeus, mas, os parâmetros são `nome`, `email`, `telefone` e/ou `cpf`.
Todos os campos deverão ser buscados com o operador `#!sql LIKE`, portanto, acentos e letras maiúsculas/minúsculas deverão ser ignoradas, por exemplo, uma busca feita por nome `#!sql "Carl"` deverá retornar os dados dos contatos que possuem `#!sql "carl"` em alguma parte de seu nome.
O operador utilizado entre as entidades de busca é `#!sql AND`, por isso se for buscado `#!sql nome = "carls"` e `#!sql cpf = "781"`, o método retornará todos os dados dos contatos que possuem `#!sql nome LIKE "%carls%" AND cpf LIKE "%781%"`. Todas as entidades trabalharão desta maneira.
Nas entidades de telefone e e-mail, será validada através de todos os e-mails/telefone que um contato possa ter, sendo considerados os principais e secundários na hora da busca.
Os dados retornados estarão disponíveis dentro de um array, estruturados exatamente igual ao método da API Pessoa/dadosPessoa.

!!! done ""

    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Contato/dadosPessoas


| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `nome` | `string` | Condicional | Campo para informar o nome do contato. | 
| `email` | `string` | Condicional | Campo para informar o email do contato. | 
| `telefone` | `string` | Condicional | Campo para informar o telefone do contato. | 
| `cpf` | `string` | Condicional | Campo para informar o CPF do contato. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao) utilizado na integração. | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal utilizado na integração. | 

## Alterar código do contato

!!! done ""

    <strong  class='REST PUT'>PUT</strong><strong class="MIME">application/json</strong> /api/Contato/alterarCodigo


| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Condicional | Id do contato.<hr>**Será passado se o** `codigoAntigo` **não for passado.** | 
| `codigoAntigo` | `string` | Condicional | Código enviado no cadastro do contato.<hr>**Será passado se**** o** `id` **não for passado.** | 
| `codigoNovo` | `string` | Sim | Código que será substituído com base no código antigo enviado. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
    "success": true,
    "id": "9"
}
```

## Excluir contato

!!! done ""

    <strong  class='REST DELETE'>DELETE</strong><strong class="MIME">application/json</strong> /api/Contato/excluirPessoa


| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `array[]` ou `integer` | obrigatório | id dos contatos que devem ser excluídos..<br>**Os id’s deverão ser informados da seguinte forma:**<br>Um único id: 1<br>Vários id’s: [1, 2, 3] | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta com um id"
{
    "success": true,
    "id": 9
}
```

``` JSON tab="Resposta com mais id’s"
{
    "success": true,
    "id": 1633
}
```

## Listar Oportunidades

!!! done ""

    <strong  class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Contato/listarOportunidades


| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Condicional | Id do contato. | 
| `codigo` | `string` | Condicional | Código do contato | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta com mais id’s"
{
    "resultado": {
        "success": true,
        "dados": [
            {
                "id": "63",
                "curso": "1",
                "cursoNome": "Oferta de Curso",
                "origem": "13",
                "origemNome": "Oportunidade",
                "etapa": "1",
                "etapaNome": "Confirmado",
                "status": "1",
                "statusNome": "Em andamento",
                "processo": "1",
                "razaoOportunidade": "1",
                "razaoOportunidadeNome": "Não contactado",
                "processoNome": "Captação",
                "localOferta": "1",
                "localOfertaNome": "Local de oferta",
                "processoSeletivo": "1",
                "processoSeletivoNome": "Processo",
                "modalidadeNome": "EaD",
                "unidade": "1",
                "unidadeNome": "Unidade",
                "responsavelNome": "João",
                "responsavel": "5",
                "responsavelEmail": "joaoexemplo@email.com.br",
                "notaEnem": "900",
                "valorCurso": "5000",
                "ofertaCursoNome": "Oferta de Curso",
                "objecao_id": "1",
                "objecaoNome": "Objecao",
                "dataProva": "2020-07-21 15:16:00",
                "momento": "2020-05-29 13:05:05",
                "minutosEtapa": "5",
                "agendamento": "3",
                "agendamentoNome": "Sem Agendar",
                "camposPersonalizados": {
                    "campo_compl_proc": "campo"
                }
            }
        ]
    }
}
```