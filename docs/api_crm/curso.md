
# Curso e ofertas
O sistema entende que um curso pode ser ofertado em diversos momentos e com variações. Para isso é preciso primeiro cadastrar o curso para depois cadastrar suas ofertas.

## Cadastro de curso

!!! done ""

    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Curso/cadastroCurso

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `codigo` | `string` | Não | Código de identificação externa. |
| `nome` | `string` | Sim | Nome do curso. Limite de caracteres: 255. |
| `descricao` | `string` | Não | Descrição do curso. Limite de caracteres: 500. |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). |
| `token` | `string` | Sim | Chave de acesso única referente ao canal. |

``` JSON tab="Resposta"
{
    "success":true,
    "id":"1"
}
```

## Cadastro de oferta de curso

Após realizar o cadastro do curso, você pode cadastrar suas ofertas. É a oferta de curso que fica vinculada a um registro de processo.

!!! done ""

    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/Curso/cadastroOferta

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `codOferta` | `string` | Não | Código de identificação externa. |
| `nome` | `string` | Sim | Nome do curso. Limite de caracteres: 255. |
| `complemento` | `string` | Não | Limite de caracteres: 255.<br>Este campo é para diferenciar de forma rápida as ofertas do mesmo curso. Por exemplo: “Como falar em público –** Intensivo**” ou “Como falar em público – **Final de Semana**”.<br>**Seja qual for o complemento que queira usar, lembre que a equipe comercial vai ver ele quando tiver duas ofertas com o mesmo nome do curso.** |
| `valor` | float | Não | Valor referente ao que a registro de processo gerado a partir deste curso representa (valor do contrato). |
| `vagasMinimas` | `integer` | Não | Mínimo de vagas que deverão ser preenchidas do curso.<br>**Esses dados podem ser utilizados nos fluxos de automação para configurar comportamentos automatizados a partir do preenchimento das vagas.** |
| `vagasMaximas` | `integer` | Não | Máximo de vagas que poderão ser preenchidas do curso.<br>**Esses dados podem ser utilizados nos fluxos de automação para configurar comportamentos automatizados a partir do preenchimento das vagas.** |
| `inicioInscricao` | `date` | Não | Data de início das inscrições.<br>**Padrão: YYYY-MM-DD** |
| `terminoInscricao` | `date` | Não | Data de término das inscrições.<br>**Padrão: YYYY-MM-DD** |
| `inicioMatricula` | `date` | Não | Data de início das matrículas.<br>**Padrão: YYYY-MM-DD** |
| `terminoMatricula` | `date` | Não | Data de término das matrículas.<br>**Padrão: YYYY-MM-DD** |
| `inicioCurso` | `date` | Não | Data de início do curso.<br>**Padrão: YYYY-MM-DD** |
| `terminoCurso` | `date` | Não | Data de término do curso.<br>**Padrão: YYYY-MM-DD** |
| `modalidade` | `integer` | Sim | Código único de identificação da modalidade, que pode ser obtido através do método abaixo no CRM Rubeus.<br><br>[Consulta modalidades](#listar-modalidades) |
| `codCurso` | `string` | Sim | O curso pai pode ser adicionado no momento do cadastro da oferta caso ele já não tenha sido cadastrado pelo método [cadastro curso](/api_crm/curso/#cadastro-de-curso).<br><br>Para cadastrar ele basta informar também os campos `nomeCurso` e `descricaoCurso`.<br><br>Caso já tenha cadastrado o curso pai, basta informar o `codCurso` com o código definido no cadastro.<br><br>**É obrigatório estar vinculado a um curso pai.** |
| `nomeCurso` | `string` | Não | Nome do curso pai.<br>**Deve ser informado caso queira adicionar o curso pai junto com o cadastro da oferta. Caso já tenha cadastrado o curso pai basta informar o codCurso.** |
| `descricaoCurso` | `string` | Não | Descrição do curso pai.<br>**Deve ser informado caso queira adicionar o curso pai junto com o cadastro da oferta. Caso já tenha cadastrado o curso pai basta informar o codCurso.** |
| `codUnidade` | `string` | Sim | Código único para identificação da unidade que está ofertando o curso atual.<br><br>[Listar Unidades](/api_crm/unidade/#listar-unidades)<br>*Enviar o campo* `codigo` |
| `codLocalOferta` | `array[]` | Sim | Array com os códigos externos de identificação do local de oferta cadastrado.<hr>*Veja abaixo um exemplo do formato para envio.*<br>`#!json [1]` |
| `codNivelEnsino` | `integer` | Condicional | Código único de identificação do nível de ensino.<br><br>[Listar niveis de ensino](/api_crm/metodosdelistagem/#listar-niveis-de-ensino)<br>**Enviar o campo** `codigo` <hr> **Caso não seja enviado deverá ser o utilizado o campo** `nivelEnsino`**.** |
| `nivelEnsino` | `integer` | Condicional | Identificação do nível de ensino.<br><br>[Listar niveis de ensino](/api_crm/metodosdelistagem/#listar-niveis-de-ensino)<br>**Enviar o campo** `id` <hr> **Caso não seja enviado deverá ser o utilizado o campo** `codNivelEnsino`**.** |
| `codProcessoSeletivo` | `string` | Não | Código único de identificação do processo seletivo.<br>**Para visualizar os códigos dos processos seletivos utilize a aplicação.** |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). |
| `token` | `string` | Sim | Chave de acesso única referente ao canal. |

``` JSON tab="Resposta"
{
    "success":true,
    "id":"1"
}
```

## Listar cursos

!!! done ""

    <strong class='REST GET'>GET</strong><strong class="MIME">application/json</strong> /api/Curso/listarCursos

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `codCurso` | `string` | Não | Caso o código do curso seja informado será retornado apenas o curso desejado. |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). |
| `token` | `string` | Sim | Chave de acesso única referente ao canal. |

``` JSON tab="Resposta"
{
	"success": true,
	"dados": [{
		"id": "1",
		"nome": "Nome do curso",
		"descricao": null,
		"codigo": "000",
		"origem": "1",
		"origemNome": "CRM"
	}]
}
```

## Listar ofertas

!!! done ""

    <strong class='REST GET'>GET</strong><strong class="MIME">application/json</strong> /api/Curso/listarOfertas

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `codOferta` | `string` | Não | Caso o codOferta seja informado juntamento com o codCurso será retornado apenas a oferta desejada. |
| `codCurso` | `string` | Não | Caso o codCurso seja informado juntamento com a codOferta será retornado apenas a oferta desejada. |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). |
| `token` | `string` | Sim | Chave de acesso única referente ao canal. |

``` JSON tab="Resposta"
{
	"success": true,
	"dados": [{
		"id": "1",
		"nome": "Nome da oferta de curso",
		"complemento": null,
		"codigo": "000",
		"codCurso": "000",
		"inicioInscricao": null,
		"terminoInscricao": null,
		"inicioMatricula": null,
		"terminoMatricula": null,
		"inicioCurso": null,
		"terminoCurso": null,
		"unidade": "1",
		"unidadeNome": "Unidade",
		"nivelEnsino": "1",
		"nivelEnsinoNome": "Graduação",
		"modalidade": "1",
		"modalidadeNome": "Presencial",
		"origem": "1",
		"origemNome": "CRM",
		"processoSeletivo": "1",
		"processoSeletivoNome": "Nome do processo seletivo"
	}]
}
```

## Dados da oferta de curso

!!! done ""

    <strong class='REST GET'>GET</strong><strong class="MIME">application/json</strong> /api/Curso/dadosOferta

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `codOferta` | `string` | Não | Código de identificação externa da oferta de curso |
| `origemOferta` | `integer` |  | Identificação da origem da oferta de curso |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). |
| `token` | `string` | Sim | Chave de acesso única referente ao canal. |

``` JSON tab="Resposta"
{
	"success": true,
	"dados": {
		"id": "1",
		"nome": "CURSO DE MEDICINA - IPATINGA",
		"complemento": null,
		"vagasMinimas": "1",
		"vagasMaximas": "40",
		"valor": "0",
		"codigo": "ADM_3",
		"inicioInscricao": null,
		"terminoInscricao": null,
		"inicioMatricula": "2018-01-01",
		"terminoMatricula": "2018-01-31",
		"inicioCurso": null,
		"terminoCurso": null,
		"curso": "1",
		"unidade": "1",
		"nivelEnsino": "1",
		"modalidade": "1",
		"processoSeletivo": "1",
		"origem": "1",
		"localOferta": ["1"]
	}
}
```

## Listar modalidades

!!! done ""

    <strong class='REST GET'>GET</strong><strong class="MIME">application/json</strong> /api/Curso/listarModalidades

| Atributos | Tipo | Obrigatoriedade | Descrição |
| --- | --- | --- | --- |
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). |
| `token` | `string` | Sim | Chave de acesso única referente ao canal. |

``` JSON tab="Resposta"
{
	"success": true,
	"dados": [{
		"id": "1",
		"titulo": "Presencial"
	}]
}
```

