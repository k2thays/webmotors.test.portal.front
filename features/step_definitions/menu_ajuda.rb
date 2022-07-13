Quando('quero acessar o menu {string}') do |menu_ajuda|
    case 
    when menu_ajuda.eql?('Para Você')
        home_page.menu_ajuda
        home_page.ajuda_para_voce
        home_page.alterar_aba
        
    when menu_ajuda.eql?('Para a sua Loja')
        home_page.menu_ajuda
        home_page.ajuda_para_loja
        home_page.alterar_aba
    end 
end
  
Entao('devo ser direcionado para a página de {string}') do |menu_ajuda|
    case 
    when menu_ajuda.eql?('Para Você')
        expect(page).to have_text "Boas-vindas à central de ajuda Webmotors."
        
    when menu_ajuda.eql?('Para a sua Loja')
        expect(page).to have_text "Central de ajuda Cockpit"        
    end
end