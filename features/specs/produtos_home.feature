# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Validar régua de produtos na home
  Eu como Usuario
  Quero conseguir navegar pelos links de produtos
  Para ter uma boa experiência

  Contexto:
    Dado que estou na home da webmotors

  @selecionar_card_produto
  Esquema do Cenário: Validar direcionamento do produto de financiamento 
    Quando clico em "<produto>"
    Entao devo validar se a url esta correta de acordo com o "<produto>"
    Exemplos:
    | produto          |
    | Financiamento    |
    | Vender Carro     |
    | Catálogo 0km     |
    | Seguro Veículo   |
    | Tabela FIPE      |
    | Notícias WM1     |
