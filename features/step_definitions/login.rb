Quando('eu tentar logar com usuário {string} e senha {string} inválidos') do |email, password|
<<<<<<< HEAD
  home_page.menu_login
  home_page.login_usuario
  favorite.fill_login(email, password)
end

Entao('eu devo ver a mensagem de erro') do
  expect(page).to have_text 'E-mail ou senha inválidos! :('
  take_screenshot('login', 'login_invalido')
end
=======
    home_page.menu_login
    home_page.login_usuario
    favorite.fill_login(email, password)
end
  
Entao('eu devo ver a mensagem de erro') do
    expect(page).to have_text "E-mail ou senha inválidos! :("
end
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
