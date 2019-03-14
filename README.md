# Rubeus Developers

Bem-vindo à documentação da Rubeus para os desenvolvedores. Nosso objetivo é auxiliar sua equipe de tecnologia de informação no processo de integração com o CRM Rubeus e os outros produtos para que vocês possam tiram o máximo das possibilidades que esses sistemas oferecem.

Atualmente dispomos de integração via:
    
* [API](api_crm/apresentacao.md) - Permite o envio de diversas informações para o CRM Rubeus como: cursos, processos seletivo, contatos e eventos.

* [Webhook](webhook.md) - Permite o envio de dados em tempo real do CRM rubeus para aplicações de terceiros.

* [Endpoint](endpoint.md) - Permite que sua equipe configure endpoints que retornando dados em formato JSON que serão consumidos pelo CRM Rubeus podendo ser utilizados para cadastrar contatos e eventos. 

Algumas funcionalidades requerem o uso de valores fixos, tal como o campo de "Estado civil", esses valores podem ser conferidos usando a página [Tabelas Auxiliares](tabelasauxiliares.md).

# Projetos utilizados

A base do site foi utilizado o [MkDocs][https://www.mkdocs.org] com o [Material for MkDocs][https://squidfunk.github.io/mkdocs-material/].

## License

**MIT License**

Copyright (c) 2016-2019 Martin Donath

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.
