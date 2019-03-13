
# Recuperando informações

Durante o fluxo do script foram coletadas diversas informações sobre o usuário, vide [apresentação](apresentacao.md), parte desses dados, tais como os dados base da campanha e dados passados por evento, podem ser retornados utilizando um método disponível denominado de `getData()`.  
Para fazer o requerimento dos dados dos eventos atribuídos previamente à um usuário específico. utiliza-se a função `getData()`, ela espera 2 funções como parâmetros, uma para sucesso e outra para erro. Apenas são retornado eventos mais atuais que tenha o `eventType` definido como `data`, vide [Enviando Eventos](enviando-eventos.md), ou seja, apenas eventos relacionados à usuários, os dados originais da campanha serão retornados juntos no documento.

## Estrutura

### Parâmetros

!!! info "Callbacks"

    As funções de callback tem acesso a 1 parâmetro de resposta do servidor, nele é possível conferir o retorno da função.

| Parâmetros | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `callbackSuccess` | `function` | Não | Callback que será responsável por entregar a resposta do servidor ao cliente | 
| `callbackError` | `function` | Não | Callback que será responsável por entregar a resposta contendo o erro do  servidor ao cliente | 

### Código Exemplo

``` javascript tab="JavaScript"
callbackSuccess = function (r) {
    return (r);
}
callbackError = function (r) {
    return ('Error: ' + r);
}

RBTracking.getData(callbackSuccess, callbackError);
```

### Retorno

| Caso | Tipo de retorno | Descrição | 
| --- | --- | --- |
| `Sucesso` | `array[]` | Retorna um array contendo os dados de evento do usuário caso a operação seja efetuada com sucesso. | 
| `Falha` | `string` | Retorna uma string contendo o erro encontrado no processo. | 

``` json tab="Sucesso"
{
    'agrupamento': 34,
    'codeUser': 'USUARIO20837420'
}
```

``` json tab="Falha"
{
    'error': 'Hash não enviado',
    'status': 'fail'
}
```

## Aplicação no uso

Ter uma lista de eventos com os dados originais da campanha pode ser útil na hora de fazer uma integração com outro sistema.