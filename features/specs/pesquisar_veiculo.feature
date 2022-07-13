# encoding: utf-8
# language: pt

@portal @tudo
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
      | Fiat       |
      | Mercedes   |
      | Volkswagen |

  @detalhes_veiculo
  Esquema do Cenário: Acessar detalhes de um veiculo
    Quando que eu pesquise o veiculo "<modelo>"
      E acessar o detalhe de um dos veiculos
    Entao devo visualizar os detalhes do veiculo
    Exemplos:
      | modelo     |
      | Honda City |
      | Fiat       |
      | Volkswagen |

  @localizacao_veiculo
  Esquema do Cenário: Localizacao do veiculo
    Quando que eu pesquiso um modelo do tipo "Honda"
      E faço a busca pela região de <localizacao>
    Entao vejo a lista disponível na região de <localizacao>
    Exemplos:
      | localizacao      |
      | 'Guarulhos'      |
      | 'Ribeirão Preto' |
      | 'Campinas'       |