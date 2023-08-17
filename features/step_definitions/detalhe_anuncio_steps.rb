E("acesso um anuncio para envio de lead") do 
    js_script = 'window.localStorage.setItem(\'wbShowModalFinancingDA\', \'26026425\');'
    page.execute_script(js_script)
    visit 'https://hportal.webmotors.com.br/comprar/peugeot/3008/16-16v-thp-gasolina-griffe-automatico/4-portas/2022/26026425?pos=l26026425g:&np=1'
end     

Quando('clico em ver telefone') do
   detalhe_anuncio.btn_ver_telefone.click
end
  
Entao('visualizo o telefone completo do anunciante') do
    schedule.validar_visualizar_telefone
end

Quando('acesso um anuncio que tenha laudo') do
    js_script = 'window.localStorage.setItem(\'wbShowModalFinancingDA\', \'26032961\');'
    page.execute_script(js_script)
    visit 'https://hportal.webmotors.com.br/comprar/nissan/frontier/23-16v-turbo-diesel-attack-cd-4x4-automatico/4-portas/2021/26032961?pos=b26032961m:&np=1'
end

Quando('clico em visualizar laudo') do
    detalhe_anuncio.button_ver_laudo.click
    home_page.alterar_aba
end    

Entao('sou direcionado para o PDF do laudo') do
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
    js_script = 'window.localStorage.setItem(\'wbShowModalFinancingDA\', \'26033938\');'
    page.execute_script(js_script)
    visit 'https://hportal.webmotors.com.br/comprar/hyundai/coupe/20-fx-16v-2p-automatico/4-portas/2003/26033938?pos=k26033938g:&np=1'
end 

Quando('clico em ver 360') do 
    detalhe_anuncio.button_360.click
end     

Então('vizualizo a foto disponível para 360') do 
    detalhe_anuncio.button_fechar_360.click
    take_screenshot('360', 'visualização de fotos')
end     