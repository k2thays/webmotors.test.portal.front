Dado('faço login como {string} e {string}') do |email, password|
  # acessar pagina de login pelo menu superior
  favorite.login_upper_menu
  expect(page).to have_text "Digite o seu\ne-mail e senha"
  # preenchimento dos campos de login
  favorite.fill_login(email, password)
end

Quando('realizar a busca do carro {string}') do |modelos|    
  home_page.pesquisar_veiculo(modelos)
  expect(page).to have_text 'Novos e Usados'
end

Quando('seleciono um anúncio') do
  # Remover autocompletar de localização
  favorite.remove_locator
  expect(page).to have_text 'Novos e Usados'
  # Escolhendo um item do catálogo e validação
  favorite.choose_item
  home_page.alterar_aba
  expect(page).to have_text 'Sobre os diferenciais do anúncio'
end

Quando('desejo favoritar') do
  # Remover favorito caso já esteja adicionado e adicionar para teste de botão
  favorite.fav_add
end

Quando('desejo adicionar aos favoritos') do
  # Adicionando item ao favorito sem estar logado e redirecionando para página de login
  favorite.car_fav_add
  expect(page).to have_text 'Entre em sua conta'
  click_on 'Fazer login'
end

Quando('realizo login como {string} e {string}') do |email, password|
  # preenchimento dos campos de login
  expect(page).to have_text "Digite o seu\ne-mail e senha"
  favorite.fill_login(email, password)
  expect(page).to have_text 'Novos e Usados'
  # Remover autocompletar de localização
  favorite.remove_locator
  expect(page).to have_text 'Novos e Usados'
end

Quando('adiciono aos favoritos') do 
  # Verificar se o anuncio já estava favoritado e então favoritar
  favorite.list_fav_add
end

Entao('o anuncio é favoritado') do
  # Assert via css, dentro do item selecionado
  expect(page).to have_css '.VehicleDetails__header__top .sc-jzJRlG.iHAlVS'
end

Entao('vejo o anuncio favoritado') do
  # Assert após click de favorito
  expect(page).to have_css '.sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.dVKAHr'
end
