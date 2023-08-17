# encoding: utf-8
# language: pt

@smoke @testes
Funcionalidade: Validar visualização de telefone do anúncio
  Eu como Usuario
  Quero conseguir visualizar o teleone do anunciante
  Para que eu consiga entrar em contato

  Contexto:
    Dado que estou na home da webmotors

  @detalhe_anuncio_360
  Cenário: Visualizar abertura de foto em 360
    E acesso um anuncio que tenha 360
    Quando clico em ver 360
    Entao vizualizo a foto disponível para 360

  @detalhe_vistoriado_saiba_mais
  Cenário: Validar saiba mais do laudo
    E acesso um anuncio que tenha laudo
    Quando clico em Saiba mais
    Entao sou direcionado para a LP do laudo

  @detalhe_telefone
  Cenário: Visualizar telefone do anunciante
    E acesso um anuncio para envio de lead
    Quando clico em ver telefone
    Entao visualizo o telefone completo do anunciante
 
  # @detalhe_vistoriado
  # Cenário: Visualizar Laudo
  #   E acesso um anuncio que tenha laudo
  #   Quando clico em visualizar laudo
  #   Entao sou direcionado para o PDF do laudo


