# encoding: utf-8
# language: pt

@smoke
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
      | nome_input         | email_input     | telefone_input | nascimento_input | cpf_input   | estado_input        |
      |                    | teste@gmail.com | 45986808277    | 01/01/1990       | 02130822339 | São Paulo           |
      | Clarice  Automação |                 | 45986808277    | 01/01/1990       | 02130822339 | São Paulo           |
      | Clarice  Automação | teste@gmail.com |                | 01/01/1990       | 02130822339 | São Paulo           |
      | Clarice  Automação | teste@gmail.com | 45986808277    |                  | 02130822339 | São Paulo           |
      | Clarice  Automação | teste@gmail.com | 45986808277    | 01/01/1990       |             | São Paulo           |
      | Clarice  Automação | teste@gmail.com | 45986808277    | 01/01/1990       | 02130822339 | Selecione um estado |
      | Clarice  Automação | teste@gmail.com | 4520909856     | 01/01/1990       | 02130822339 | São Paulo           |

  @financiamento_validacao_mens_erro
  Esquema do Cenário: Validar mensagem de erro para campo nome com apenas primeiro nome
    E faço a busca por um "Chevro"
    E seleciono um anúncio da página
    Quando preencho com um campo inválido
      | nome          | email           | telefone          | nascimento             | cpf             | estado          |
      | <nome_input>  | <email_input>   | <telefone_input>  | <nascimento_input>     | <cpf_input>     | <estado_input>  |
    Entao a mensagem de erro é exibida "Nome inválido. É preciso informar também o sobrenome"
    Exemplos:
      | nome_input         | email_input     | telefone_input | nascimento_input | cpf_input   | estado_input |
      | Clarice            | teste@gmail.com | 45986808277    | 01/01/1990       | 02130822339 | São Paulo    |

    @financiamento_validacao_botao_desabilitado
    Esquema do Cenário: Validar botão desabilitado ao informar um telefone fixo
    E faço a busca por um "Chevro"
    E seleciono um anúncio da página
    Quando preencho com um campo inválido
      | nome          | email           | telefone          | nascimento             | cpf             | estado          |
      | <nome_input>  | <email_input>   | <telefone_input>  | <nascimento_input>     | <cpf_input>     | <estado_input>  |
    Entao o botão fica desabilitado
    Exemplos:
      | nome_input         | email_input     | telefone_input | nascimento_input | cpf_input   | estado_input |
      | Clarice Lispector  | teste@gmail.com | 1120928874     | 01/01/1990       | 02130822339 | São Paulo    |
