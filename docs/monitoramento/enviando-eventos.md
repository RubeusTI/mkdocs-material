
# Enviando eventos

O método `sendEvent()` é utilizado para o envio de dados relevantes ao servidor por meio de eventos.

## Estrutura

#### Objeto do evento

!!! info "Parâmetros"

    * **Os tipos aceitos no `eventType` são fixos.**
    * **Deverá ser passado dentro de um `object` ou `array[]`.**

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `eventData` | `object` | Sim | Objeto que contenha quaisquer dados presentes na lista de dados que o método [cadastrar eventos](/api_crm/evento/#cadastro-de-eventos) que se deseja enviar para o CRM Rubeus.<br>**Obs.: o campo** `pessoa` **deve ser ignorado já que é enviado automaticamente.** | 
| `eventType` | `integer` | Sim | Utilizado para especificar o id tipo de evento que irá para o CRM. | 

#### Função
| Parâmetros | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `eventParameters` | `object` | Sim | Objeto que contém os dados do evento a ser enviado. | 
| `callbackSuccess` | `function` | Não | Função que será executada após o retorno do evento.  | 
| `callbackError` | `function` | Não | Função que será executada após um retorno falho do evento.  | 

#### Tipos de eventos

Os tipos de eventos que serão enviados, devem ser gerados pelo meio que o CRM disponibiliza, que é através do menu “Cadastros” e depois na opção “Tipos de eventos”, lá haverá um botão verde escrito “Adicionar tipo de evento” na parte superior esquerda da página. 

Logo após, será necessário recuperar o código do tipo de evento criado utilizando-se da API para a [listagem dos tipos de evento](/api_crm/evento/#listar-tipos-de-eventos) do CRM, podendo-se utilizar a página de [testes](/methodstest) disponível na própria documentação.


### Código Exemplo

#### Exemplo 1

``` javascript tab="JavaScript"
evento = {
    eventData : {
        descricao: '<p><b style="padding-top: 10px”>Exemplo: </b>AAA<br><b style=”padding-top: 10px”>Dispositivo: </b>Desktop<br></p>'
    },
    eventType: ‘123‘
};

RBTracking.sendEvent(evento);
   
```

Nesse exemplo, temos o envio de um objeto com o código de usuário dentro do `eventData`, e no mesmo nível temos o `eventType` carregando o tipo correto do evento.

#### Exemplo 2

``` javascript tab="JavaScript"
evento = {
	eventData : {
	    descricao: '<p><b style="padding-top: 10px”>Exemplo: </b>AAA<br><b style=”padding-top: 10px”>Dispositivo: </b>Desktop<br></p>' 
    },
    eventType: ‘312‘
};

callback = function(resposta){
	return resposta.responseText;
};

RBTracking.sendEvent(evento, callback);
   
```

!!! tip "Envios de eventos"

	Quando tiver mais de 1 evento de tipos diferentes para serem enviados, devem ser alocados em um array.

### Retorno

| Caso | Tipo de retorno | Descrição | 
| --- | --- | --- |
| `Sucesso` | `array[]` | Retorna um JSON contendo os dados do `eventData` enviados caso a operação seja efetuada com sucesso. | 
| `Falha` | `string` | Retorna um JSON contendo o erro encontrado no processo. | 

