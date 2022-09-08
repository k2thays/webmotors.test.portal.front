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
<<<<<<< HEAD
    E faço login como "automacaoportal@gmail.com" e "Webmotors.2022"
=======
      E faço login como "matheustestes4321@gmail.com" e "XzuhKDvqV9Fi8mJ!"
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
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
<<<<<<< HEAD
    E desejo adicionar aos favoritos
    E realizo login como "automacaoportal@gmail.com" e "Webmotors.2022"
    E adiciono aos favoritos
=======
      E desejo adicionar aos favoritos
      E realizo login como "matheustestes4321@gmail.com" e "XzuhKDvqV9Fi8mJ!"
      E adiciono aos favoritos
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
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
