# encoding: utf-8
# language: pt

@smoke @filtro_carros
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero conseguir navegar pelo site
  Para encontrar os meus futuros veículos

  Contexto:
    Dado que estou na home da webmotors

  @filtrar_veiculo
  Cenário: Filtrar veiculo
    Quando entro para ver as ofertas
    E faço um filtro por, marca, modelo e versão
    Entao devo ver a lista com filtros aplicados

  @validar_filtros_carro
  Cenário: Filtros Adicionais
    Quando entro para ver as ofertas
    E seleciono uma marca e aplico alguns filtros
    Então retorna a busca com os filtros

  @testeandre
  Cenário: Teste andré 
    Dado que teste andre
    Quando teste andre
    Então teste andre