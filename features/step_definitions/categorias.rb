Quando('seleciono uma das categorias') do
  home_page.categorias
  location.remove_locator
end

Entao('vejo a lista de veiculos da categoria selecionada') do
  home_page.validar_card_carros
  take_screenshot('categorias', 'categoria_selecionada')
end
