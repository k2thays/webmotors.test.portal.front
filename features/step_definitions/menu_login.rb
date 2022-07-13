Quando('quero acessar o menu superior para efetuar {string}') do |menu_login|
    case 
    when menu_login.eql?('Logar ou Cadastrar')
        home_page.menu_login
        home_page.login_usuario
        
    when menu_login.eql?('Sou Revendedor')
        home_page.menu_login
        home_page.login_revendedor
        home_page.alterar_aba
    end   
end
  
Entao('sou direcionado para a página de {string}') do |menu_login|
    case 
    when menu_login.eql?('Logar ou Cadastrar')
        expect(page).to have_text "Digite o seu\ne-mail e senha"
        
    when menu_login.eql?('Sou Revendedor')
        expect(page).to have_text "Você no comando do seu negócio."        
    end   
end