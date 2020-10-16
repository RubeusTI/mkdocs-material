# Integração customizável com sistema próprio através de endpoint

**Como funciona:** esta integração possibilita parametrizar serviços dentro da plataforma CRM Rubeus para consumir informações de uma aplicação externa.

## O que esta integração faz?
Essa configuração permite consumir dados disponibilizados em um *endpoint* no formato JSON para realizar atualizações no CRM Rubeus. Para a execução deste serviço é indispensável que siga a estrutura de retorno dos modelos citados abaixo.

### Observações e requisitos
* Possuir a URL do outro sistema, que irá retornar os dados em formato JSON;
* A URL do serviço deve ser fixa, pois não é possível definir parâmetros dinâmicos na definição da mesma.

## Passo a passo para realizar a integração

* No CRM Rubeus, clique na engrenagem (configurações no canto superior direito) e selecione **Integrações**;
* Em **Serviços**, clique em **Adicionar**. Na tela seguinte, você vai ver uma nova tela com alguns campos a serem preenchidos:
**Nome:** defina um nome para sua integração. O ideal é criar um nome que identifique qual *endpoint* será responsável por enviar as informações. Exemplo: Envio dos egressos;
**URL base:** cole a URL que será utilizada como base de autenticação para o *endpoint* que que irá disponibilizar os dados;
**Autenticação:** escolha qual forma de autenticação será utilizada para a disponibilização dos dados, você pode escolher entre *basic*, *Bearer* ou nenhuma;
**Tipos de eventos:** será possível definir se os dados enviados serão com a estrutura de contato ou evento;
**URL por tipo de evento:** defina qual o endereço completo para ter acesso aos dados que irão popular a informação referênte ao tipo de evento configurado;
**Validar <i>endpoint</i> por tipo de evento:** você pode validar se a integração com o serviço funcionou. Para isso, clique no botão no menu de configurações e selecione a opção **Validar**.

!!! note "Nota"
    * Os tipos de evento são relacionados ao contato já existente no CRM Rubeus, por exemplo: foi matriculado, efetuou o pagamento da mensalidade ou está insatisfeito com a instituição.
    * Ao clicar no botão **Salvar**, você vai ser redirecionado para a tela de Serviços configurados.


Se a integração estiver funcionando corretamente, você vai receber uma resposta positiva. Caso contrário, você vai receber uma mensagem de erro com indicação do que você deve realizar em seguida.

## Estruturas de dados

Os dados devem ser disponibilizados seguindo a estrutura abaixo, que é a de um JSON padrão:


#### Contato

Utilize essa estrutura quando quiser sincronizar os contatos de uma aplicação com o CRM Rubeus.

| **Atributo** | **Tipo** | **Obrigatoriedade** | **Descrição** |
| --- | --- | --- | --- |
| `codigo` | `string` | Sim. | Usado para atribuir o “Código” do contato. |
| `nome` | `string` | Sim. | Usado para atribuir o “Nome” ao contato. |
| `nomeSocial` | `string` | Não. | Usado para atribuir o “Nome Social” ao contato. |
| `dataNascimento` | `date` | Não. | Usado para atribuir a “Data de Nascimento” ao contato. <br>**Padrão: YYYY-MM-DD** |
| `telefonePrincipal` | `string` | Condicional. | Usado para atribuir um “Telefone Principal” ao contato. <br>**Caso não haja um e-mail torna-se obrigatório.** <br>**Padrão: xx(xx) xxxxxxxxx**|
| `emailPrincipal` | `string` | Condicional. | Usado para atribuir um “Email” ao contato. <br>**Caso não haja um telefone torna-se obrigatório.** |
| `emails` | `array[]` | Não |  Utilizado para enviar mais de um “Email” para o contato, sendo passado por meio de um `array[]` de `strings`.  |
| `telefones` | `array[]` | Não. | Utilizado para enviar mais de um “Telefone” para o contato, sendo passado por meio de um `array[]` de `strings` seguindo o mesmo padrão de escrita do `telefonePrincipal`.  |
| `cpf` | `string` | Não. | Usado para atribuir o “CPF” ao contato. <br>**Padrão: xxxxxxxxxxxx** |
| `endereco` | `string` | Não. | Usado para atribuir o “Endereço” ao contato. |
| `cep` | `string` | Não. | Usado para atribuir o “CEP” ao contato. <br>**Padrão: xxxxx-xxx**|
| `numero` | `integer` | Não. | Usado para atribuir o “Número da residência” ao contato. |
| `bairro` | `string` | Não. | Usado para atribuir o “Bairro” ao contato. |
| `cidade` | `string` | Não. | Usado para atribuir a “Cidade” ao contato. |
| `uf` | `string` | Não. | Usado para atribuir o “Estado” ao contato. |
| `genero` | `string` | Não. | Usado para atribuir o “gênero” ao contato. |
| `canhoto` | `boolean` | Não. | Usado para atribuir se o contato é  canhoto. |
| `profissao` | `string` | Não. | Usado para atribuir a “Profissão” ao contato. |
| `aluno` | `boolean` | Não. | Usado para atribuir se o contato é aluno. |
| `exaluno` | `boolean` | Não. | Usado para atribuir se o contato é ex-aluno. |
| `anoFormacao` | `integer` | Não. | Usado para atribuir ao contato o último ano sendo aluno. <br>**Padrão: xxxx** |
| `deficiencias` | `array[]` | Não. | Usado para informar se o contato possui alguma deficiência. |
|   ˪ `id` | `integer` | Condicional. | - |
|   ˪ `tipos` | `array[]` | Condicional. | - |
| `outrasDeficiencias` | `string` | Não. | Usado para descrever qual a deficiência. |
| `estadoCivil` | `integer` | Não. | Usado para informar o estado civil. |
| `cor` | `integer` | Não. | Usado para informar a cor da pele do contato. |
| `grauInstrucao` | `integer` | Não. | Usado para informar o nível de escolaridade do contato. |
| `camposPersonalizados` | `object` | Não. | Usado para atribuir algum campo específico que não está presente no escopo da API. |
| `origem` | `integer` | Não. | Usado para especificar de onde o contato se originou. <br>**Caso não especificado, a origem padrão será o CRM.** |

``` JSON tab="JSON"
[{
	"codigo": "34985761",
	"nome": "Luís Arthur Roberto Souza",
	"nomeSocial": "",
	"dataNascimento": "1998-05-19",
	"telefonePrincipal": "55(31)26582323",
	"emailPrincipal": "luisarthurrobertosouza@evolink.com.br",
	"telefones": [],
	"emails": [],
	"cpf": "95839575690",
	"endereco": "Rua Carbonita",
	"cep": "33840-610",
	"numero": "342",
	"bairro": "Sevilha (2ª Seção)",
	"cidade": "Ribeirão das Neves",
	"uf": "MG",
	"genero": "M",
	"canhoto": "0",
	"profissao": "",
	"aluno": "1",
	"exaluno": "0",
	"anoFormacao": "2022",
	"deficiencias": [{
		"id": "1",
		"tipos": ["1", "3"]
	}],
	"outrasDeficiencias": "",
	"estadoCivil": "1",
	"cor": "2",
	"grauInstrucao": "2",
	"camposPersonalizados": {
		"campanhaOrigem": "Facebook"
	},
	"origem": "2"
}]
```


#### Evento

Utilize essa estrutura quando quiser enviar informações relacionadas a um contato já existente no CRM Rubeus.

| **Atributo** | **Tipo** | **Obrigatoriedade** | **Descrição** |
| --- | --- | --- | --- |
| `descricao` | `string` | Não | Campo que contem um trecho HTML. |
| `data` | `dateTime` | Não | Data é um campo do tipo data que espera uma data de referência do evento como por exemplo: data da prova, data da entrevista e data de vencimento do boleto.  <br>**Padrão: YYYY-MM-DD hh:mm:ss** |
| `codRegistro` | `string` | Não | Informa para o sistema que crie um novo registro com esse código. |
| `tipoData` | `string` | Não | Campo para se informar a qual conjunto de evento pertence. |
| `compareceuAtividade` | `boolean` | Não |  Campo para informar o comparecimento do candidato à atividade. |
| `notaEnem` | `inteiro` | Não | Campo para informar a nota do ENEM do candidato. |
| `formaIngresso` | `string` | Não | Campo para informar o tipo de ingresso na instituição. |
| `dataVencimento` | `dateTime` | Não | DataVencimento é um campo utilizado para definir a data de vencimento de uma atividade caso seja gerada através desse evento. |
| `codContato` | `string` | Sim | Usado para informar o código do contrato do candidato. |
| `codOferta` | `string` | Não | Usado para informar o código de oferta. |
| `codCurso` | `string` | Não | Usado para informar o código do curso. |
| `codLocalOferta` | `string` | Não | Usado para informar o Local Oferta |
| `camposPersonalizados` | `array[]` | Não | Utilizado para informar campos adicionais que não estejam no escopo da API. |
|   ˪ `selecionouAgendamento` | `integer` | Não | - |

``` JSON tab="JSON"
[{
	"descricao": "<b>Completou a primeira etapa</b>",
	"data": "",
	"tipoData": "",
	"compareceuAtividade": "",
	"notaEnem": "",
	"formaIngresso": "",
	"dataVencimento": "",
	"codContato": "34985761",
	"codOferta": "ADM_3",
	"codCurso": "ADM",
	"codLocalOferta": "SEDE",
	"camposPersonalizados": {
		"selecionouAgendamento": "0"
	}
}]
```

## Observações importantes

**Limite de serviços:** a quantidade de serviços que poderão ser criados é limitada e definida por contrato para cada cliente.

**Quantidade de registros:** a quantidade de registros que será permitido enviar por chamada do serviço será 1000 ou um tempo de resposta máximo de 3 minutos, caso essas regras não sejam respeitadas a requisição será cancelada e o status desta configuração de serviço será marcado como “falha”. Não temos garantia de disponibilidade de serviços que ultrapasse o limite estabelecido.

**Estrutura de envio:** a estrutura de envio definida neste documento deve ser seguida de forma rigorosa, estrutura fora do padrão pode ocasionar erros na execução do serviço. Os dados que serão atualizados são de total responsabilidade do cliente.




