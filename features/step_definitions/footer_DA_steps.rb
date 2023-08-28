E('acesso a tela do detalhe do anuncio') do 
    js_script = 'window.localStorage.setItem(\'wbShowModalFinancingDA\', \'26026446\');'
    page.execute_script(js_script)  
    visit 'https://hportal.webmotors.com.br/comprar/bugatti/eb110-ss/35-v12-60v-quad-turbo-gasolina-2p-manual/4-portas/1995/26026446?pos=a26026446g:&np=1'
end     