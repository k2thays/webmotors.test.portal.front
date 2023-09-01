Quando('seleciono um dos {string} da régua') do |link|
    carfilters.scroll_to_element(carros0km.card_categorias)
    carfilters.scroll_to_element(carros0km.card_mais_buscados)
    carfilters.scroll_to_element(produto.card_vender_carro)
    carros0km.selecionar_link_0km(link)
    sleep 1
    carfilters.scroll_to_element(carros0km.card_categorias)
    carfilters.scroll_to_element(carros0km.card_mais_buscados)
    carfilters.scroll_to_element(produto.card_vender_carro)
    carros0km.selecionar_link_0km(link)
    home_page.alterar_aba    
end

Então('valido se direcionamento está correto {string}') do |link|
    case link
    when 'renault'
        expect(page).to have_current_path('https://www.webmotors.com.br/renault', url: true)
        expect(page).to have_text 'Louis Renault'
    when 'nissan'
        expect(page).to have_current_path('https://www.webmotors.com.br/nissan', url: true)
        expect(page).to have_text 'Masujiro Hashimoto'
    when 'toyota'
        expect(page).to have_current_path('https://www.webmotors.com.br/toyota', url: true)
        expect(page).to have_text 'Sakichi Toyoda'
    when 'gwm'
        expect(page).to have_current_path('https://www.webmotors.com.br/gwm', url: true)
        expect(page).to have_text 'GWM HAVAL H6 GT'
    when 'ford'
        expect(page).to have_current_path('https://www.webmotors.com.br/ford', url: true)
        expect(page).to have_text 'Henry Ford'
    end    
end