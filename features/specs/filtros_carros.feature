# encoding: utf-8
# language: pt

@smoke @filtros
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

  @Limpar_filtro_carro
  Cenário: Limpar filtros carro
    Quando entro para ver as ofertas
    E faço um filtro por, marca, modelo e versão
    Entao devo ver a lista com filtros aplicados
    E logo em seguida limpo os filtros 
    E valido se a página foi recarregada sem os filtros aplicados
