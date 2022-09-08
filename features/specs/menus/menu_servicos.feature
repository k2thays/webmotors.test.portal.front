# encoding: utf-8
# language: pt

@portal
Funcionalidade: Webmotors Web
<<<<<<< HEAD
  Eu como Usuario
  Quero navegar menu superior
  Para ver serviços

  Contexto:
    Dado que estou na home da webmotors

  @menu_servicos
  Esquema do Cenário: Menu Serviços
    Quando quero acessar o menu de "<servico>"
    Entao devo ser direcionado para a area de "<servico>"
    Exemplos:
    | servico                 |
    | Tabela FIPE             |
    | Catálogo 0km            |
    | Seguro                  |
    | Plataforma Revendedores |
    | Financiamento           |
    | Notícias WM1            |
    #| Autopago                | Tomando erro 404
    #| FazTudo                 | A página não carrega em modo teste
=======
            Eu como Usuario
    Quero navegar menu superior
    Para ver serviços

    Contexto:
        Dado que estou na home da webmotors

    @menu_servicos
    Esquema do Cenário: Menu Serviços

        Quando quero acessar o menu de "<servico>"
        Entao devo ser direcionado para a area de "<servico>"
        Exemplos:
            | servico                 |
            | Tabela FIPE             |
            | Catálogo 0km            |
            | Seguro                  |
            | Plataforma Revendedores |
            | Financiamento           |
            | Notícias WM1            |
            | Autopago                |
            #| FazTudo                 | A página não carrega em modo teste
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
