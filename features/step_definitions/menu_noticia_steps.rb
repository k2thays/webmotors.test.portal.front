Quando('acesso o link do menu de noticias {string}') do |menu_noticia|
    noticiasWM1.selecionar_menu_noticias(menu_noticia)
    home_page.alterar_aba
    take_screenshot('Noticiaswm1', 'Sub_menu')
end

Entao('devo ser direcionado para a página do menu de {string}') do |menu_noticia|
    case menu_noticia
    when 'Portal'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1?lkid=1549', url: true)
    when 'Últimas notícias'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/noticias?lkid=1550', url: true)
    when 'Testes'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/testes', url: true)
    when 'Comparativos'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/comparativos', url: true) 
    when 'Videos'
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