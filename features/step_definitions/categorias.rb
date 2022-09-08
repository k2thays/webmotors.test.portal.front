Quando('seleciono uma das categorias') do
<<<<<<< HEAD
  home_page.categorias
  location.remove_locator
end

Entao('vejo a lista de veiculos da categoria selecionada') do
  home_page.validar_card_carros
  take_screenshot('categorias', 'categoria_selecionada')
end
=======
    home_page.categorias
    location.remove_locator
end
  
Então('vejo a lista de veiculos da categoria selecionada') do
    home_page.validar_card_carros
end
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
