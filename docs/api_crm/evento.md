
# Enviando eventos

O método `sendEvent()` é utilizado para o envio de dados relevantes ao servidor por meio de eventos.

## Estrutura

#### Objeto do evento

!!! info "Parâmetros"

    * **Os tipos aceitos no `eventType` são fixos.**
    * **Deverá ser passado dentro de um `object` ou `array[]`.**

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `eventData` | `object` | Sim | Objeto que contenha quaisquer dados que se é desejado armazenar. | 
| `eventType` | `integer` | Sim | Utilizado para especificar o tipo para o qual se destina o evento. | 
| `identifier` | `string` | Não | Reservado para uma atribuição personalizada de identificador ao evento.<hr>**Por padrão os eventos enviados já tem um identificador gerado automaticamente.** | 

#### Função
| Parâmetros | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `eventParameters` | `object` | Sim | Objeto que contém os dados do evento a ser enviado. | 
| `callback` | `function` | Não | Função que será executada após o retorno do evento.  | 

#### Tipos de eventos

Os tipos de eventos que serão enviados, devem ser gerados pelo meio que o CRM disponibiliza, que é através do menu “Cadastros” e depois na opção “Tipos de eventos”, lá haverá um botão verde escrito “Adicionar tipo de evento” na parte superior esquerda da página. 

Logo após, será necessário recuperar o código do tipo de evento criado utilizando-se da API para a [listagem dos tipos de evento](/api_crm/evento/#listar-tipos-de-eventos) do CRM, podendo-se utilizar a página de [testes](/methodstest) disponível na própria documentação.

### Código Exemplo

#### Exemplo 1

``` javascript tab="JavaScript"
evento = {
    eventData : {
        codigoUser: ‘codigo_gerado’
    },
    eventType: ‘data‘
};

RBTracking.sendEvent(evento);
   
```

Nesse exemplo, temos o envio de um objeto com o código de usuário dentro do `eventData`, e no mesmo nível temos o `eventType` carregando o tipo correto do evento.

#### Exemplo 2

``` javascript tab="JavaScript"
evento = {
	eventData : {
        curso: {
            nome: ‘Administração’,
            id-curso: ‘1-123-456’
        },
        user:{
	        codigoUser: ‘codigo_gerado’
        }
    },
    eventType: ‘data‘,
    identifier: identificador_gerado
};

RBTracking.sendEvent(evento);
   
```

Esse exemplo apresenta dois objetos dentro do `eventData` com a intenção de obter uma organização ainda maior e melhor nos retornos do [getData()](recuperando-informacoes.md), apresenta também um `identifier` no mesmo nível de `eventType` e `eventData`.

#### Exemplo 3


``` javascript tab="JavaScript"
evento = {
	eventData : {
	    cliqueBotaoId: id_botao 
    },
    eventType: ‘action‘
};

callback = function(resposta){
	return resposta.responseText;
};

RBTracking.sendEvent(evento, callback);
   
```

Aqui temos a presença de um `callback` que irá retornar a resposta do servidor em forma de texto, um `eventData` carregando uma ação do usuário no site e um `eventType` do tipo `action`.

!!! tip "Envios de eventos"

	Quando tiver mais de 1 evento de tipos diferentes para serem enviados, devem ser alocados em um array.

### Retorno

| Caso | Tipo de retorno | Descrição | 
| --- | --- | --- |
| `Sucesso` | `array[]` | Retorna um JSON contendo os dados do `eventData` enviados caso a operação seja efetuada com sucesso. | 
| `Falha` | `string` | Retorna um JSON contendo o erro encontrado no processo. | 

