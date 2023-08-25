# encoding: utf-8
# language: pt

@smoke @footer_rb
Funcionalidade: Validar link do footer na página da home
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @footer_rb_institucional
 Esquema do Cenário: Validar direcionamento dos links do footer Deslogado
   E acesso a tela de resultado de busca
   E acesso o footer
   Quando clicar no link "<menu>" do menu institucional
   Entao valido que o direcionamento do link "<menu>" de institucional esta correto
   Exemplos:
  | menu                                                     |
  | Canal de ética                                           |
  # | Código de conduta Webmotors                              |
  # | Código defesa do consumidor                              |
  # | Termos de Uso e Política de privacidade                  |
  # | LGPD                                                     |