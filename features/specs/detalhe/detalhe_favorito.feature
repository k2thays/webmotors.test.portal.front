# encoding: utf-8
# language: pt

@portal @busca
Funcionalidade: Validar favorito logado
  Eu como Usuario
  Quero conseguir navegar pelo site
  Para favoritar um anuncio de minha preferência

  Contexto:
    Dado que estou na home da webmotors

  @favoritos_logado
  Esquema do Cenário: Validar favorito logado web
    E faço login como "automacaoportal@gmail.com" e "Webmotors.2022"
    Quando realizar a busca do carro "<modelo>"
      E seleciono um anúncio
      E desejo favoritar
    Entao o anuncio é favoritado
    Exemplos:
    | modelo     |
    | Honda      |
    | Fiat       |
    | Chevrolet  |
    # | Ford       |
    # | Hyundai    |
    # | Peugeot    |
    # | Volkswagen |
    # | Renault    |

  @favoritos_deslogado
  Cenário: Validar favorito deslogado
    Quando realizar a busca do carro "<modelo>"
    E desejo adicionar aos favoritos
    E realizo login como "automacaoportal@gmail.com" e "Webmotors.2022"
    E adiciono aos favoritos
    Entao vejo o anuncio favoritado
    Exemplos:
    | modelo     |
    | Honda      |
    | Fiat       |
    | Chevrolet  |
    # | Ford       |
    # | Hyundai    |
    # | Peugeot    |
    # | Volkswagen |
    # | Renault    |
