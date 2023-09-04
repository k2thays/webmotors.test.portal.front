Quando('clico em {string}') do |produto_escolhido|
    produto.selecionar_produto(produto_escolhido)
    home_page.alterar_aba
    take_screenshot('Régua de produtos home', 'Selcionar produto')
end 

Entao('devo validar se a url esta correta de acordo com o {string}') do |url_produto|
    case url_produto
    when 'Financiamento'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/financiamento/?lkid=1068', url: true)  
        expect(page).to have_text 'As melhores condições para comprar seu carro estão aqui'
    when 'Vender Carro'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro/?lkid=1069', url: true)  
    when 'Catálogo 0km'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/catalogo/?lkid=1070', url: true)  
        expect(page).to have_text 'Tudo que você precisa para escolher o seu carro 0KM'
    when 'Seguro Veículo'
        expect(page).to have_current_path('https://www.autocompara.com.br/?lkid=1071&utm_source=webmotors&utm_medium=site&utm_campaign=prox_footer_seguro_veiculo', url: true)  
        expect(page).to have_text 'Nossos parceiros'
    when 'Tabela FIPE'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/tabela-fipe/?lkid=1072', url: true)  
        expect(page).to have_text 'Comece escolhendo o tipo de veículo:'
    when 'Notícias WM1'
        expect(page).to have_current_path('https://www.webmotors.com.br/wm1?lkid=1897', url: true)  
        expect(page).to have_text 'O canal de notícias da Webmotors'
    end 
    take_screenshot('Régua de produtos home', 'Produtos')
end 