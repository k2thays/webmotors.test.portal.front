Quando('quero acessar o {string} superior para comprar') do |menu_comprar|
  home_page.menu_comprar
  home_page.menu_carros_novos_usados if menu_comprar.eql?('Carros Usados e Seminovos')
  home_page.menu_carros_novos if menu_comprar.eql?('Carros Novos')
  home_page.menu_motos_novas_usadas if menu_comprar.eql?('Motos Usadas e seminovas')
  home_page.menu_motos_novas if menu_comprar.eql?('Motos Novas')
  home_page.menu_busca_avancada if menu_comprar.eql?('Busca Avançada')
  home_page.menu_compra_segura if menu_comprar.eql?('Autopago')
  home_page.alterar_aba
end

Entao('deve retorna uma lista com os veiculos disponiveis {string}') do |menu_comprar|
  expect(page).to have_text 'Segurança para comprar e vender.' if menu_comprar.eql?('Autopago')
  home_page.validar_card_carros
  take_screenshot('menu_comprar', 'menus')
end
