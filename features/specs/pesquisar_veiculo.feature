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
<<<<<<< HEAD
    | modelo     |
    | Honda      |
    | Fiat       |
    # | Mercedes   |
    | Volkswagen |
=======
      | modelo     |
      | Honda City |
      | Fiat       |
      | Mercedes   |
      | Volkswagen |
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70

  @detalhes_veiculo
  Esquema do Cenário: Acessar detalhes de um veiculo
    Quando que eu pesquise o veiculo "<modelo>"
<<<<<<< HEAD
    E acessar o detalhe de um dos veiculos
    Entao devo visualizar os detalhes do veiculo
    Exemplos:
    | modelo     |
    | Honda      |
    | Fiat       |
    | Volkswagen |
=======
      E acessar o detalhe de um dos veiculos
    Entao devo visualizar os detalhes do veiculo
    Exemplos:
      | modelo     |
      | Honda City |
      | Fiat       |
      | Volkswagen |
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70

  @localizacao_veiculo
  Esquema do Cenário: Localizacao do veiculo
    Quando que eu pesquiso um modelo do tipo "Honda"
<<<<<<< HEAD
    E faço a busca pela região de <localizacao>
    Entao vejo a lista disponível na região de <localizacao>
    Exemplos:
    | localizacao      |
    | 'Guarulhos'      |
    | 'Ribeirão Preto' |
    | 'Osasco'       |
=======
      E faço a busca pela região de <localizacao>
    Entao vejo a lista disponível na região de <localizacao>
    Exemplos:
      | localizacao      |
      | 'Guarulhos'      |
      | 'Ribeirão Preto' |
      | 'Campinas'       |
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
