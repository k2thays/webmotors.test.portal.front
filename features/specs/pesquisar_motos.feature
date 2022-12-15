# encoding: utf-8
# language: pt

@smoke @teste
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero conseguir navegar pelo site
  Para encontrar os meus futuros veículos

  Contexto:
    Dado que estou na home da webmotors

  @pesquisar_moto
  Esquema do Cenário: Pesquisa moto
    Quando que eu pesquise a moto <modelo>
    Entao deve retorna uma lista com as motos disponiveis
    Exemplos:
    |  modelo     |
    | 'Honda'     |
    | 'Yamaha'    |
    | 'Kawasaki ' |

  @localizacao_moto
  Esquema do Cenário: Localizacao do veiculo
    Quando que eu pesquiso um modelo da marca "Honda"
    E faço a busca pela região de <localizacao>
    Entao vejo a lista de motos disponível na região de <localizacao>
    Exemplos:
    | localizacao      |
    | 'Guarulhos'      |
    | 'Ribeirão Preto' |
    | 'São Paulo'      |
