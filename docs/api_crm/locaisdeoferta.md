
# Locais de oferta

## Cadastrar local oferta

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/LocalOferta/cadastro

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codigo` | `string` | Sim | Código de identificação externa. | 
| `titulo` | `string` | Sim | Título para o tipo do evento. Limite de caracteres: 255. | 
| `descricao` | `string` | Sim | A Descrição pode ser enviada no formato HTML para deixar a apresentação dos dados do evento na linha do tempo mais organizados.<br><br>É opcional o envio com as tags HTML.<hr>**Limite de caracteres: 255.** | 
| `telefone` | `string` | Não | É possível cadastrar um telefone por local de oferta. | 
| `email` | `string` | Não | É possível cadastrar um email por local de oferta. | 
| `endereco` | `string` | Não | Endereço.<hr>**Limite de caracteres: 255.** | 
| `numero` | `integer` | Não | Número (endereço). | 
| `bairro` | `string` | Não | Bairro. Limite de caracteres: 255. | 
| `cep` | `string` | Não | CEP do endereço. | 
| `estadoCidade` | `object` | Não | Deve ser informado um objeto com os dados necessários para vincular o contato a uma cidade.<br>**Se não for encontrada uma cidade com esse nome nessa UF o contato não será vinculada a uma cidade.** | 
| ↳ `cidade` | `string` | Não | - | 
| ↳ `estado` | `string` | Não | - | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Retorno"
{
    "success": true
}
```

## Dados do local da oferta

!!! done ""
    
    <strong class='REST GET'>GET</strong><strong class="MIME">application/json</strong> /api/LocalOferta/dadosLocalOferta

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Sim | Identificação retornada no cadastro do local de oferta. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Retorno"
{
	"success": true,
	"dados": {
		"id": "2",
		"codigo": "local-1",
		"titulo": "Local Oferta Exemplo",
		"descricao": "EXEMPLO",
		"telefone": null,
		"email": null,
		"endereco": null,
		"numero": null,
		"bairro": null,
		"cep": null,
		"cidade": null
	}
}
```

## Excluir local de oferta

!!! done ""
    
    <strong class='REST DELETE'>DELETE</strong><strong class="MIME">application/json</strong> /api/LocalOferta/excluirLocalOferta

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Não | Identificação retornada no cadastro do local de oferta. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Retorno"
{
    "success": true
}
```

## Listar local de oferta

!!! done ""
    
    <strong class='REST GET'>GET</strong><strong class="MIME">application/json</strong> /api/LocalOferta/listarLocaisOferta

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codOferta` | `string` | Não | Código de identificação externa da oferta de curso. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
    "success": true,
    "dados": [{
    "id": "1",
    "codigo": "000",
    "titulo": "Nome do local de oferta",
    "descricao": null,
    "telefone": null,
    "email": null
}]
}
```

