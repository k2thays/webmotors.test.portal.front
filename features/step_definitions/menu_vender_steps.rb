Quando('quero vender um carro') do
  home_page.quero_vender
  home_page.alterar_aba
end

Entao('sou redirecionado para anunciar o veiculo') do
  expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro?lkid=1020', url: true)
  #expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro?lkid=1020', url: true)
  take_screenshot('menu_vender', 'vender_carro')
end

Quando('quero vender uma moto') do
  home_page.comprar_motos
  home_page.quero_vender
  home_page.alterar_aba
end

Entao('sou redirecionado para anunciar a moto') do
  expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-moto?lkid=1020', url: true)
  take_screenshot('menu_vender', 'vender_moto')
end

Quando('quero acessar o {string} superior para vender') do |menu_vender|
  home_page.menu_vender
  home_page.vender_carro if menu_vender.eql?('Vender carro')
  home_page.vender_moto if menu_vender.eql?('Vender moto')
  home_page.gerenciar_anuncio if menu_vender.eql?('Gerenciar meu anúncio')
  home_page.plataforma_rev if menu_vender.eql?('Plataforma revendedores')
  home_page.alterar_aba
  
end

Dado('faço login com {string} e {string}') do |email, password|
  favorite.login_upper_menu
  favorite.fill_login(email, password)
end
