# encoding: utf-8
# language: pt

@smoke @footer
Funcionalidade: Validar link do footer na página da home
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_home
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   Quando clicar no link "<menu>"
   Entao valido que o direcionamento do link "<menu>" esta correto
   Exemplos:
  | menu                                                     |
  | Carros usados                                            |
  | Carros novos                                             |
  | Motos usadas                                             |
  | Motos novas                                              |
  | Vistoriado                                               |
  | Vender carro                                             | 
  | Vender moto                                              |
  | Gerenciar meu anúncio                                    |
  | Plataforma revendedores                                  |
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
  | Portal                                                   |
  | Últimas notícias                                         |
  | Testes                                                   |
  | Comparativos                                             |
  | Vídeos                                                   |
  | Motos                                                    |
  | Segredos                                                 |
  | Dicas                                                    |
  | Bolso                                                    |
  | Para você                                                |
  | Para a sua loja                                          |
  | Segurança                                                |
  | Sobre nós                                                |
  | Trabalhe com a gente                                     |
  | Mapa do site                                             |
  | Canal de ética                                           |
  #| Código de conduta Webmotors                              |
  #| Código defesa do consumidor                              |
  #| Termos de Uso e Política de privacidade                  |
  #| LGPD                                                     |

 @footer_home_cookie
   Cenário: Validar popup de cookie
   Quando clicar no link de gerenciamento de cookie
   Entao valido se o popup abriu corretamente

 @footer_home_logado 
 Esquema do Cenário: Validar direcionamento dos links do footer logado
   E faço login como "albin@putsbox.com" e "@TesteQA1"
   Quando clicar no link "<menu>"
   Entao valido que o direcionamento do link "<menu>" esta correto estando logado
   Exemplos:
  | menu                                                     |
  # | Vender carro                                             | 
  # | Vender moto                                              |
  # | Gerenciar meu anúncio                                    |
