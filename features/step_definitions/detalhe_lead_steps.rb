Quando('envio mensagem do lead') do
  home_page.alterar_aba
  # Preenchimento do formulário para enviar mensagem ao vendedor
  lead.fill_form
  #home_page.fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 2)
end

Entao('recebo a confirmação') do
  # Assert de confirmação
  #home_page.fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 2)
  expect(page).to have_text 'Mensagem enviada!'
  take_screenshot('envio_lead', 'Mensagem enviada!')
end

Quando('preencho somente alguns campos:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #home_page.fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 2)
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
