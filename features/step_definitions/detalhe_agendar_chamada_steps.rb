Quando('desejo agendar uma video chamada') do
  # Acessando carros pelo menu superior
  seller.select_upper_menu

  # Escolhendo um item
  home_page.alterar_aba
  expect(page).to have_text 'Carros Usados e Seminovos em Todo o Brasil'
  seller.choose_car
  # Asserts de validação
  home_page.alterar_aba
  description.validar_detalhes_veiculo
  # Botão de videochamada
  click_button 'Agendar videochamada'
  expect(page).to have_text 'Informe os seus dados para agendar a videochamada'
end

Quando('informo o {string}, {string} e {string} para agendar') do |nome, email, phone|
  # Preenchimento dos campos
  schedule.fill_form(nome, email, phone)
end

Quando('seleciono período') do
  # Escolhendo Dia e Hora
  schedule.select_date
end

Entao('exibe mensagem de que foi agendado') do
  click_button 'Continuar'
  # Asserts de validação
  expect(page).to have_text 'Agendado'
  expect(page).to have_text 'Agendamento:'
  take_screenshot('agendado', 'agendamento_confirmado')
end

Entao('fico impossibilitado de continuar') do
  # Validação do botão indisponível
  expect(page).to have_button('Continuar', disabled: true)
  take_screenshot('nao_agendado', 'agendamento_falha')
end
