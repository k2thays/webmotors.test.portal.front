# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero navegar menu superior
  Para conseguir ajuda

  Contexto:
    Dado que estou na home da webmotors

  @menu_ajuda_deslogado
  Esquema do Cenário: Menu Ajuda
    Quando quero acessar o menu "<ajuda>"
    Entao devo ser direcionado para a página de "<ajuda>"
    Exemplos:
    | ajuda         |
    | Para Você     |
    | Para sua Loja |

  @pending @menu_ajuda_logado
  Esquema do Cenário: Menu Ajuda
    E faço login com "automacaoportal@gmail.com" e "Webmotors.2022"
    Quando quero acessar o menu "<ajuda>"
    Entao devo ser direcionado para a página de "<ajuda>"
    Exemplos:
    | ajuda           |
    | Para Você       |
    | Para a sua Loja |
