
# Instalação

Para a implementação é necessário obter o link da biblioteca junto com o código do cliente para a identificação da instituição no CRM Rubeus, depois basta incluir o script na página desejada, após concluído, as funções básicas da API já estão implementadas.

<img class="image" 
     id="dashboard" 
     alt="Tela do CRM Rubeus para adquirir o script de acesso ao monitoramento de páginas" 
     title="Tela do CRM Rubeus para adquirir o script de acesso ao monitoramento de páginas" 
     src="/assets/images/monitoramento/instalacao/dashboard.png" 
     onclick="modalImg('dashboard')">

## Código para instalação

!!! info

    **Deve ser colocado na parte mais alta possível dentro da tag** `#!html <head>...</head>` **para o funcionamento da biblioteca não sofrer perda de dados durante a navegação do usuário.**

``` html tab="HTML/JavaScript"
<script 
    type="text/javascript" 
    src="https://tracking.apprubeus.com.br/libs/RBTracking.min.js?rbclicod=aSLhOBjZV5wD7YEpppb3">
</script>
```

## Usar com o Google Tag Mananger

Para utilizar a biblioteca com o Google Tag Mananger é só copiar o link adquirido no CRM em uma tag de HTML personalizado com o acionador sendo o “DOM pronto”, com isso, a biblioteca já estará devidamente configurada.

<img class="gif_crm image" 
     id="gtm"
     alt="Como adicionar o monitoramento de páginas com o Google Tag Mananger" 
     title="Como adicionar o monitoramento de páginas com o Google Tag Mananger"
     src="/assets/images/monitoramento/instalacao/gtm.gif" 
     onclick="modalImg('gtm')">
