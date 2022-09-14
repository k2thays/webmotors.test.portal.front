Quando('quero vender um carro') do
  home_page.quero_vender
  home_page.alterar_aba
end

Entao('sou redirecionado para anunciar o veiculo') do
  expect(page).to have_text 'Anuncie e venda seu carro pelo melhor preço'
  take_screenshot('menu_vender', 'vender_carro')
end

Quando('quero vender uma moto') do
  home_page.comprar_motos
  home_page.quero_vender
  home_page.alterar_aba
end

Entao('sou redirecionado para anunciar a moto') do
  expect(page).to have_text 'Anuncie e venda sua moto pelo melhor preço'
  take_screenshot('menu_vender', 'vender_moto')
end

Quando('quero acessar o {string} superior para vender') do |menu_vender|
  home_page.menu_vender
  home_page.vender_carro if menu_vender.eql?('Vender meu veículo')
  home_page.vender_moto if menu_vender.eql?('Vender minha moto')
  home_page.venda_compra_segura if menu_vender.eql?('Autopago')
  home_page.gerenciar_anuncio if menu_vender.eql?('Gerenciar meu anúncio')
  home_page.venda_faztudo if menu_vender.eql?('FazTudo')
  home_page.alterar_aba
  
end

Dado('faço login com {string} e {string}') do |email, password|
  favorite.login_upper_menu
  favorite.fill_login(email, password)
end
