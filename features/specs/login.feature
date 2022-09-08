# encoding: utf-8
# language: pt

@portal
Funcionalidade: Webmotors Web
<<<<<<< HEAD
  Teste de login
=======
      Teste de login
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70

  Contexto:
    Dado que estou na home da webmotors

  @login_fail
  Cenário: Tentar Logar
    Quando eu tentar logar com usuário "teste@teste.com" e senha "123456789" inválidos
    Entao eu devo ver a mensagem de erro