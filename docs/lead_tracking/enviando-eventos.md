
# Enviando eventos

O método `sendEvent()` é utilizado para o envio de dados relevantes ao servidor por meio de eventos.

## Estrutura

#### Objeto do evento

!!! info "Parâmetros"

    * **Os tipos aceitos no `eventType` são fixos.**
    * **Deverá ser passado dentro de um `object` ou `array[]`.**

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `eventData` | `object` | Sim | Objeto que contenha os dados que é desejado armazenar. | 
| `eventType` | `integer` | Sim | Utilizado para especificar o tipo para o qual se destina o evento. | 
| `identifier` | `string` | Não | Reservado para uma atribuição personalizada de identificador. | 

#### Função
| Parâmetros | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `eventParameters` | `object` | Sim | Objeto que contém os dados do evento a ser enviado. | 
| `callback` | `function` | Não | Função que será executada após o retorno do evento.  | 

#### Tipos de eventos

| Número | Nome | Tipo | Descrição | 
| --- | --- | --- | --- |
| 1 | Coleta de dados | `data` | Usado para armazenar todos os dados vindo diretamente do usuário e dados destinados à ele (exemplo um código personalizado), tal como o preenchimento de um formulário.  (Esse tipo é o único retornado no método [getData()](recuperando-informacoes.md). | 
| 2 | Ações no site | `action` | Quando se deseja salvar ações que o usuário realizar no site. Exemplos: clique de botoẽs, rolagem de página, abertura de pop-ups e etc…  | 
| 3 | Outros | `other` | Utilizado para qualquer informação que se deseja armazenar que não se enquadra nas outras opções. | 


### Código Exemplo

#### Exemplo 1

``` javascript tab="JavaScript"
evento = {
    eventData : {
        codigoUser: ‘codigo_gerado’
    },
    eventType: ‘data‘
}

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
}

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
}

callback = function(resposta){
	return resposta.responseText;
}

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

