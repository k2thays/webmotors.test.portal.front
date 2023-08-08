Quando('acesso o link do menu Comprar {string}') do |link_footer|
    footer.acessar_link_footer(link_footer)
end

Entao('devo ser direcionado para a página do link {string}') do |direcionamento_footer|
    case direcionamento_footer
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
    take_screenshot('Footer Home', 'Menu Comprar')
end

