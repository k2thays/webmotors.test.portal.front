# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Webmotors Web
            Eu como Usuario
    Quero conseguir navegar pelo site

    Contexto:
        Dado que estou na home da webmotors

    @categorias
    Cenário: Categorias
    Quando seleciono uma das categorias
    Então vejo a lista de veiculos da categoria selecionada