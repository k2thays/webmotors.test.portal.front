# encoding: utf-8
# language: pt

@smoke @menucomprar
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero navegar menu superior
  Para conseguir comprar

  Contexto:
    Dado que estou na home da webmotors

  #adicionar validação da tag no RB para usados, novos, vistoriados
  @menu_comprar
  Esquema do Cenário: Menu Comprar
    Quando acessar o "<menu>" superior para comprar
    Entao deve retorna uma lista com os veiculos disponiveis "<menu>"
    Exemplos:
    | menu               |
    | Carros usados      |
    | Carros novos       |
    | Motos usadas       |
    | Motos novas        |
   #| Compra certificada | no momento, não temos massa de dados para esse teste

@menu_comprar_compra_certificada
  Esquema do Cenário: Menu Comprar
    Quando acessar o "<menu>" superior para comprar
    Entao deve retorna uma lista com os veiculos disponiveis da compra certificada
    Exemplos:
    | menu               |
    | Compra certificada |