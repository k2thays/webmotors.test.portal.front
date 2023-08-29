# encoding: utf-8
# language: pt

@smoke @footer_rb
Funcionalidade: Validar link do footer na página do Resultado de Busca
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_rb_noticias
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   E acesso a tela de resultado de busca
   E acesso o footer
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