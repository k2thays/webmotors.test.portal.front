# encoding: utf-8
# language: pt

@smoke
Funcionalidade: Navegar pela régua de lojas com estoque
    Eu como Usuario
    Quero conseguir navegar pelas opções da régua de lojas com estoque

    Contexto:
        Dado que estou na home da webmotors

    @lojas_com_estoque
    Esquema do Cenário: Validar os links de direcionamento da régua
    E insiro uma localização na tela de resultado de busca
    E retorno para a home
    Quando seleciono um dos "<card>" da régua de lojas com estoque
    Então valido se direcionamento está correto para o card de lojas com estoque
    Exemplos:
    | card   |
    | card01 | 
    | card02 |  
    | card03 |  
    | card04 |     
    | card05 |