
# Boas práticas com a utilização de UTM

## Descrição

Esta parte da documentação tem como o objetivo de auxiliar a configuração dos parâmetros UTM corretamente no Monitoramento de páginas do Rubeus.

Primeiramente vamos entender o que são esses parâmetros.

Eles basicamente servem para mapear à que esse link é destinado com a finalidade de auxiliar, seja para um banner no seu site ou uma campanha específica.

O UTM são divididos em cinco parâmetros que são.

| Parâmetro | Descrição | Exemplo |
| --- | --- | --- |
| utm_source | Utilizado para informar por onde o link foi veiculado (este por sua vez é obrigatório). | utm_source=uniexemplo |
| utm_medium | Destinado à informar qual o tipo da campanha, se é uma campanha paga (cpc) ou uma campanha de e-mail (email). | utm_medium=cpc |
| utm_campaign | Informa o nome ou o código da campanha veiculada. | utm_campaign=vestibular_2019 |
| utm_term | Guarda as palavras chaves da campanha  | utm_term=vestibular+uniexemplo+2019 |
| utm_content | Serve para especificar qual conteúdo foi clicado para o acesso do link. | utm_content=bannerlateral |

## Utilização

### Parâmetros source e medium

No serviço de monitoramento de páginas presente no CRM Rubeus, dá a possibilidade de rastrear esses parâmetros seguindo algumas recomendações de boas práticas para o funcionamento conciso da funcionalidade.

Dentre as possibilidades dos tipos de origem já disponíveis na ferramenta  temos:

| Nome | Descrição | Regra |
| --- | --- | --- |
| Display | Anúncios seja ele em banner ou um vídeo. | Pode conter os identificadores de cliques do google (gclid) ou facebook (fbclid) e/ou os utm_medium cpm, video, display, banner. |
| Outras publicidades | São publicidades que ainda não possuem sua origem mapeada na base do Monitoramento de páginas do Rubeus | É necessário ter o utm_medium com um dos tipos cpc, ppc, e não ter origem mapeada. |
| Mídia Paga | Publicidade com origem mapeada. | É necessário ter o utm_medium com um dos tipos cpc ou ppc, e ter a origem já mapeada. |
| Email | Campanhas de email, seja ela disparada pelo Rubeus (no qual já é automático o rastreio) ou manualmente desde que atenda à regra. | O link utilizado para a página final no qual o usuário acessa, deverá conter o utm_medium carregando o valor “email”. |
| Busca Orgânica | São os acessos à página que foram originados de algum site de busca. | O link não deve conter nenhum parâmetro utm e ter sua origem vindo de algum site de busca já mapeado (google, bing, yahoo, ask e aol).  |
| Social | Acessos vindo a partir de alguma rede social. | O link deverá ter o utm_source com o valor igual a facebook, twitter instagram, youtube ou linkedin e utm_medium igual a cpp |
| Referência | Acessos que não são pagos mas vieram de um redireciona por algum site não mapeado. | O utm_medium não pode ser igual a nenhum dos tipos pagos e sua origem é desconhecida |
| Acesso Direto | Acessos onde o usuário digitou o link do site diretamente no navegador. | Não possui qualquer parâmetro no link. |
| Outros | Acessos não categorizado acima. | Caso não se enquadre em nenhuma das regras acima, o tipo de origem será “Outros” |
| Desconhecida | Contatos cadastrados manualmente no Rubeus. |  |

### Parâmetros campaign, terms e content

#### utm_campaign

O valor especificado no parâmetro destinado à campanhas deve ser utilizado como uma espécie de etiqueta para a mesma, contendo um nome descritivo mas não muito longo.

#### utm_terms

Esse campo pode ser passado mais de um valor, sendo separados por “+” já que são as palavras chaves da campanha, exemplo: utm_terms=vestibular+2019+uniexemplo.

#### utm_content

Já esse campo serve para deixar explícito qual método foi utilizado para o clique do usuário, seja ele um link, banner um popup e demais.

Cada parâmetro são salvos de maneira única no Rubeus possibilitando filtros específicos  por cada campo.

## Criação dos links

Para a criação desses links recomendamos o uso do [Campaign URL Builder](https://ga-dev-tools.appspot.com/campaign-url-builder/) do Google Analytics, mas poderá ser o utilizado o de sua preferência ou até mesmo feitos de modo manual.

No final será obtido um link parecendo o seguinte

```
https://www.uniexemplo.com.br/?utm_source=twitter&utm_medium=cpc&utm_campaign=campanha_exemplo&utm_term=vestibular+2019+uniexemplo&utm_content=logolink
```

Os links gerados, de preferência devem ser curtos, sucintos e evitar redundância entre os parâmetros é de bom uso.
