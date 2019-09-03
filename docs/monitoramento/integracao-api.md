
# Integração via API

Para realizar a integração com o Monitoramento de página via API no backend de sua aplicação utilizando os métodos de evento e contato é necessário obter alguns dados antes no cliente disponível via JavaScript através dos métodos `getHash` para obter o id da sessão atual, `getHostClient` para obter o id do Rubeus no tracking e o `idGenerator` que por sua vez não obrigatoriamente precisa ser esse gerador de id, desde que seja passado algo como identificação nos campos que requisitam um identificador.

Os atributos adicionais devem estar dispostos da seguinte maneira ao realizar o envio de dados para o backend de sua aplicação.

``` javascript tab="JavaScript"
var dados = {
    /**
     * conteúdo do formulário
     */
    session_id: RBTracking.getHash(),
    hostClient: RBTracking.getHostClient(),
    substitute_id: RBTracking.idGenerator()
};
```

## Enviando contato ao Rubeus

!!! done ""

    <strong class='REST PATCH'>PATCH</strong><strong class="MIME">application/json</strong> https://<span>tracki</span>ng.apprubeus.com.br/api/identify

No POST que sua página faz para o backend da sua aplicação, deverá conter os dados adicionais do tracking, que por sua vez, são obtidos executando os métodos descritos acima.

O envio deverá ser um JSON, tal como no cabeçalho deste tópico e a estrutura é semelhante ao [cadastro de contato ao Rubeus](https://docs.rubeus.com.br/api_crm/contato/) nativo, mas com os campos adicionais inclusos com o mesmo molde apresentado acima.

``` php tab="PHP"
<?php
// ...
$dados = [
    "hostClient" => "aSLhOBjZV5wD7YEpppb3",
    "nome" => "João Silva",
    "origem" => 3,
    "session_id" => "663303050524637653063286663526141567525958427",
    "substitute_id" => "068615868786813623018786600516031567525965972",
    "token" => "a1264cc5b581cc6bfbad3faee2c54a99"
];

$dadosJson = json_encode($dados);
// ...
```

## Enviando evento ao Rubeus

!!! done ""

    <strong class='REST PATCH'>PATCH</strong><strong class="MIME">application/json</strong> https://<span>tracki</span>ng.apprubeus.com.br/api/sendEvent

Assim como o exemplo anterior, neste caso também devemos ter presente no corpo da requisição os campos adicionais, porém, a estrutura é relativamente diferente ao [cadastro de eventos do Rubeus](https://docs.rubeus.com.br/api_crm/evento/#cadastro-de-eventos), apresentando o conteúdo do evento dentro de um objeto chamado `eventData` e o `eventType` ou `codEventType` no mesmo nivel, que por sua vez são alocados em um array de objetos `event`.

No mesmo nível de `event` temos a presença dos dados adicionais do tracking.

``` php tab="PHP"
<?php
// ...
$evento = [
    "event" => [[
        "eventType" => "29",
        "eventData" => [
            "codCurso" => "1",
            "codOferta" => "3",
            "codLocalOferta" => "3-5",
            "origem" => 3,
            "token" => "a1264cc5b581cc6bfbad3faee2c54a99",
        ]
    ]],
    "hostClient" => "aSLhOBjZV5wD7YEpppb3",
    "session_id" => "663303050524637653063286663526141567525958427",
    "event_id" => "333333007367155333780632635331011566925997662",
];

$eventoJson = json_encode($evento);
// ...
```
