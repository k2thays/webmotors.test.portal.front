# encoding: utf-8
# language: pt

@portal
Funcionalidade: Webmotors Web
  Teste de login

  Contexto:
    Dado que estou na home da webmotors

  @login_fail
  Cenário: Tentar Logar
    Quando eu tentar logar com usuário "teste@teste.com" e senha "123456789" inválidos
    Entao eu devo ver a mensagem de erro