# encoding: utf-8
# language: pt


Funcionalidade: Validar visualização de telefone do anúncio
  Eu como Usuario
  Quero conseguir visualizar o teleone do anunciante
  Para que eu consiga entrar em contato

  Contexto:
    Dado que estou na home da webmotors

  @detalhe_vistoriado
  Cenário: Visualizar Laudo
    E acesso um anuncio que tenha laudo
    Quando clico em "Visualizar laudo"
    Entao sou direcionado para o PDF do laudo
