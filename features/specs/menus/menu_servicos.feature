# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero navegar menu superior
  Para ver serviços

  Contexto:
    Dado que estou na home da webmotors

  @menu_servicos
  Esquema do Cenário: Menu Serviços
    Quando quero acessar o menu de "<servico>"
    Entao devo ser direcionado para a area de "<servico>"
    Exemplos:
    | servico                 |
    | Tabela FIPE             |
    | Catálogo 0km            |
    | Seguro veículo          |
    | Plataforma Revendedores |
    | Financiamento           |
    | Vistoriado              |
