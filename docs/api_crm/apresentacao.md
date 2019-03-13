
# Integrar canais de captação com o CRM Rubeus (API)

## Apresentação

Esta API permite o envio de novos contatos e eventos para o CRM Rubeus. É possível gerenciar direto pela aplicação todas as ações que serão desencadeadas a partir da chegada de cada evento, permitindo assim criar novos registros de processo, enviar emails, criar atividades e etc. 

## Autenticação

A autenticação de cada método é realizada com a passagem dos parâmetros `origem` e `token`. Para obter essas informações de autenticação vá no botão com forma de engrenagem(configurações) do CRM Rubeus e acesse o menu integrações, na parte Canais/API estará listado todos os canais juntamente com o token e a origem.

<img class="image" 
     id="canais-api" 
     alt="Tela do CRM Rubeus para acessar o canal e token da API" 
     title="Tela do CRM Rubeus para acessar o canal e token da API" 
     src="/assets/images/api_crm/canais-api.png" 
     onclick="modalImg('canais-api')">

## Envio

A URl das APIs será o mesmo domínio do CRM da instituição.
Exemplo: *https://crm.uniexemplo.com.br/api/Contato/cadastro*