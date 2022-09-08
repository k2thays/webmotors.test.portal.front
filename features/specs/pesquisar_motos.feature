# encoding: utf-8
# language: pt

@portal
Funcionalidade: Webmotors Web
<<<<<<< HEAD
  Eu como Usuario
=======
      Eu como Usuario
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
  Quero conseguir navegar pelo site
  Para encontrar os meus futuros veículos

  Contexto:
    Dado que estou na home da webmotors

  @pesquisar_moto
  Esquema do Cenário: Pesquisa moto
    Quando que eu pesquise a moto <modelo>
    Entao deve retorna uma lista com as motos disponiveis
    Exemplos:
<<<<<<< HEAD
    |  modelo  |
    | 'Honda '  |
    | 'Yamaha' |
    | 'Kawasaki ' |
=======
      | modelo   |
      | 'Honda'  |
      | 'Yamaha' |
      | 'Suzuki' |
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70

  @localizacao_moto
  Esquema do Cenário: Localizacao do veiculo
    Quando que eu pesquiso um modelo da marca "Yamaha"
<<<<<<< HEAD
    E faço a busca pela região de <localizacao>
    Entao vejo a lista de motos disponível na região de <localizacao>
    Exemplos:
    | localizacao      |
    | 'Guarulhos'      |
    | 'Ribeirão Preto' |
    | 'Osasco'         |
=======
      E faço a busca pela região de <localizacao>
    Entao vejo a lista de motos disponível na região de <localizacao>
    Exemplos:
      | localizacao      |
      | 'Guarulhos'      |
      | 'Ribeirão Preto' |
      | 'Campinas'       |
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
