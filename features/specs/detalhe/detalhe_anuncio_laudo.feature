# encoding: utf-8
# language: pt

@smoke @testes
Funcionalidade: Validar visualização de telefone do anúncio
  Eu como Usuario
  Quero conseguir visualizar o teleone do anunciante
  Para que eu consiga entrar em contato

  Contexto:
    Dado que estou na home da webmotors


  @detalhe_vistoriado_saiba_mais
  Cenário: Validar saiba mais do laudo
    E acesso um anuncio que tenha laudo
    Quando clico em Saiba mais
    Entao sou direcionado para a LP do laudo

