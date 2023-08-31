# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Navegar pela régua de carros 0km
    Eu como Usuario
    Quero conseguir navegar pelas opções da régua de carros 0km

    Contexto:
        Dado que estou na home da webmotors

    @carros_0km
    Esquema do Cenário: Validar os links de direcionamento da régua
    Quando seleciono um dos "<link>" da régua
    Então valido se direcionamento está correto "<link>"
    Exemplos:
    | link    |
    | renault | 
    | nissan  |  
    | toyota  |  
    | gwm     |     
    | ford    |