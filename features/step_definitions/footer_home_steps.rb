Quando('clicar no link {string}') do |menu|
    footer.selecionar_link_footer(menu)
    home_page.alterar_aba
end

Entao('valido que o direcionamento do link {string} esta correto') do |menu|
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
    when 'Vender carro'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro/?lkid=1080', url: true)
    when 'Vender moto'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-moto?lkid=1081', url: true)
    when 'Gerenciar meu anúncio'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/login?lkid=1082&r=https://hportal.webmotors.com.br/garagem', url: true)
    when 'Plataforma revendedores'
        expect(page).to have_current_path('https://www.cockpit.com.br/?lkid=1091', url: true)
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
    when 'Portal'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1', url: true)
    when 'Últimas notícias'
        expect(page).to have_current_path('https://hportal.webmotors.com.br/wm1/noticias', url: true)
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
end

Quando('clicar no link de gerenciamento de cookie') do
    footer.gerenciamento_cookies.click
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