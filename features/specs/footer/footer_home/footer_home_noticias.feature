# encoding: utf-8
# language: pt

@smoke @footer
Funcionalidade: Validar link do footer na página da home
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_home_noticias
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
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