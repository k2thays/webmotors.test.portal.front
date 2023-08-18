# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Validação dos links de direcionamento do Menu Noticias
      Acessar todos os links do Menu

  Contexto:
    Dado que estou na home da webmotors

  @menu_noticias
    Esquema do Cenário: Validar link de direcionamento do footer na home Menu Comprar
    Quando acesso o link do menu de noticias "<menu_noticias>"
    Entao devo ser direcionado para a página do menu de "<menu_noticias>"
    Exemplos:
    | menu_noticias       |
    | Portal              |
    | Últimas notícias    | 
    | Testes              |
    | Comparativos        |
    | Videos              |
    | Motos               |
    | Segredos            |
    | Dicas               |
    | Bolso               |   