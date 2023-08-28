Quando('clicar no link {string} do menu vender') do |menu|
    footerVender.selecionar_link_footer_vender(menu)
    home_page.alterar_aba
end

Entao('valido que o direcionamento do link {string} de vender esta correto') do |menu|
    case menu
    when 'Vender carro'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro/?lkid=1080', url: true)
    when 'Vender moto'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-moto?lkid=1081', url: true)
    when 'Gerenciar meu anúncio'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/login?lkid=1082&r=https://hportal.webmotors.com.br/garagem', url: true)
    when 'Plataforma revendedores'
        expect(page).to have_current_path('https://www.cockpit.com.br/?lkid=1091', url: true)
    end     
end    