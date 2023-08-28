# encoding: utf-8
# language: pt

@smoke @footer_da
Funcionalidade: Validar link do footer na página de Detalhe do anuncio
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_DA_noticias
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   E acesso a tela do detalhe do anuncio
   Quando clicar no link "<menu>" do menu noticias
   Entao valido que o direcionamento do link "<menu>" de noticias esta correto
   Exemplos:
  | menu              |
  | Portal            |
  | Últimas notícias  |
  | Testes            |
  | Comparativos      |
  | Vídeos            |
  | Motos             |
  | Segredos          |
  | Dicas             |
  | Bolso             |                  