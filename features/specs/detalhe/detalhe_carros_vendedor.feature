# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Verificar anuncios de um mesmo vendedor
  Eu como Usuario 
  Quero verificar todos os anuncios de um vendedor
  Para escolher a melhor opção

  Contexto:
    Dado que estou na home da webmotors

  @anuncios_vendedor
  Cenário: Validar lista de anuncios de um vendedor expecifico
    Quando verifico todos anuncios de um vendedor
    Entao sou redirecionado para a lista de anuncios
 