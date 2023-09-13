# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero conseguir navegar pelo site
  Para encontrar os meus futuros veículos

  Contexto:
    Dado que estou na home da webmotors

  @filtrar_motos
  Cenário: Filtrar motos
    Quando entro para ver as ofertas de motos
    E faço um filtro por marca e modelo
    Entao devo ver a lista com os modelos listados

  @validar_filtros_motos
  Cenário: Filtros Adicionais
    Quando entro para ver as ofertas de motos
    E seleciono uma marca e filtros
    Então deve me retornar uma lista com os filtros aplicados

  @Limpar_filtro_moto
  Cenário: Limpar filtros moto
    Quando entro para ver as ofertas de motos
    E faço um filtro por marca e modelo
    Entao devo ver a lista com os modelos listados
    E logo em seguida limpo os filtros 
    E valido se a página foi recarregada sem os filtros aplicados para moto
