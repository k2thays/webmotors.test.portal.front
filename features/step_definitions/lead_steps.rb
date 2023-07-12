Quando('entro em um anuncio') do
   visit 'https://www.webmotors.com.br/comprar/fiat/bravo/14-16v-t-jet-gasolina-4p-manual/4-portas/2016/46043352?pos=b46043352m:&np=1'
end

Quando('faço o preenchimento com as minhas informações {string}, {string}, {string}') do |nome, email, telefone|
    lead.preencher_formulario(nome, email, telefone)
end

Entao('vejo a mensagem de {string}') do |mensagem|
    expect(page).to have_text mensagem
end

Entao('acesso o cokpit') do
    visit 'https://hub.webmotors.com.br/Login/Login'
    lead.acessar_cockpit('k2.thays@webmotors.com.br', '@Coracao2023!')
end

Entao('verifico se foi registrado o envio de lead simples') do
    pending # Write code here that turns the phrase above into concrete actions
end