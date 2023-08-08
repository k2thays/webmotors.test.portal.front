# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Footer home, RB e DA
      Acessar todos os links do footer

  Contexto:
    Dado que estou na home da webmotors

  @footer_home
  Esquema do Cenário: Validar link de direcionamento do footer na home Menu Comprar
    Quando acesso o link do menu Comprar "<link_footer>"
    Entao devo ser direcionado para a página do link "<link_footer>"
    Exemplos:
    | link_footer    |
    | Carros usados  |
    | Carros novos   | 
    | Motos usadas   |
    | Motos novas    |
    | Vistoriado     |
