Quando('preencho o formulário para consulta') do
  # preenchimento do formulário para analise de parcelas
  installment.fill_form
end
  
Quando('decido ver parcelas avisando') do
  # Botão 'Ver Parcelas'
  installment.show_result
end

Quando('decido não avisar') do
  # Botão 'Ver Parcelas'
  installment.show_result
end
  
Entao('deve #VERIFICAR RESULTADO DO FINANCIMANETO EM HOMOLOGAÇÃO') do
    
end

Quando('não preencho todos os campos') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  user = table.hashes[0]
  installment.fill_form_fail(user)
end

Entao('o botão fica desabilitado') do
  expect(page).to have_button('Ver Parcelas', disabled: true)
  take_screenshot('financimento_falha', 'financiamento')
end
