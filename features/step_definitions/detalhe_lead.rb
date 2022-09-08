<<<<<<< HEAD
Dado('faço a busca por um {string}') do |modelo|
  home_page.pesquisar_veiculo(modelo)
end
  
=======
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
Quando('envio mensagem do lead') do
  home_page.alterar_aba
  # Preenchimento do formulário para enviar mensagem ao vendedor
  lead.fill_form
end
  
<<<<<<< HEAD
Entao('recebo a confirmação') do
  # Assert de confirmação
  expect(page).to have_text 'Mensagem enviada!'
=======
Então('recebo a confirmação') do
    #Assert de confirmação
    expect(page).to have_text "Mensagem enviada!"
    take_screenshot('mensagem','mensagem_vendedor')
end

Quando('preencho somente alguns campos:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    user = table.hashes[0]
    lead.fill_form_fail(user)
end
  
Então('não posso enviar a mensagem, pois o botão fica desabilitado') do
    expect(page).to have_button('Enviar mensagem', disabled: false)
    take_screenshot('lead_fail','lead')
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
end

Quando('denuncio um anúncio') do
  # Botão de Denunciar
  click_button 'Denunciar este anúncio'
  expect(page).to have_text 'Denunciar anúncio'
end
  
Quando('preencho o formulario') do
  # Preenchimento dos campos para efetuar a denuncia
  complaint.fill_form
end
  
Entao('exibe mensagem enviada com sucesso') do
<<<<<<< HEAD
  # Asserts de validação
  expect(page).to have_text "Mensagem enviada\ncom sucesso!"
=======
    #Asserts de validação
    expect(page).to have_text "Mensagem enviada\ncom sucesso!"
    take_screenshot('denuncia','denuncias')
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
end
