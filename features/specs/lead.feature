# encoding: utf-8
# language: pt


Funcionalidade: Envio de lead
  Eu como Usuario
  Quero conseguir enviar uma mensagem para o vendedor
  Para obetr informações sobre o anuncio

  Contexto:
    Dado que estou na home da webmotors

  @envio_lear_simples
  Esquema do Cenário: Enviar lead simples
    Quando entro em um anuncio
    E faço o preenchimento com as minhas informações "<nome>", "<email>", "<telefone>"
    Entao vejo a mensagem de "Mensagem enviada"
    E acesso o cokpit
    E verifico se foi registrado o envio de lead simples
    Exemplos:
    |nome                      | email          | telefone   |
    |Thays envio simples quatro| teste@gmail.com| 11957835659|

