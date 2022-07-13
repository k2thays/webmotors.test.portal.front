Quando('seleciono uma das categorias') do
    home_page.categorias
    location.remove_locator
end
  
Então('vejo a lista de veiculos da categoria selecionada') do
    home_page.validar_card_carros
end