Quando('desejo agendar uma video chamada') do
  js_script = 'window.localStorage.setItem(\'wbShowModalFinancingDA\', \'26026425\');'
  page.execute_script(js_script)
  description.validar_detalhes_veiculo
  click_button 'Agendar videochamada'
  expect(page).to have_text 'Informe os seus dados para agendar a videochamada'
end

Quando('informo o {string}, {string} e {string} para agendar') do |nome, email, phone|
  schedule.fill_form(nome, email, phone)
end

Quando('seleciono período') do
  home_page.aceitar_coockies
  schedule.select_date
end

Entao('exibe mensagem de que foi agendado') do
  click_button 'Continuar'
  expect(page).to have_text 'Agendado'
  expect(page).to have_text 'Agendamento:'
  take_screenshot('agendado', 'agendamento_confirmado')
end

Entao('fico impossibilitado de continuar') do
  expect(page).to have_button('Continuar', disabled: true)
  take_screenshot('nao_agendado', 'agendamento_falha')
end
