
# Enviar dados ao CRM

Utilizando a função `sendData()` para disparar os dados ao CRM Rubeus.

## Estrutura

### Parâmetros

| Parâmetros | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `data` | `object` | Sim | Objeto que contém os dados à serem enviados ao CRM.<hr>A estrutura do parâmetro segue a mesma do método de [cadastrar contato](/api_crm/contato/#cadastro-de-contato). | 

### Retorno

| Caso | Tipo de retorno | Descrição | 
| --- | --- | --- |
| `Sucesso` | `string` | Retorna uma string contendo o hash do usuário caso a operação seja efetuada com sucesso. | 
| `Falha` | `string` | Retorna uma string vazia. | 

### Código Exemplo

``` javascript tab="Enviar dados"
data = {
    nome: "João da Silva",
    emailPrincipal: "joãosilva@rubeus.com",
    dataNascimento: "1998-12-31"
};
RBTracking.sendData(data);
```
