
# Processo seletivo

## Cadastro de processo seletivo

Os processos seletivos são entidades de controle que podem ser vinculadas a ofertas. 

!!! done ""

    <strong class='REST POST'>POST</strong><strong class="MIME">application/json</strong> /api/ProcessoSeletivo/cadastro

| Atributos | Tipo | Obrigatoriedade | Descrição | 
| --- | --- | --- | --- |
| `codigo` | `string` | Sim | Código de identificação externa. | 
| `nome` | `string` | Sim | Nome do processo seletivo. Limite de caracteres: 255. | 
| `descricao` | `string` | Não | Descrição do processo seletivo. Limite de caracteres: 255. | 
| `inicioInscricao` | `date` | Não | Data de início das inscrições.<br>**Padrão: YYYY-MM-DD** | 
| `terminoinscricao` | `date` | Não | Data de término das inscrições.<br>**Padrão: YYYY-MM-DD** | 
| `inicioMatricula` | `date` | Não | Data de início das matrículas.<br>**Padrão: YYYY-MM-DD** | 
| `terminoMatricula` | `date` | Não | Data de término das matrículas.<br>**Padrão: YYYY-MM-DD** | 
| `codUnidade` | `integer` | Sim | Código único para identificação da unidade que está ofertando o curso atual.<br><br>[Listar Unidades](/api_crm/unidade/#listar-unidades)<br>**Enviar o campo** `codigo` | 
| `codNivelEnsino` | `integer` | Sim | Código único de identificação do nível de ensino.<br><br>[Listar niveis de ensino](/api_crm/metodosdelistagem/#listar-niveis-de-ensino)<br>**Enviar o campo** `codigo` | 
| `origem` | `integer` | Sim | Código de identificação do [canal](/api_crm/apresentacao/#autenticacao). | 
| `token` | `string` | Sim | Chave de acesso única referente ao canal. | 

``` JSON tab="Resposta"
{
    "success":true
}
```

