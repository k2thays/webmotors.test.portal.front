Quando('clicar no link {string} do menu noticias') do |menu|
    footerNoticias.selecionar_link_footer_noticias(menu)
    home_page.alterar_aba
end

Entao('valido que o direcionamento do link {string} de noticias esta correto') do |menu|
    case menu
    when 'Portal'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1', url: true)
    when 'Últimas notícias'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/noticias?lkid=1550', url: true)
    when 'Testes'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/testes', url: true)
    when 'Comparativos'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/comparativos', url: true)
    when 'Vídeos'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/videos-de-carros-e-motos', url: true)
    when 'Motos'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/motos', url: true)
    when 'Segredos'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/segredos-auto', url: true)
    when 'Dicas'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/dicas', url: true)
    when 'Bolso'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/dinheiro-e-economia', url: true)
    end     
end     