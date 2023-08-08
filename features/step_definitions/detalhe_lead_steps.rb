E('acesso um anuncio para envio de lead') do 
  js_script = 'window.localStorage.setItem(\'wbShowModalFinancingDA\', \'26027319\');'
  page.execute_script(js_script)
  visit 'https://hportal.webmotors.com.br/comprar/spyker/c8-laviolette/42-coupe-v8-gasolina-2p-manual/3-portas/2010/26027319?pos=a26027319g:&np=1'
end   

Quando('envio mensagem do lead') do
  # Preenchimento do formulário para enviar mensagem ao vendedor
  lead.fill_form
end

Entao('recebo a confirmação') do
  # Assert de confirmação
  expect(page).to have_text 'Mensagem enviada!'
  take_screenshot('envio_lead', 'Mensagem enviada!')
end

Quando('preencho somente alguns campos:') do |table|
  user = table.hashes[0]
  lead.fill_form_fail(user)
end

Entao('não posso enviar a mensagem, pois o botão fica desabilitado') do
  expect(page).to have_button('Enviar mensagem', disabled: false)
  take_screenshot('envio_lead', 'lead_dados_incompletos')
end

Quando('denuncio um anúncio') do
  # Botão de Denunciar
  lead.verificar_popup
  click_button 'Denunciar este anúncio'
  expect(page).to have_text 'Denunciar anúncio'
end

Quando('preencho o formulario') do
  # Preenchimento dos campos para efetuar a denuncia
  complaint.fill_form
end

Entao('exibe mensagem enviada com sucesso') do
  # Asserts de validação
  expect(page).to have_text "Mensagem enviada\ncom sucesso!"
  take_screenshot('denuncia', 'mensagem_denuncia')
end
