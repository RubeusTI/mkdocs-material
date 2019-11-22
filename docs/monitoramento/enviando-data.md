
# Enviar dados ao CRM

Utilizando a função `sendData()` para enviar os dados do contato ao CRM Rubeus, assim transformando os visitantes em leads.

## Estrutura

### Parâmetros

| Parâmetros | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `data` | `object` | Sim | Objeto que contém os dados à serem enviados ao CRM.<hr>A estrutura do parâmetro segue a mesma do método de [cadastrar contato](/api_crm/contato/#cadastro-de-contato).<br>**Obs.: o campo “codigo” deve ser ignorado já que é enviado automaticamente.** |
| `callbackSuccess` | `function` | Não | Função que irá ser executada quando a requisição retornar com o status como **sucesso**. |
| `callbackError` | `function` | Não | Função que irá ser executada quando a requisição retornar com o status como **erro**. |

### Retorno
``` JSON tab="Return"
{
	"success": true,
	"data": {
		"id": "50"
	}
}
```

### Código Exemplo

``` javascript tab="JavaScript"
data = {
    nome: "João da Silva",
    emailPrincipal: "joãosilva@rubeus.com",
    dataNascimento: "1998-12-31"
};
RBTracking.sendData(data);
```

