# encoding: utf-8
# language: pt

#@smoke
Funcionalidade: Validar link do footer na página da home
  Eu como Usuario
  Quero conseguir navegar pelos links disponiveis no footer

  Contexto:
    Dado que estou na home da webmotors

 @favoritos_logado
 Esquema do Cenário: Validar favorito logado web
   E faço login como "albin@putsbox.com" e "@TesteQA1"
   Quando realizar a busca do carro "<modelo>"
   E seleciono um anúncio
   E desejo favoritar
   Entao o anuncio é favoritado
   Exemplos:
  | modelo     |
  | Honda      |
  | Fiat       |
  | Chevrolet  |
  | Ford       |