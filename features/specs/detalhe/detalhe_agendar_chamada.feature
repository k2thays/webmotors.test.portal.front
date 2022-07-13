# encoding: utf-8
# language: pt

@portal @detalhe
Funcionalidade: Validar agendamento de chamada de video
      Eu como Usuario
  Quero agendar uma chamada de video
  Para ter mais informações do anuncio

  Contexto:
    Dado que estou na home da webmotors

  @agendar_chamada_video
  Esquema do Cenário: Validar agendamento de chamada de video
    Quando desejo agendar uma video chamada
      E informo o "<Nome>", "<Email>" e "<Telefone>" para agendar
      E seleciono período
    Então exibe mensagem de que foi agendado
    Exemplos:
      | Nome | Email         | Telefone    |
      | Ana  | ana@gmail.com | 11992176665 |

  @agendar_chamada_video_fail
  Esquema do Cenário: Validar agendamento de chamada de video dados invalidos
    Quando desejo agendar uma video chamada
      E informo o "<Nome>", "<Email>" e "<Telefone>" para agendar
      E seleciono período
    Então fico impossibilitado de continuar
    Exemplos:
      | Nome | Email          | Telefone    |
      | Ana  | ana##gmail.com | 11992176665 |