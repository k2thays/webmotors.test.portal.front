Quando('eu tentar logar com usuário {string} e senha {string} inválidos') do |email, password|
  home_page.menu_login
  home_page.login_usuario
  favorite.fill_login(email, password)
end

Entao('eu devo ver a mensagem de erro') do
  expect(page).to have_text 'E-mail ou senha inválidos! :('
  take_screenshot('login', 'login_invalido')
end

Entao('eu devo ver o nome do usuario logado') do 
  expect(page).to have_text 'QAXX XXta' 
end  
