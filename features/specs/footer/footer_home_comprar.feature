# encoding: utf-8
# language: pt

@smoke @footer_comprar
Funcionalidade: Validar link do footer na página da home
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_home_comprar
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   Quando clicar no link "<menu>" do menu comprar
   Entao valido que o direcionamento do link "<menu>" de comprar esta correto
   Exemplos:
  | menu                                                     |
  | Carros usados                                            |
  | Carros novos                                             |
  | Motos usadas                                             |
  | Motos novas                                              |
  | Vistoriado                                               |

 @footer_home_cookie
   Cenário: Validar popup de cookie
   Quando clicar no link de gerenciamento de cookie
   Entao valido se o popup abriu corretamente

 @footer_home_logado 
 Esquema do Cenário: Validar direcionamento dos links do footer logado
   E faço login como "albin@putsbox.com" e "@TesteQA1"
   Quando clicar no link "<menu>" do menu comprar
   Entao valido que o direcionamento do link "<menu>" esta correto estando logado
   Exemplos:
  | menu                                                     |
  | Vender carro                                             | 
  | Vender moto                                              |
  | Gerenciar meu anúncio                                    |
