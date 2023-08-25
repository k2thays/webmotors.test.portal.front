# encoding: utf-8
# language: pt

@smoke @footer_rb
Funcionalidade: Validar link do footer na página da home
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_rb_servicos
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   E acesso a tela de resultado de busca
   E acesso o footer
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