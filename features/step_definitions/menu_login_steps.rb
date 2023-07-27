Quando('quero acessar o menu superior para efetuar {string}') do |menu_login|
  if menu_login.eql?('Login')
    home_page.menu_login
    home_page.login_usuario
  end
  if menu_login.eql?('Sou lojista')
    home_page.menu_login
    home_page.login_revendedor
    home_page.alterar_aba
  end
end

Entao('sou direcionado para a página de {string}') do |menu_login|
  if menu_login.eql?('Login')
    expect(page).to have_text "Digite o seu\ne-mail e senha"
    take_screenshot('menu_login', 'login_usuario')
  end
  if menu_login.eql?('Sou lojista')
    expect(page).to have_text 'Você no comando do seu negócio.'
    take_screenshot('menu_login', 'login_revendedor')
  end
end 

Quando('acessar o sub-menu de login {string}') do |sub_menu|
  home_page.acessar_sub_menu_logado(sub_menu)
end

Entao('sou direcionado para a página do {string}') do |sub_menu|
  if sub_menu.eql?('Meus anúncios')
    expect(page).to have_text "Meus Anúncios"
    take_screenshot('sub_menu', 'logado')
  end
  if sub_menu.eql?('Minha conta')
    expect(page).to have_text 'Minha conta'
    take_screenshot('sub_menu', 'logado')
  end
  if sub_menu.eql?('Produtos')
    expect(page).to have_text 'Produtos'
    take_screenshot('sub_menu', 'logado')
  end

end 
