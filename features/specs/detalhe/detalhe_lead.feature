# encoding: utf-8
# language: pt

#VERIFICAR RESULTADO DE SUCESSO DO FINANCIMANETO EM HOMOLOGAÇÃO
#VERIFICAR COM TIME DE FINANCIAMENTO PARA PEGAR OS DADOS QUE PASSAM NAS PARCELAS

@smoke @envio_de_lead_todos
Funcionalidade: Validar envio lead Simples
  Eu como Usuario
  Quero enviar uma notificação de interesse
  Para que o vendedor entre em contato

  Contexto:
    Dado que estou na home da webmotors

  @envio_lead
    Cenário: Enviar lead já preenchido
    E acesso um anuncio para envio de lead
    Quando envio mensagem do lead
    Entao recebo a confirmação

  @lead_falha
  Esquema do Cenário: Lead sem preencher os campos
    E acesso um anuncio para envio de lead
    Quando preencho somente alguns campos:
    | nome         | email         | telefone         | mensagem         |
    | <nome_input> | <email_input> | <telefone_input> | <mensagem_input> |
    Então não posso enviar a mensagem, pois o botão fica desabilitado
    Exemplos:
    | nome_input        | email_input           | telefone_input | mensagem_input    |
    |                   | pitanguinha@gmail.com | 14999999999    | Mensagem de teste |
    | Silvio Santos     |                       | 14999999999    | Mensagem de teste |
    | Silvio Santos     | pitanguinha@gmail.com |                | Mensagem de teste |

  @denunciar_anuncio
    Cenário: Denunciar um anuncio
    E acesso um anuncio para envio de lead
    Quando denuncio um anúncio
    E preencho o formulario
    Entao exibe mensagem enviada com sucesso
