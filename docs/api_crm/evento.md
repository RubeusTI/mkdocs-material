
# Evento

Os eventos são exibidos na linha do tempo do contato e também são utilizados como gatilhos na persona.

## Cadastro de eventos

Método para cadastro de eventos no CRM Rubeus.

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Evento/cadastro

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codigo` | `string` | Não | Chave única de identificação do evento enviado. <br>**Caso queira editar um evento criado basta informar o código do evento criado.** | 
| `tipo` | `integer` | Condicional | Código de identificação do tipo do evento. <br><br>[Listar Tipos de Eventos](#listar-tipos-de-eventos)<br>*Enviar o campo* `id`<br><br>[Cadastrar Tipos de Eventos](#cadastro-de-tipos-de-evento) | 
| `codTipo` | `string` | Condicional | Código externo enviado no cadastro do tipo de evento.<br><br>[Listar Tipos de Eventos](#listar-tipos-de-eventos)<br>*Enviar o campo* `codigo`<br><br>[Cadastrar Tipos de Eventos](#cadastro-de-tipos-de-evento) | 
| `descricao` | `string` | Não | A Descrição pode ser enviada no formato HTML para deixar a apresentação dos dados do evento na linha do tempo mais organizados.<br><i>**É opcional o envio com as tags HTML.**</i> | 
| `pessoa` | `object` | Sim | Vincule o contato ao evento. <hr>*Veja abaixo um exemplo do formato para envio.*<br>`#!json { "codigo": "1" }` (O mesmo código enviado no cadastro do contato) ou `#!json { "id": 1 }` (O id retornado no cadastro do contato.) | 
| `pessoasSecundarias` | `array` | Não | Vincule um ou mais contatos secundários à um registro de processo. <hr>*Veja abaixo um exemplo do formato para envio.*<br>`#!json [{ "codigo": "1" }]` (O mesmo código enviado no cadastro do contato). | 
| `codOferta` | `string` | Não | Código de identificação da oferta do curso.<br>**O código da oferta do curso e o código do curso são obrigatórios para vincular o evento ao um curso no CRM Rubeus.** | 
| `codCurso` | `string` | Não | Código de identificação do curso. | 
| `codRegistro` | `string` | Não | Habilita a criação de mais registros por oferta, sempre ‘criando um **novo registro**  independente dos dados, desde que, o código passado seja único. | 
| `cursosSecundarios` | `array[]` | Não | O campo serve para definir os cursos secundários do registro de processo. | 
| ↳`codOferta` | `string` | Não | - | 
| ↳`codCurso` | `string` | Não | - | 
| `codLocalOferta` | `string` | Não | Código de identificação do local da oferta. | 
| `data` | `dateTime` | Não | A data do evento é utilizada para configurar gatilhos na persona que são disparados X (tempo) antes da data enviada.<br>Essa data é muito utilizada para atividades como data da prova, entrevista e visitas dos candidatos.<br>**Padrão: YYYY-MM-DD hh:mm:ss** | 
| `tipoData` | `string` | Não | O tipo da data tem o propósito de diferenciar os eventos com datas um do outro caso seja usado mais de uma atividade. Para a data da atividade funcionar corretamente este campo é necessário. | 
| `momento` | `dateTime` | Não | Momento no qual o evento ocorreu. Caso não seja informado o sistema irá informar a data e hora atual.<br>**Padrão: YYYY-MM-DD hh:mm:ss** | 
| `notaEnem` | `float` | Não | A nota do enem é usada para ser vinculada a um registro de processo caso o evento esteja vinculado a um curso. | 
| `compareceuAtividade` | `integer` | Não | Campo para informar se o contato compareceu à atividade<br>**Padrão: 1 para** `sim` **ou 0 para** `não` | 
| `formaIngresso` | `string` | Não | Forma de ingresso do registro de processo. | 
| `dataVencimento` | `dateTime` | Não | Data de vencimento da atividade que será criada caso seja configurado no fluxo de automação. | 
| `camposPersonalizados` | `object` | Não | Usado para atribuir algum campo específico que não está presente no escopo da API.<hr>**Os campos devem ser informados como no exemplo abaixo**:<br><br>`#!json camposPersonalizados : { coluna: "valor" }`<hr>Os nomes das colunas dos campos personalizados são informados no método [cadastro de campo personalizado](/api_crm/campopersonalizados/#listar-campos-personalizados), o valor poderá ser uma string normal ou um array de strings caso o campo seja multi valorado. | 
| `dadosOportunidade` | `object` | Não | Serve para poder enviar os dados do registro de processo caso queira alterá-la. | 
| ↳ `codOferta` | `string` | Não | - | 
| ↳ `codCurso` | `string` | Não | - | 
| ↳ `codPessoa` | `string` | Não | - | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
	"success": true,
	"dados": {
		"id": "14",
		"descricao": "<p><b style=\"padding-top:10px\">Descri\u00e7\u00e3o: <\/b>EXEMPLO<br><b style=\"padding-top:10px\">Respons\u00e1vel: <\/b>Matheus Amaral<\/p>",
		"momento": "2019-02-22 11:12:28",
		"pessoa": "9",
		"tipo": "1",
		"tipoNome": "Foi cadastrado",
		"imagem": null,
		"origem": "1",
		"origemNome": "CRM"
	}
}
```

## Cadastro de tipos de evento

Os tipos de eventos são utilizados para categorizar os eventos externos enviados por cada canal de captação.

!!! done ""
    
    <strong  class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Evento/cadastroTipoEvento

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codigo` | `string` | Não | Código de identificação externa. | 
| `titulo` | `string` | Sim | Título para o tipo do evento. Limite de caracteres: 255. | 
| `fluxo` | `integer` | Não | Campo que identifica se o evento faz parte do fluxo de compra do cliente ou não. Caso faça, ele será respeitado na condição da persona que verifica a quanto tempo ele não avança no fluxo.<br><br><i>**1 para Sim, 0 para Não.**</i><br><br>**Padrão: 0.** | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
	"success": true,
	"id": 57 
}
```

## Verificar se o evento já foi cadastrado

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Evento/verificarCadastro

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codPessoa` | `string` | Sim | Código de identificação externa do contato | 
| `codOferta` | `string` | Não | Código de identificação externa da oferta de curso | 
| `codCurso` | `string` | Não | Código de identificação externa do curso | 
| `dataVerificacao` | `dateTime` | Não | Data enviada no cadastro de evento | 
| `tipoData` | `string` | Não | Tipo da data enviada no cadastro de evento | 
| `tipoEvento` | `integer` | Condicional | Identificação do tipo de evento<br><br>[Listar Tipos de Eventos](#listar-tipos-de-eventos)<br>*Enviar o campo* `id` | 
| `codTipoEvento` | `string` | Condicional | Código de identificação externa do tipo de evento<br><br>[Listar Tipos de Eventos](#listar-tipos-de-eventos)<br>*Enviar o campo* `codigo` | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
	"success": true,
	"dados": 11 
}
```

## Listar tipos de eventos

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Evento/listarTipoEvento

Método utilizado para listar os tipos de evento para posteriormente utilizar como parâmetro em outro método.

``` JSON tab="Resposta"
{
    "success": true,
    "dados": [{
        "id": "1",
        "titulo": "Cadastrou-se",
        "codigo": "CADASTRO",
        "origem": "1",
        "origemNome": "CRM"
    }]
}
```

