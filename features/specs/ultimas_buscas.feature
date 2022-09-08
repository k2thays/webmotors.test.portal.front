# encoding: utf-8
# language: pt

@portal @buscas
Funcionalidade: Webmotors Web
Como Usuario
Quero poder de maneira pratica selecionar as buscas anteriores
Para facilitar no acesso das pesquisas

  Contexto:
    Dado que estou na home da webmotors

  @ultimas_busca
  Cenário: Localizacao do veiculo
    Quando que eu pesquiso um modelo do tipo "Honda Civic"
    E retorno a página inicial e seleciono a ultima busca realizada
    Então vejo a lista de veiculos da ultima busca