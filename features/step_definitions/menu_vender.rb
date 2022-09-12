Quando('quero vender um carro') do
  home_page.quero_vender
  home_page.alterar_aba
end

Entao('sou redirecionado para anunciar o veiculo') do
  expect(page).to have_text 'Anuncie e venda seu carro pelo melhor preço'
end

Quando('quero vender uma moto') do
  home_page.comprar_motos
  home_page.quero_vender
  home_page.alterar_aba
end

Entao('sou redirecionado para anunciar a moto') do
  expect(page).to have_text 'Anuncie e venda sua moto pelo melhor preço'
end

Quando('quero acessar o {string} superior para vender') do |menu_vender|
  if menu_vender.eql?('Vender meu veículo')
    home_page.menu_vender
    home_page.vender_carro
    home_page.alterar_aba
      
  elsif menu_vender.eql?('Vender minha moto') 
    home_page.menu_vender
    home_page.vender_moto
    home_page.alterar_aba
      
  elsif menu_vender.eql?('Autopago')
    home_page.menu_vender
    home_page.venda_compra_segura
    home_page.alterar_aba
      
  elsif menu_vender.eql?('Gerenciar meu anúncio')
    home_page.menu_vender
    home_page.gerenciar_anuncio
    home_page.alterar_aba
      
  elsif menu_vender.eql?('FazTudo')
    home_page.menu_vender
    home_page.venda_faztudo
    home_page.alterar_aba
  end
end
  
Entao('sou redirecionado para a página do {string} escolhido') do |menu_vender|
  if menu_vender.eql?('Vender meu veículo')
    expect(page).to have_text 'Anuncie e venda seu carro pelo melhor preço'

  elsif menu_vender.eql?('Vender minha moto') 
    expect(page).to have_text 'Anuncie e venda sua moto pelo melhor preço'
      
  elsif menu_vender.eql?('Autopago')
    expect(page).to have_text 'Segurança para comprar e vender.'
      
  elsif menu_vender.eql?('Gerenciar meu anúncio')
    expect(page).to have_text "Digite o seu\ne-mail e senha"
      
  elsif menu_vender.eql?('FazTudo')
    expect(page).to have_text 'Quer vender seu carro e não se preocupar com nada?'
  end
end

Dado('faço login com {string} e {string}') do |email, password|
  favorite.login_upper_menu
  favorite.fill_login(email, password)
end
