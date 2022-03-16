Dado('faço a busca por um {string}') do |modelo|
    home_page.pesquisar_veiculo(modelo)
end
  
Quando('envio mensagem do lead') do
    home_page.alterar_aba
    #Preenchimento do formulário para enviar mensagem ao vendedor
    lead.fill_form
end
  
Então('recebo a confirmação') do
    #Assert de confirmação
    expect(page).to have_text "Mensagem enviada!"
end

Quando('denuncio um anúncio') do
    #Botão de Denunciar
    click_button "Denunciar este anúncio"
    expect(page).to have_text "Denunciar anúncio"
end
  
Quando('preencho o formulario') do
    #Preenchimento dos campos para efetuar a denuncia
    complaint.fill_form
end
  
Entao('exibe mensagem enviada com sucesso') do
    #Asserts de validação
    expect(page).to have_text "Mensagem enviada\ncom sucesso!"
end