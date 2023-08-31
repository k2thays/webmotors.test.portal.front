Quando('clicar no link {string} do menu institucional') do |menu|
    footerInstitucional.selecionar_link_footer_institucional(menu)
    home_page.alterar_aba
    take_screenshot('Footer Institucional', 'Selcionar link')
end

Entao('valido que o direcionamento do link {string} de institucional esta correto') do |menu|
    case menu
    when 'Canal de ética'
        expect(page).to have_current_path('https://aloetica.com.br/otrs/canal-de-etica.pl?CustomerID=webmotors.com.br&lkid=1544', url: true)
    when 'Código de conduta Webmotors'
        expect(page).to have_current_path('https://www.webmotors.com.br/seguranca/assets/files/codigo-de-conduta.pdf?lkid=1545', url: true)
    when 'Código defesa do consumidor'
        expect(page).to have_current_path('https://cdn.webmotors.com.br/webmotors/content/pdf/cdc.pdf?v:32673&lkid=1097', url: true)
    when 'Termos de Uso e Política de privacidade'
        expect(page).to have_current_path('https://www.webmotors.com.br/seguranca/politica-de-privacidade/', url: true)
    when 'LGPD'
        expect(page).to have_current_path('https://www.webmotors.com.br/seguranca/lgpd/', url: true)
    end  
    take_screenshot('Footer Institucional', 'Validação de link')  
end