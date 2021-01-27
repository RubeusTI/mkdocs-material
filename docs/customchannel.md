
# Modelos de formulários

## Configurando wildcard para exibição de páginas específicas
Para se configurar um caractere coringa (*wildcard*) na configuração de “Exibir em páginas específicas” basta utilizar o “\*” na frente da URI.
Por exemplo, pegamos a seguinte URL, “https://<span>doc</span>s.rubeus.com.br/monitoramento/instalacao/” o popup só aparecerá nesta página, agora se adicionarmos o “\*” deste modo “https://<span>doc</span>s.rubeus.com.br/monitoramento/\*”, irá funcionar em todas as páginas com “https://<span>doc</span>s.rubeus.com.br/monitoramento/” presente na URL.

## Configurando um popup gatilho personalizado
Para configurar um gatilho personalizado deve-se primeiro verificar se o popup está configurado adequadamente para ser exibido na página atual.
Depois será necessário pegar o id do popup criado, que por sua vez é disponível após a ultima barra na URL do editor “https://<span>crmuni</span>exemplo.apprubeus.com.br/editar-modelo-de-formulario/**16**”, já sabendo o id do popup, podemos adicionar o gatilho no local desejado adicionando a função `CustomChannel.showPopup(16)`.
