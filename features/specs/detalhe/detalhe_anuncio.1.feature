# encoding: utf-8
# language: pt

@smoke @testes
Funcionalidade: Validar visualização de telefone do anúncio
  Eu como Usuario
  Quero conseguir visualizar o teleone do anunciante
  Para que eu consiga entrar em contato

  Contexto:
    Dado que estou na home da webmotors

  #CASO DE PROBLEMA DO LAUDO TROCAR MASSA
  @detalhe_vistoriado
  Cenário: Visualizar Laudo
    E acesso um anuncio que tenha laudo
    Quando clico em "Visualizar laudo"
    Entao sou direcionado para o PDF do laudo

  # @detalhe_anuncio_360
  # Cenário: Visualizar abertura de foto em 360
  #   E acesso um anuncio que tenha 360
  #   Quando clico em ver 360
  #   Entao vizualizo a foto disponível para 360


