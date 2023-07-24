# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Webmotors Web
      Teste de login

  Contexto:
    Dado que estou na home da webmotors

  @login_fail
  Cenário: Validar login com falha
    Quando eu tentar logar com usuário "teste@asdfteste.com" e senha "1234asdfas56789FAFAWF" inválidos
    Entao eu devo ver a mensagem de erro

  @login_sucesso
  Cenário: Validar login com sucesso
  Quando faço login como "albin@putsbox.com" e "@TesteQA1"
  Entao eu devo ver o nome do usuario logado

