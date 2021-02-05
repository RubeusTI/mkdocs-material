# Usuários

## Cadastro de usuários

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Usuario/cadastro

!!! warning "Obrigatoriedade condicional"

    Os campos do tipo `integer`, devem ser passados `1` ou `0` para representação booleana.


| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `nome` | `string` | Sim | Nome que o usuário terá no sistema. | 
| `email` | `string` | Sim | Email que o usuário terá no sistema. | 
| `permissaoContato` | `integer` | Não | Utilizado para informar se o usuário terá ou não a permissão de visualizar todos os  contatos, independente do local de oferta dele. | 
| `exportarContato` | `integer` | Não | Utilizado para informar se o usuário terá ou não a permissão de exportar contatos. | 
| `verOportunidadesDeOutrosUsuarios` | `integer` | Não | Utilizado para informar se terá ou não a permissão de ver oportunidades de outros usuários no sistema. | 
| `verAgendamentosDeOutrosUsuarios` | `integer` | Não | Utilizado para informar se terá ou não a permissão de ver as atividades de outros usuários no sistema. | 
| `vincularAgendamentosAOutrosUsuarios` | `integer` | Não | Utilizado para informar se terá ou não a permissão de atribuir agendamentos para outros usuários. | 
| `vincularNovosProcessos` | `integer` | Não | Utilizado para informar se terá ou não a permissão em novos processos adicionados. | 
| `vincularNovosLocaisOferta` | `integer` | Não | Utilizado para informar se terá ou não a permissão em novos locais de ofertas adicionados. | 
| `permitirSerResponsavel` | `integer` | Não | Permite o usuário ser responsável em registros/atividades. | 
| `superAdmin` | `integer` | Não | Indica se o usuário vai ter permissões de super administrador no sistema. | 
| `ativado` | `integer` | Não | Indica se o usuário poderá ser utilizado para realizar login no sistema. | 
| `perfil` | `array` | Sim | Campo destinado aos [perfis](https://docs.rubeus.com.br/api_crm/metodosdelistagem/#listar-perfis-de-usuarios) que o usuário possuirá. | 
| `grupoUsuario` | `array` | Não | Utilizado para passar os grupos aos quais este usuário pertencerá. | 
| `permissao` | `array` | Sim | Vincula os [locais de oferta](https://docs.rubeus.com.br/api_crm/locaisdeoferta/#listar-local-de-oferta) e os [níveis de ensino](https://docs.rubeus.com.br/api_crm/metodosdelistagem/#listar-niveis-de-ensino) ao usuário. | 
| `processo` | `array` | Sim | Informa em quais processos esse usuário possuirá acesso. | 

``` JSON tab="Envio"
{
    "nome": "João Ferreira",
    "email": "joe@teste.com",
    "permissao": [
        {
            "localOferta": "1",
            "niveis": [
                "1",
                "2",
                "4",
                "3"
            ]
        }
    ],
    "permissaoContato": 1,
    "exportarContato": 1,
    "verOportunidadesDeOutrosUsuarios": 1,
    "verAgendamentosDeOutrosUsuarios": 1,
    "vincularAgendamentosAOutrosUsuarios": 1,
    "vincularNovosProcessos": 1,
    "vincularNovosLocaisOferta": 1,
    "permitirSerResponsavel": 1,
    "superAdmin": 1,
    "ativado": 1,
    "processo": [
        1,
        2
    ],
    "perfil": [
        1
    ],
    "grupoUsuario": [
        1,
        2,
        3
    ]
}
```

``` JSON tab="Resposta"
{
    "success": true,
    "id": 16
}
```

## Editar dados de usuários

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Usuario/editarDadosUsuario

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Sim | A identificação do usuário a ser modificado. | 
| `nome` | `string` | Sim | Nome que o usuário terá no sistema. | 
| `email` | `string` | Sim | Email que o usuário terá no sistema. | 
| `permissaoContato` | `integer` | Não | Utilizado para informar se o usuário terá ou não a permissão de visualizar todos os  contatos, independente do local de oferta dele. | 
| `exportarContato` | `integer` | Não | Utilizado para informar se o usuário terá ou não a permissão de exportar contatos. | 
| `verOportunidadesDeOutrosUsuarios` | `integer` | Não | Utilizado para informar se terá ou não a permissão de ver oportunidades de outros usuários no sistema. | 
| `verAgendamentosDeOutrosUsuarios` | `integer` | Não | Utilizado para informar se terá ou não a permissão de ver as atividades de outros usuários no sistema. | 
| `vincularAgendamentosAOutrosUsuarios` | `integer` | Não | Utilizado para informar se terá ou não a permissão de atribuir agendamentos para outros usuários. | 
| `vincularNovosProcessos` | `integer` | Não | Utilizado para informar se terá ou não a permissão em novos processos adicionados. | 
| `vincularNovosLocaisOferta` | `integer` | Não | Utilizado para informar se terá ou não a permissão em novos locais de ofertas adicionados. | 
| `permitirSerResponsavel` | `integer` | Não | Permite o usuário ser responsável em registros/atividades. | 
| `superAdmin` | `integer` | Não | Indica se o usuário vai ter permissões de super administrador no sistema. | 
| `ativado` | `integer` | Não | Indica se o usuário poderá ser utilizado para realizar login no sistema. | 
| `perfil` | `array` | Sim | Campo destinado aos [perfis](https://docs.rubeus.com.br/api_crm/metodosdelistagem/#listar-perfis-de-usuarios) que o usuário possuirá. | 
| `grupoUsuario` | `array` | Não | Utilizado para passar os grupos aos quais este usuário pertencerá. | 
| `permissao` | `array` | Sim | Vincula os [locais de oferta](https://docs.rubeus.com.br/api_crm/locaisdeoferta/#listar-local-de-oferta) e os [níveis de ensino](https://docs.rubeus.com.br/api_crm/metodosdelistagem/#listar-niveis-de-ensino) ao usuário. | 
| `processo` | `array` | Sim | Informa em quais processos esse usuário possuirá acesso. | 

``` JSON tab="Resposta"
{
    "success": true,
    "id": 16
}
```

## Excluir usuário

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Usuario/alterarStatus

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Sim | A identificação do usuário a ser excluído. | 

``` JSON tab="Resposta"
{
    "success": true,
    "id": 16
}
```

## Ativar/desativar usuário

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Usuario/alterarStatus

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Sim | A identificação do usuário a ser desativado. | 
| `status` | `integer` | Sim | Indica se o usuário será ativado ou desátivado. | 

``` JSON tab="Resposta"
{
    "success": true,
    "status": "0"
}
```

## Listar usuário

!!! done ""
    
    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Usuario/listarUsuarios

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `id` | `integer` | Não | A identificação do usuário a ser retornado. | 
| `retornarPermissoes` | `integer` | Não | Ao ser ativado, habilita o servidor para retornar também as permissões do usuário. | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
    "success": true,
    "dados": [
        {
            "id": "1",
            "nome": "Maria Silva",
            "email": "joaosilva@instituicao.com.br",
            "ativado": "1",
            "superAdmin": "1",
            "perfis": [
                {
                    "id": "1",
                    "nome": "Administrador",
                    "cor": "#808080"
                },
                {
                    "id": "2",
                    "nome": "Líder de equipe",
                    "cor": "#FFB946"
                },
                {
                    "id": "3",
                    "nome": "Consultor",
                    "cor": "#F7685B"
                }
            ],
            "gruposUsuario": [
                {
                    "id": "1",
                    "nome": "Consultores",
                    "cor": "#808080"
                }
            ],
            "permissao": [
                {
                    "localOferta": "1",
                    "niveis": [
                        "1",
                        "2",
                        "4",
                        "3"
                    ]
                }
            ],
            "processos": [
                "1"
            ]
        },
        {
            "id": "2",
            "nome": "Joaquim Fonseca",
            "email": "joaquimfonseca@instituicao.com.br",
            "ativado": "1",
            "superAdmin": "1",
            "perfis": [
                {
                    "id": "1",
                    "nome": "Administrador",
                    "cor": "#808080"
                }
            ],
            "gruposUsuario": false,
            "permissao": [
                {
                    "localOferta": "1",
                    "niveis": [
                        "1",
                        "2",
                        "3",
                        "4"
                    ]
                }
            ],
            "processos": [
                "1"
            ]
        }
    ]
}
```