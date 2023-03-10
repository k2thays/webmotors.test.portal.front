# encoding: utf-8
# language: pt

@smoke @detalhe
Funcionalidade: Validar simulação de financiamento
      Eu como Usuario
  Quero simular um financiamento
  Para escolher a melhor opção de pagamento

  Contexto:
    Dado que estou na home da webmotors

  @financiamento
  Cenário: Simular financiamento
    E visito a página do anuncio 
    Quando preencho o formulário para consulta
    E decido ver parcelas avisando
    Entao devo visualizar as condições oferecidas

  @financiamento_falha 
  Esquema do Cenário: Simular financiamento
    E faço a busca por um "Chevro"
    E seleciono um anúncio
    Quando não preencho todos os campos
      | nome         | email         | telefone         | nascimento         | cpf         | estado         |
      | <nome_input> | <email_input> | <telefone_input> | <nascimento_input> | <cpf_input> | <estado_input> |
    Entao o botão fica desabilitado
    Exemplos:
      | nome_input | email_input     | telefone_input | nascimento_input | cpf_input   | estado_input        |
      |            | teste@teste.com | 45986808277    | 01/01/1990       | 02130822339 | São Paulo           |
      | Testador   |                 | 45986808277    | 01/01/1990       | 02130822339 | São Paulo           |
      | Testador   | teste@teste.com |                | 01/01/1990       | 02130822339 | São Paulo           |
      | Testador   | teste@teste.com | 45986808277    |                  | 02130822339 | São Paulo           |
      | Testador   | teste@teste.com | 45986808277    | 01/01/1990       |             | São Paulo           |
      | Testador   | teste@teste.com | 45986808277    | 01/01/1990       | 02130822339 | Selecione um estado |