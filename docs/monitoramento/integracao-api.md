
# Integração via API

Para realizar a integração com o Monitoramento de página via API no backend de sua aplicação utilizando os métodos de evento e contato é necessário obter alguns dados antes no cliente disponível via JavaScript através dos métodos `getHash` para obter o id da sessão atual, `getHostClient` para obter o id do Rubeus no tracking e o `idGenerator` que gera uma identificação para os campos que requisitam um identificador.

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

    <strong class='REST PATCH'>PATCH</strong><strong class="MIME">application/json</strong> https://<span>tracki</span>ng.apprubeus.com.br/api/v2/sendData

Na requisição que fora enviada, deverá conter os dados adicionais do tracking, que por sua vez, são obtidos executando seus devidos métodos.

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `session_id` | `string` | Sim | Código da sessão do tracking no navegador.<hr>**Adquirido no método** `RBTracking.getHash()`. |
| `substitute_id` | `string` | Sim | Código gerado que serve de identificação secudária do contato no CRM Rubeus.<hr>**Adquirido no método** `RBTracking.idGenerator()`. |
| `hostClient` | `string` | Sim | Código de identificação do Rubeus.<hr>**Adquirido no método** `RBTracking.getHostClient()`. |
| Dados do contato |  |  | Os dados do [contato](/api_crm/contato/#cadastro-de-contato) deverão estar mesclados no objeto de envio. |

O envio deverá ser um JSON, tal como no cabeçalho deste tópico e a estrutura é semelhante ao [cadastro de contato ao Rubeus](https://docs.rubeus.com.br/api_crm/contato/) nativo, mas com os campos adicionais inclusos com o mesmo molde apresentado acima.

``` php tab="PHP de envio"
<?php
// ...
/**
 * Dados meramente ilustrativos
 */
$dados = [
    "hostClient" => "hostclientexemplo",
    "nome" => "João Silva",
    "origem" => 0,
    "session_id" => "sessaoexemplo",
    "substitute_id" => "substituteexemplo",
    "token" => "tokenexemplo"
];

$dadosJson = json_encode($dados);
// ...
```

``` JSON tab="JSON de resposta"
{
	"success": true,
	"dados": {
		"id": "155"
	}
}
```

## Enviando evento ao Rubeus

!!! done ""

    <strong class='REST PATCH'>PATCH</strong><strong class="MIME">application/json</strong> https://<span>tracki</span>ng.apprubeus.com.br/api/sendEvent

Assim como o exemplo anterior, neste caso também devemos ter presente no corpo da requisição os campos adicionais.

A estrutura referente ao [cadastro de eventos do Rubeus](https://docs.rubeus.com.br/api_crm/evento/#cadastro-de-eventos), tem o conteúdo do evento alocados no objeto `event`.

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `event` | `object` | Sim | Objeto com os dados do [evento](/api_crm/evento/#cadastro-de-eventos). |
| `session_id` | `string` | Sim | Código da sessão do tracking no navegador.<hr>**Adquirido no método** `RBTracking.getHash()`. |
| `hostClient` | `string` | Sim | Código de identificação do Rubeus.<hr>**Adquirido no método** `RBTracking.getHostClient()`. |
| `pageTitle` | `string` | Não | Título da página atual em que o visitante está.. |

No mesmo nível de `event` temos a presença dos dados adicionais do tracking.

``` php tab="PHP de envio"
<?php
// ...
/**
 * Dados meramente ilustrativos
 */
$evento = [
    "event" => [
        "codCurso" => "1",
        "codOferta" => "1",
        "codLocalOferta" => "1-2",
        "tipo" => "1",
        "origem" => 0,
        "token" => "tokenexemplo",
    ],
    "hostClient" => "hostclientexemplo",
    "session_id" => "sessaoexemplo",
];

$eventoJson = json_encode($evento);
// ...
```

``` JSON tab="JSON de resposta"
{
	"success": true,
	"dados": 1
}
```

## RBTracking.clearSession()

!!! warning "ATENÇÂO!"

    Este método só deve ser utilizado caso tenha-se uma área administrativa acessível ao cliente e logo após ele realizar o *logout*.

Este método tem a funcionalidade de limpar os dados da sessão do tracking assim reiniciando os processos básicos da aplicação e garantindo uma precisão maior nos dados.

