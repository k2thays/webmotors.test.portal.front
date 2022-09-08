# encoding: utf-8
# language: pt

@portal
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero navegar menu superior
  Para conseguir comprar

  Contexto:
    Dado que estou na home da webmotors

  @menu_comprar
  Esquema do Cenário: Menu Comprar
    Quando quero acessar o "<menu>" superior para comprar
    Entao deve retorna uma lista com os veiculos disponiveis "<menu>"
    Exemplos:
    | menu                      |
    | Carros Usados e Seminovos |
    | Carros Novos              |
    | Motos Usadas e seminovas  |
    | Motos Novas               |
    | Busca Avançada            |
    #| Autopago                | Tomando erro 404