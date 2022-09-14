# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero navegar menu superior
  Para ver as notificações

  Contexto:
    Dado que estou na home da webmotors

  @menu_notificacao
  Cenário: Menu de Notificações
    Quando quero acessar o menu superior para ver as notificações
    Entao abre o menu com as notificações
