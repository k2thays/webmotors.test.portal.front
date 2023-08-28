# encoding: utf-8
# language: pt

@smoke @footer_da
Funcionalidade: Validar link do footer na página de Detalhe do anuncio
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_DA_ajuda
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   E acesso a tela do detalhe do anuncio
   Quando clicar no link "<menu>" de ajuda
   Entao valido que o direcionamento do link "<menu>" do menu ajuda esta correto
   Exemplos:
  | menu                                                     |
  | Para você                                                |
  | Para a sua loja                                          |
  | Segurança                                                |
  | Sobre nós                                                |
  | Trabalhe com a gente                                     |
  | Mapa do site                                             |