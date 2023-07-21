# encoding: utf-8
# language: pt

@smoke
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
  | Login              |
  | Sou lojista        |

  @sub_menu_login
  Esquema do Cenário: Sub-Menu Login - Logado
  E faço login como "albin@putsbox.com" e "@TesteQA1"
  Quando acessar o sub-menu de login "<sub_menu>"
  Entao sou direcionado para a página do "<sub_menu>"
  Exemplos:
  | sub_menu        |
  | Meus anúncios   |
  | Minha conta     |
  | Produtos        |
