
# Unidade

## Cadastro de unidade

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Unidade/cadastro

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `nome` | `string` | Sim | Nome da unidade | 
| `descricao` | `string` | Sim | Descrição da unidade | 
| `codigo` | `string` | Não | Código de identificação externa | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
	"success": true
}
```

## Listar unidades

!!! done ""
    
    <strong class='REST GET'>GET</strong><strong class="MIME">application/json</strong> /api/Unidade/listarUnidades

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
    "success": true,
	"dados": [{
		"id": "1",
		"nome": "Nome da unidade",
		"descricao": "Descrição da unidade",
		"codigo": "000"
	}]
}
```

