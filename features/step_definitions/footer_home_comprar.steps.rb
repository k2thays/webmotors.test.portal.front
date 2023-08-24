Quando('clicar no link {string} do menu comprar') do |menu|
    footerComprar.selecionar_link_footer_comprar(menu)
    home_page.alterar_aba
end

Entao('valido que o direcionamento do link {string} de comprar esta correto') do |menu|
    case menu
    when 'Carros usados'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/carros-usados/estoque?lkid=1075', url: true)
    when 'Carros novos'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/carros-novos/estoque?lkid=1076', url: true)
    when 'Motos usadas'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/motos-usadas/estoque?lkid=1077', url: true)
    when 'Motos novas'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/motos-novas/estoque?lkid=1078', url: true)
    when 'Vistoriado'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/carros/estoque?Oportunidades=Vistoriado&lkid=1578', url: true)
    end 
end     

Quando('clicar no link de gerenciamento de cookie') do
    footerComprar.gerenciamento_cookies.click
end

Entao('valido se o popup abriu corretamente') do
    expect(page).to have_text 'Uso de Cookies'
end

Entao('valido que o direcionamento do link {string} esta correto estando logado') do |menu|
    case menu
    when 'Vender carro'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro/especificacoes', url: true)
    when 'Vender moto'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-moto/especificacoes', url: true)
    when 'Gerenciar meu anúncio'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/garagem', url: true)
    end 
end     