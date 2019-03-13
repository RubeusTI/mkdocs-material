
# Registro de processo

## Alterar contato

Este método tem a função de vincular ou remover contatos secundários de um registro de processo.

!!! done ""
    
    <strong class='REST PUT'>PUT</strong><strong class="MIME">application/json</strong> /api/Registro/alterarContatosVinculados

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codContato` | `string` | Sim | Código do contato principal | 
| `codCurso` | `string` | Sim | Código do curso principal | 
| `codOferta` | `string` | Sim | Código da oferta do curso principal. | 
| `contatos` | `array[]` | Não | Neste modelo com os contatos secundários que vão ser vinculadas a um registro de processo. | 
| ↳ `codigo` | `string` | Não | Código de identificação externa do contato. | 
| ↳ `tipo` | `integer` | Não | Código de identificação do tipo do contato. <br><br>[Listar tipos do contato](/api_crm/metodosdelistagem/#listar-tipos-do-contato)<br>**Enviar o campo** `id` | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
"success": true
}
```

