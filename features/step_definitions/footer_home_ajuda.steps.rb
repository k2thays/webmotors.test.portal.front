Quando('clicar no link {string} de ajuda') do |menu|
    footerAjuda.selecionar_link_footer_ajuda(menu)
    home_page.alterar_aba
    take_screenshot('Footer Ajuda', 'Menu Ajuda')
end

Entao('valido que o direcionamento do link {string} do menu ajuda esta correto') do |menu|
    case menu
    when 'Para você'
        expect(page).to have_current_path('https://ajuda.webmotors.com.br/hc/pt-br?lkid=1093', url: true)
    when 'Para a sua loja'
        expect(page).to have_current_path('https://ajuda.cockpit.com.br/hc/pt-br/?lkid=1096', url: true)
    when 'Segurança'
        expect(page).to have_current_path('https://www.webmotors.com.br/seguranca/?lkid=1541', url: true)
    when 'Sobre nós'
        expect(page).to have_current_path('https://www.webmotors.com.br/institucional/?lkid=1542', url: true)
    when 'Trabalhe com a gente'
        expect(page).to have_current_path('https://webmotors.gupy.io/?lkid=1099', url: true)
    when 'Mapa do site'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/mapasite?lkid=1543', url: true)
    end 
    take_screenshot('Footer Ajuda', 'Menu Ajuda')    
end 