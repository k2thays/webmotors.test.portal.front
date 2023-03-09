Quando('acessar o {string} superior para comprar') do |menu_comprar|
  home_page.menu_comprar
  home_page.menu_carros_usados if menu_comprar.eql?('Carros usados')
  home_page.menu_carros_novos if menu_comprar.eql?('Carros novos')
  home_page.menu_motos_usadas if menu_comprar.eql?('Motos usadas')
  home_page.menu_motos_novas if menu_comprar.eql?('Motos novas')
  home_page.menu_compra_certificada if menu_comprar.eql?('Compra certificada')
  home_page.alterar_aba
end

Entao('deve retorna uma lista com os veiculos disponiveis {string}') do |menu_comprar|
  expect(page).to have_text 'Carros Novos e Usados em Todo o Brasil' if menu_comprar.eql?('Compra certificada')
  home_page.validar_card_carros
  take_screenshot('menu_comprar', 'menus')
end

Entao('deve retorna uma lista com os veiculos disponiveis da compra certificada') do
  home_page.validar_compra_certificada
end
