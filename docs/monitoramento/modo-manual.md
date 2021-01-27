# Modo manual
Para a ativação do modo manual é necessário alterar o link da biblioteca antes de incluir o script na página desejada, adicionando o parâmetro `mm` com valor 1 na URL do link da biblioteca, após concluído, a função modo manual da API já estará implementada.

## Código Exemplo
```html tab="HTML/JavaScript"
<script
    type="text/javascript"
    src="https://tracking.apprubeus.com.br/libs/RBTracking.min.js?rbclicod=aSLhOBjZV5wD7YEpppb3&mm=1"
></script>
```

## Utilização

### Iniciar o tracking
O método `RBTracking.start()` deve ser inserido logo após a execução das tarefas desejadas, e logo assim que chamado, ele inicializará.

#### Código Exemplo
```javascript tab="JavaScript"
// code...
RBTracking.start();
// ...code
```

### Enviar o evento de navegação
O método `RBTracking.navigate()` deve ser chamado para enviar um evento de navegação, tendo como parâmetro uma função de callback que irá retornar no momento que os dados de navegação forem enviados para o servidor.

| Parâmetros | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `callback` | `function` | Não | Função que será executada após o envio dos dados de navegação para o servidor. | 

#### Código Exemplo
```javascript tab="JavaScript"
// code...
RBTracking.navigate(callback);
// ...code
```