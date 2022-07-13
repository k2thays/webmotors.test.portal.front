# language: pt

@portal @detalhe
Funcionalidade: Validar simulação de parcelamento
      Eu como Usuario
  Quero simular um parcelamento
  Para escolher a melhor opção de pagamento

  Contexto:
    Dado que estou na home da webmotors

  @ver_parcelas
  Esquema do Cenário: Simular parcelamento
      E faço a busca por um "<modelo>"
      E seleciono um anúncio
    Quando preencho o formulário para consulta
      E decido ver parcelas avisando
    Entao deve #VERIFICAR RESULTADO DO FINANCIMANETO EM HOMOLOGAÇÃO
    Exemplos:
      | modelo |
      | Honda  |
      | Ford   |
      |Renault |

 