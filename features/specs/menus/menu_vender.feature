# encoding: utf-8
# language: pt

@menus_vender
Funcionalidade: Webmotors Web
  Eu como Usuario
  Quero conseguir navegar pelo site
  Para conseguir vender

  Contexto:
    Dado que estou na home da webmotors

  @vender_carro 
  Cenário: Vender Carro
    Quando quero vender um carro
    Entao sou redirecionado para anunciar o veiculo

  @vender_moto
  Cenário: Vender Moto
    Quando quero vender uma moto
    Entao sou redirecionado para anunciar a moto

  @menu_vender_deslogado
  Esquema do Cenário: Acessar Menu Superior para Vender
    Quando quero acessar o "<menu>" superior para vender
    Entao sou redirecionado para a página do "<menu>" escolhido
    Exemplos:
    | menu                  |
    | Vender meu veículo    |
    | Vender minha moto     |
    #| Autopago                | Tomando erro 404
    | Gerenciar meu anúncio |
    #| FazTudo               | A página não carrega em modo teste

  @pending @menu_vender_logado
  Esquema do Cenário: Estando Logado Acessar Menu Superior para Vender
    E faço login com "automacaoportal@gmail.com" e "Webmotors.2022"
    Quando quero acessar o "<menu>" superior para vender
    Entao sou redirecionado para a página do "<menu>" escolhido
    Exemplos:
    | menu                  |
    | Vender meu veículo    |
    | Vender minha moto     |
    #| Autopago                | Tomando erro 404
    | Gerenciar meu anúncio |
    #| FazTudo               | A página não carrega em modo teste
