
# Enviando eventos

O método `sendEvent()` é utilizado para o envio de dados relevantes ao servidor por meio de eventos.

## Estrutura

### Objeto do evento

#### Função
| Parâmetros | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `eventParameters` | `object` | Sim | Objeto que contenha quaisquer dados presentes na lista de dados que o método [cadastrar eventos](/api_crm/evento/#cadastro-de-eventos) que se deseja enviar para o CRM Rubeus.<br>**Obs.: o campo** `pessoa` **pode ser ignorado já que é enviado automaticamente, porém, se enviado tem que se respeitar a mesma origem entre evento e contato caso seja passado o campo** `codigo`**, caso seja o campo** `id`**, o mesmo não ocorre podendo assim enviar eventos e contato com origem diferentes.** |
| `callbackSuccess` | `function` | Não | Função que será executada após o retorno do evento.  |
| `callbackError` | `function` | Não | Função que será executada após um retorno falho do evento.  |

#### Campo “eventParameters”

##### Tipos de eventos

Os tipos de eventos que serão enviados, devem ser gerados pelo meio que o CRM disponibiliza, que é através do menu “Cadastros” e depois na opção “Tipos de eventos”, lá haverá um botão verde escrito “Adicionar tipo de evento” na parte superior esquerda da página.

Logo após, será necessário recuperar o código do tipo de evento criado utilizando-se da API para a [listagem dos tipos de evento](/api_crm/evento/#listar-tipos-de-eventos) do CRM, podendo-se utilizar a página de [testes](/methodstest) disponível na própria documentação.

### Código Exemplo

#### Exemplo

``` javascript tab="JavaScript"
const evento = {
    descricao: '<p><b style="padding-top: 10px”>Exemplo: </b>AAA<br><b style=”padding-top: 10px”>Dispositivo: </b>Desktop<br></p>',
    tipo: '123'
};

const callback = function (resposta) {
    return resposta.responseText;
};

RBTracking.sendEvent(evento);

```

## Retorno

| Caso | Tipo de retorno | Descrição |
| --- | --- | --- |
| `Sucesso` | `boolean` | Retorna um JSON contendo os dados do `eventData` enviados caso a operação seja efetuada com sucesso. |
| `Falha` | `string` | Retorna um JSON contendo o erro encontrado no processo. |

``` javascript tab="Sucesso"
{
  ”success” : true
}

```

``` javascript tab="Falha"
{
  ”success” : false,
  ”error” : ”event without type”,
}

```

