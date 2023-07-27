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
    | menu           |
    | Carros usados  |
    | Carros novos   |
    | Motos usadas   |
    | Motos novas    |
    | Vistoriado     |

@menu_comprar_vistoriado
  Esquema do Cenário: Menu comprar vistoriado
    Quando acessar o "<menu>" superior para comprar
    Entao deve retorna uma lista com os veiculos disponiveis de vistoriado
    Exemplos:
    | menu       |
    | Vistoriado |