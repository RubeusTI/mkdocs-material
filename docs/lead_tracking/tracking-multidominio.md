
# Tracking multidomínio

Utilizando a função `getHash()` é possível obter o `hash` armazenado no dispositivo, e posteriormente, usar para identificar o usuário em outro domínio, passando o hash obtido pela a url que irá para a próxima página e nela é necessário também ter instalado o script de tracking para se obter os dados passados e assim obter relatórios mais sólidos.

## Estrutura

### Parâmetros

| Parâmetros | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `link` | `string` | Não | Passa o `hash` por GET utilizando o `link` e redirecionando logo em seguida. | 

### Retorno

| Caso | Tipo de retorno | Descrição | 
| --- | --- | --- |
| `Sucesso` | `string` | Retorna uma string contendo o hash do usuário caso a operação seja efetuada com sucesso. | 
| `Falha` | `string` | Retorna uma string vazia. | 

## Aplicação no uso
Tendo como exemplo a situação de ter uma página para a captação de alunos, chamado de *https://captacao.exemplounivesidade.com.br*, e outra para a inscrição *https://inscricao.uniexemplo.edu.br* em domínios diferentes.

Ná página de captação, o aluno escolhe um curso e preenche alguns dados e clica em um botão que irá direcioná-lo à página de inscrição, esses dados precisam ser enviados pelo método [sendEvent()](http://enviando-eventos.md) primeiro, no envio dos dados terá que ser passado um segundo parâmetro, que nesse caso é um `callback` contendo o link para qual o usuário será redirecionado, nesse link carrega o hash atual da máquina para haver a comunicação da API com outro domínio.

### Código Exemplo

#### Exemplo 1

``` javascript tab="Pegar apenas o hash"
RBTracking.getHash();
```

---

#### Exemplo 2

``` html tab="HTML"
<form>
<select id="curso" onchange="javascript:myFunction()">
        <option>SELECIONAR</option>
        <option value="1-123-001">ADMINISTRAÇÃO</option>
        <option value="2-321-032">AGRONOMIA</option>
        <option value="1-123-003">DIREITO</option>
</select>
</form>
```

``` javascript tab="Função JavaScript"
function myFunction() {
    var curso = document.getElementById('curso');
    var p = {
        eventData: {
            curso: {
                id: curso.value,
                nome: curso.options[curso.selectedIndex].text
            }
        },
        eventType: 1
    };
    RBTracking.sendEvent(p, function () {
            window.open(
                RBTracking.getHash('https://inscricao.uniexemplo.edu.br')
            );
            return 'success!';
        }
    );
}
```

## Próximo passo

Já na página seguinte tendo o serviço de tracking já instalado e com a comunicação ter sido efetuada com sucesso, o algoritmo será iniciado com o hash que foi passado pela URL e assim identificando que é o mesmo usuário. Para fazer o reprocessamento dos dados que foram previamente passados, é necessário adicionar um [getData()](recuperando-informacoes.md) para recuperar as informações e adicioná-las ao fluxo de sua aplicação.