
# Exemplos de códigos

Nesta parte da documentação apresentamos alguns exemplos de códigos prontos que auxiliam na integração.

## Enviar contato com envio de evento

Este exemplo é utilizado para enviar os dados coletados no formulário e com um envio de evento.

``` javascript tab="JavaScript"
function enviarContatoRubeus() {
    data = {
        nome: document.getElementById("nome").value,
        dataNascimento: document.getElementById("dataNascimento").value,
        telefonePrincipal: document.getElementById("telefonePrincipal").value,
        emailPrincipal: document.getElementById("emailPrincipal").value,
        estadoCidade: {
            cidade: document.getElementById("cidade").value,
            estado: document.getElementById("estado").value
        },
        /**
         * Os campos origem e token podem ser passados
         * para o monitoramento de páginas se passar
         * como a laddingpage.
         */
        origem: 3,
        token: "a1264cc5b581cc6bfbad3faee2c54a99"
    };

    RBTracking.sendData(data, callbackPessoa);
}

function callbackPessoa(resposta) {
    var codPessoa = resposta.data.id;

    var evento = {
        codCurso: document.getElementById("codCurso").value,
        codOferta: document.getElementById("codOferta").value,
        codLocalOferta: document.getElementById("codLocalOferta").value,
        pessoa: {
            id: codPessoa
        },
        origem: 3,
        token: "a1264cc5b581cc6bfbad3faee2c54a99",
        tipo: "29"
    };

    RBTracking.sendEvent(evento, callbackEvento);
}

function callbackEvento() {
    /**
     * adicionar o que for desejado no callback para
     * executar a proxima ação.
     */
    console.info("Evento cadastrado com sucesso!");
}

function callbackError() {
    console.error("alguma coisa deu errado!");
}

```

