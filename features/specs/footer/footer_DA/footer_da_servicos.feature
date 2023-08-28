# encoding: utf-8
# language: pt

@smoke @footer_da
Funcionalidade: Validar link do footer na página de Detalhe do anuncio
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_DA_servicos
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   E acesso a tela do detalhe do anuncio
   Quando clicar no link "<menu>" do menu servicos
   Entao valido que o direcionamento do link "<menu>" de servicos esta correto
   Exemplos:
  | menu                                                     |
  | Tabela FIPE                                              |
  | Financiamento                                            |
  | Catálogo 0km                                             |
  | Vistoriado servico                                       |
  | Plataforma revendedores serviços                         |
  | Seguro veículo                                           |
  | Autoinsights                                             |
  | Publicidade                                              |
  | Comparar veículos                                        |
  | Multas e Débitos                                         |