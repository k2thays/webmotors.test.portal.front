# encoding: utf-8
# language: pt

@smoke @footer
Funcionalidade: Validar link do footer na página da home
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_home_vender
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   Quando clicar no link "<menu>" do menu vender
   Entao valido que o direcionamento do link "<menu>" de vender esta correto
   Exemplos:
  | menu                                                     |
  | Vender carro                                             | 
  | Vender moto                                              |
  | Gerenciar meu anúncio                                    |
  | Plataforma revendedores                                  |