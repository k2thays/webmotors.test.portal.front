Quando('clico em {string}') do |string|
    click_button string
end
  
Entao('visualizo o telefone completo do anunciante') do
    schedule.validar_visualizar_telefone
end

Quando('acesso um anuncio que tenha laudo') do
    visit 'https://hportal.webmotors.com.br/comprar/nissan/frontier/23-16v-turbo-diesel-attack-cd-4x4-automatico/4-portas/2021/26032961?pos=b26032961m:&np=1'
end

Quando('clico em {string}') do |string|
   click_link string
end    

Entao('sou direcionado para o PDF do laudo') do
    home_page.alterar_aba
    expect(page).to have_current_path('https://hportal.webmotors.com.br/supervisao/1207837/report_1207837.pdf', url: true)
end

Entao('sou direcionado para a LP do laudo') do 
    home_page.alterar_aba
    expect(page).to have_current_path('https://www.cockpit.com.br/solutions/vistoriado?lkid=1580', url: true)
    take_screenshot('Vistoriado', 'Laudo')
end     

Quando('clico em Saiba mais') do
    detalhe_anuncio.link_saiba_mais.click
end     

E('acesso um anuncio que tenha 360') do 
    visit 'https://hportal.webmotors.com.br/comprar/hyundai/creta/10-tgdi-flex-platinum-automatico/4-portas/2023/26033924?pos=i26033924g:&np=1'
end 

Quando('clico em ver 360') do 
    detalhe_anuncio.button_360.click
end     

Então('vizualizo a foto disponível para 360') do 
    wait_until_imagem_360_visible
    imagem_360.visible?
    detalhe_anuncio.button_fechar_360.click
    take_screenshot('360', 'visualização de fotos')

end     