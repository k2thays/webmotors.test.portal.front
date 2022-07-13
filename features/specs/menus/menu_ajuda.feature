# encoding: utf-8
# language: pt

@portal @menus
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
            | ajuda           |
            | Para Você       |
            | Para a sua Loja |

    @menu_ajuda_logado
    Esquema do Cenário: Menu Ajuda
            E faço login com "matheustestes4321@gmail.com" e "XzuhKDvqV9Fi8mJ!"
        Quando quero acessar o menu "<ajuda>"
        Entao devo ser direcionado para a página de "<ajuda>"
        Exemplos:
            | ajuda           |
            | Para Você       |
            | Para a sua Loja |