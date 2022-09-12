# encoding: utf-8
# language: pt

@portal
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero navegar menu superior
  Para conseguir logar no site

  Contexto:
   Dado que estou na home da webmotors

@menu_login
Esquema do Cenário: Menu Login
  Quando quero acessar o menu superior para efetuar "<login>"
  Entao sou direcionado para a página de "<login>"
  Exemplos:
  | login              |
  | Logar ou Cadastrar |
  | Sou Revendedor     |
