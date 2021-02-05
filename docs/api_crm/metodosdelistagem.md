# Métodos de listagem

Assim como descrito na seção de [autenticação](/api_crm/apresentacao/#autenticacao), os métodos de listagem também utilizam os atributos `origem` e `token` para a autenticação do usuário no sistema.

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

## 

## Listar níveis de ensino

!!! done ""

<strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Registro/listarNiveisEnsino

Método utilizado para listar os níveis de ensino para posteriormente utilizar como parâmetro em outro método.

``` JSON tab="Resposta"
{
"success": true,
"dados": [{
"id": "1",
"codigo": "1",
"titulo": "Graduação"
}]
}
```

---

## Listar tipos do contato

!!! done ""

<strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Registro/listarTiposPessoa

Método utilizado para listar os tipos de contatos para posteriormente utilizar como parâmetro em outro método.

``` JSON tab="Resposta"
{
"success": true,
"dados": [{
"id": "1",
"titulo": "Aluno"
}]
}
```

---

## Listar deficiências

!!! done ""

<strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Contato/listarDeficiencias

Método utilizado para listar os tipos de deficiências para posteriormente utilizar como parâmetro em outro método.

``` JSON tab="Resposta"
{
    "success": true,
    "dados": [{
        "id": "1",
        "nome": "Deficiente F\u00edsico",
        "tipos": [{
                "id": "1",
                "nome": "Paraplegia"
            }, {
                "id": "2",
                "nome": "Tetraplegia"
            }, {
                "id": "3",
                "nome": "Hemiplegia"
            }, {
                "id": "4",
                "nome": "Paralisia Cerebral"
            }, {
                "id": "5",
                "nome": "Amputa\u00e7\u00e3o"
            }, {
                "id": "6",
                "nome": "Defici\u00eancia F\u00edsica"
            }, {
                "id": "7",
                "nome": "Defici\u00eancia M\u00faltipla"
        }]
    }]
}
```

---

## Listar perfis de usuários

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/PerfilUsuario/listar

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `retornarUsuarios` | `integer` | Não | Retorna os usuários que contêm o perfil perfil. | 

``` JSON tab="Resposta"
{
    "success": true,
    "dados": [
        {
            "id": "1",
            "nome": "Administrador",
            "cor": "#808080",
            "permissoes": "198",
            "ultimaAlteracao": {
                "momento": null,
                "usuario": null,
                "usuarioNome": null
            }
        },
        {
            "id": "2",
            "nome": "Líder de equipe",
            "cor": "#FFB946",
            "permissoes": "110",
            "ultimaAlteracao": {
                "momento": null,
                "usuario": null,
                "usuarioNome": null
            }
        },
        {
            "id": "3",
            "nome": "Consultor",
            "cor": "#F7685B",
            "permissoes": "44",
            "ultimaAlteracao": {
                "momento": null,
                "usuario": null,
                "usuarioNome": null
            }
        }
    ]
}
```

---

## Listar logs da API

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Log/listarLogs

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `metodo` | `string` | Não | Retornar os logs somente do método enviado, caso não seja enviado nenhum, todos serão considerados.<hr>**Exemplo:** "Contato/cadastro" | 
| `de` | `date` | Condicional | Data inicial de retorno, deve ser enviado caso seja enviado o campo "ate" | 
| `ate` | `date` | Condicional | Data final de retorno, deve ser enviado caso seja enviado o campo "de" | 
| `origemFiltro` | `integer` | Não | Retornar os logs somente da origem enviada, caso não seja enviado nenhuma, todas serão consideradas | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
    "success": true,
    "dados": [{
        "dados": "JSON com os dados enviados",
        "resposta": "{\"success\":true,\"dados\":1}",
        "metodo": "Pessoa/cadastro",
        "sucesso": "1",
        "origem": "3",
        "origemNome": "Ficha de inscrição",
        "momento": "2018-12-04 15:14:14"
    }]
}
```

## Listar cidades

!!! done ""

<strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Contato/listarCidade

Método utilizado para listar as cidades para posteriormente utilizar como parâmetro em outro método.

``` JSON tab="Resposta"
{
    "resultado": {
        "success": true,
        "dados": [{
            "id": "79",
            "titulo": "Acrelândia - AC"
        }]
    }
}
```