Quando('desejo agendar uma video chamada') do
  js_script = 'window.localStorage.setItem(\'wbShowModalFinancingDA\', \'26027319\');'
  page.execute_script(js_script)
  visit 'https://hportal.webmotors.com.br/comprar/spyker/c8-laviolette/42-coupe-v8-gasolina-2p-manual/3-portas/2010/26027319?pos=a26027319g:&np=1'
  description.validar_detalhes_veiculo
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
