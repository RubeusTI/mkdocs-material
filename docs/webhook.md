# Webhook - Integração customizável com sistema próprio
**Como funciona:** esta integração possibilita o envio de dados em tempo real do CRM Rubeus para uma aplicação de destino.

## O que esta integração faz?
Essa configuração permite enviar dados do CRM Rubeus para outras aplicações que disponham de uma URL de entrada de dados. Para isso, essa URL precisa conseguir ler e consumir dados enviados em formato JSON.

## Observações e requisitos
* Possuir a URL do outro sistema, que vai receber dados em formato JSON;
* A URL deve ser fixa, não é possível parametrizar URLs na parametrização dos *Webhooks*.

## Passo a passo para realizar a integração
* No CRM Rubeus, clique na engrenagem (configurações no canto superior direito) e selecione **Integrações**;
* Em *Webhooks*, clique em **Adicionar**. Na tela seguinte, você vai ver uma nova tela com alguns campos a serem preenchidos:
**Nome:** defina um nome para sua integração. O ideal é criar um nome que identifica para qual ferramenta essas informações estão sendo enviadas. Exemplo: Envio para aplicação X;
**URL:** cole a URL da ferramenta que vai receber os dados do CRM Rubeus com as informações enviadas;
**Gatilho:** escolha o gatilho que vai acionar o envio da notificação:
* Ao clicar no botão **Salvar**, você vai ser redirecionado para a tela de *Webhooks* configurados. Nela, você pode validar se a integração com o *webhook* funcionou. Para isso, clique no botão **Testar**;
!!! note "Nota"

Se a integração estiver funcionando corretamente, você vai receber uma resposta positiva. Caso contrário, você vai receber uma mensagem de erro com indicação do que você deve fazer em seguida para corrigir o problema.

## Observações importantes
A resposta negativa abaixo é a mais comum, indica que a URL destino não representa um servidor disponível (está incorreta). Em ambos os casos, o ideal é validar esses pontos com o seu desenvolvedor ou suporte da ferramenta que lhe forneceu a URL.

<img class="image"
	 id="webhook"
	 alt="Tela do CRM Rubeus - retorno do webhook" 
	 title="Tela do CRM Rubeus - retorno do webhook"
	 src="/assets/images/webhook.jpg" 
	 onclick="modalImg('webhook')">

Exemplo de dados enviados pelo CRM Rubeus

Os dados serão enviados via **POST** seguindo a estrutura abaixo, que é a de um JSON padrão:

### Exemplos

!!! done ""

    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> *URL_de_envio*

``` JSON tab="Contato"
[{
"id": "341",
"codigo": "COD156",
"nome": "Matheus de Almeida Amaral",
"nomeSocial": null,
"imagem": null,
"cpf": "12547854577",
"dataNascimento": "1997-10-22",
"endereco": "Rua Teste",
"numero": "535",
"bairro": "Jardim das Ruas",
"cidade": "São Paulo",
"uf": "SP",
"genero": "Masculino",
"canhoto": null,
"profissao": "Auxiliar Administrativo",
"aluno": "0",
"exaluno": "1",
"anoFormacao": "2015",
"estadoCivil": {
"id": "7",
"nome": "Solteiro"
},
"cor": {
"id": "2",
"nome": "Branca"
},
"grauInstrucao": {
"id": "9",
"nome": "Educação superior completo"
},
"outrasDeficiencias": null,
"deficiencias": [{
"id": "1",
"nome": "Deficiente Físico",
"tipos": [{
"id": "1",
"nome": "Paraplegia"
}]
}],
"origens": [{
"id": "1",
"nome": "CRM"
}],
"emails": {
"principal": "matheusamaral@rubeus.com.br",
"secundarios": null
},
"telefones": {
"principal": "2323342342",
"secundarios": ["2323342341"]
},
"tagsRDStation": null,
"camposPersonalizados": {
"perfil": "Administrador"
}
}]
```

``` JSON tab="Registro de Processo"
[{
    "id": "150",
    "processo": {
        "id": "1",
        "nome": "Captação"
    },
    "contatos": [{
        "id": "635",
        "codigo": "COD156",
        "principal": "1",
        "tipo": "Aluno"
    }, {
        "id": "636",
        "codigo": "COD157",
        "principal": "0",
        "tipo": "Responsável"
    }],
    "cursos": [{
        "id": "21",
        "codCurso": "ADM",
        "codOferta": "ADM_2",
        "principal": "1"
    }],
    "responsavel": {
        "id": "15",
        "nome": "Marcos Aurélio",
        "email": "marcosaurelio@vivalle.com.br"
    },
    "criacao": "2019-02-06 11:06",
    "origem": {
        "id": "2",
        "nome": "Portal de inscrição"
    },
    "modalidade": {
        "id": "1",
        "nome": "Presencial"
    },
    "dataAtividade": "2019-02-06 23:06",
    "compareceuAtividade": "0",
    "notaEnem": "760",
    "formaIngresso": "Processo seletivo presencial",
    "resumoAtual": {
        "id": "1",
        "nome": "Não contactado"
    },
    "localOferta": {
        "id": "1",
        "nome": "Local de oferta 1"
    },
    "unidade": {
        "id": "1",
        "nome": "Unidade 1"
    },
    "status": "Perdida",
    "ultimaAlteracaoStatus": "2019-02-06 15:06",
    "objecao": {
        "id": "1",
        "nome": "Ingressou em outra universidade"
    },
    "observacaoPerda": null,
    "concorrente": {
        "id": "1",
        "nome": "Uniexemplo"
    },
    "camposPersonalizados": {
        "perfil": "Administrador"
    }
}]
```

``` JSON tab="Atividade"
[{
    "id": "108",
    "contato": {
        "id": "635",
        "codigo": "COD156"
    },
    "vencimento": "2019-02-01 00:25",
    "duracao": "5",
    "descricao": "Ligação",
    "registroProcesso": "150",
    "curso": {
        "id": "21",
        "codOferta": "ADM_2",
        "codCurso": "ADM"
    },
    "responsavel": {
        "id": "15",
        "nome": "Marcos Souza",
        "email": "marcossouza@rubeus.com.br"
    },
    "resumoAtual": {
        "id": "1",
        "nome": "Não contactado"
    },
    "concluido": "0",
    "formaContato": "Ativo"
}]
```

``` JSON tab="Evento"
[{
    "id": "934",
    "tipo": {
        "id": "36",
        "codigo": null,
        "nome": "Entrou na etapa Convocado - Captação"
    },
    "descricao": "<p>Iniciou a inscrição<\/p>",
    "contato": {
        "id": "635",
        "codigo": "COD156"
    },
    "contatosSecundarios": [
        "634",
        "633"
    ],
    "curso": {
        "id": "21",
        "codCurso": "ADM",
        "codOferta": "ADM_2"
    },
    "dataAgendamento": {
        "data": "2019-02-01 06:27",
        "tipo": "PROVA"
    }
}]
```

### Testando
Para testar o serviço de envio de dados, uma boa opção é usar algum serviço gerador de URLs temporárias receptoras de dados, como exemplo: <a href="https://beeceptor.com/" target="_blank">Beeceptor</a>.

Estes serviços podem gerar URLs temporárias, que você pode usar em seu Webhook no lugar da URL final para disparar o teste e, então, observar o resultado no site do serviço gerador da URL.

## Informações adicionais
Todas as informações serão enviadas no padrão JSON o que inclui todos os campos personalizados que foram preenchidos.
Quando alguma informação na estrutura não estiver disponível, o retorno padrão será *NULL*.