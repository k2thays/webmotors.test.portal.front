# language: pt
# encoding: utf-8

@portal
Funcionalidade: Webmotors Web
      Eu como Usuario
  Quero conseguir navegar pelo site
  Para encontrar os meus futuros veículos, entrando em contato com os vendedores ou consultar preços

  Contexto:
    Dado que estou na home da webmotors

  @pesquisar_veiculo
  Esquema do Cenário: Pesquisa veiculo
    Quando que eu pesquise o veiculo "<modelo>"
    Entao deve retorna uma lista com os veiculos disponiveis
    Exemplos:
      | modelo     |
      | Honda City |

