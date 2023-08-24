Quando('clicar no link {string} do menu servicos') do |menu|
    footerServicos.selecionar_link_footer_servicos(menu)
    home_page.alterar_aba
end

Entao('valido que o direcionamento do link {string} de servicos esta correto') do |menu|
    case menu
    when 'Tabela FIPE'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/tabela-fipe/?lkid=1084', url: true)
    when 'Financiamento'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/financiamento/?lkid=1088', url: true)
    when 'Catálogo 0km'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/catalogo?lkid=1085', url: true)
    when 'Vistoriado servico'
        expect(page).to have_current_path('https://www.cockpit.com.br/solutions/vistoriado?lkid=1579', url: true)
    when 'Plataforma revendedores serviço'
        expect(page).to have_current_path('https://www.cockpit.com.br/?lkid=1091', url: true)
    when 'Seguro veículo'
        expect(page).to have_current_path('https://www.autocompara.com.br/?lkid=1090&utm_source=webmotors&utm_medium=site&utm_campaign=footer_seguro_veiculo', url: true)
    when 'Autoinsights'
        expect(page).to have_current_path('https://publicidade.webmotors.com.br/tag/blog/index.html?lkid=1092', url: true)
    when 'Publicidade'
        expect(page).to have_current_path('https://publicidade.webmotors.com.br/?lkid=1092', url: true)
    when 'Comparar veículos'
        expect(page).to have_current_path('https://www.webmotors.com.br/catalogo/comparativo-de-carros?lkid=1766', url: true)
    when 'Multas e Débitos'
        expect(page).to have_current_path('https://webmotors.usezapay.com.br/?lkid=1767', url: true)
    end    
end