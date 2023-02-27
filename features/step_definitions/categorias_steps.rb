Quando('seleciono uma das categorias') do
  home_page.categorias
  # Remover autocompletar de localização
  location.remove_locator
end

Entao('vejo a lista de veiculos da categoria selecionada') do
  home_page.validar_card_carros
  take_screenshot('categorias', 'categoria_selecionada')
end