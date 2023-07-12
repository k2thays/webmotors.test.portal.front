Dado('visito a página do anuncio') do
  visit 'https://hportal.webmotors.com.br/comprar/chevrolet/astra/20-mpfi-cd-8v-gasolina-2p-manual/4-portas/2002-2003/1547406?pos=e1547406a:&np=1'
end   

Quando('preencho o formulário para consulta') do
  # preenchimento do formulário para analise de parcelas
  installment.fill_form_financiamento
end

Quando('decido ver parcelas avisando') do
  # Botão 'Ver Parcelas'
  installment.show_result
end

Entao('devo visualizar as condições oferecidas') do
  expect(page).to have_text("melhores condições")
end

Quando('seleciono um anúncio da página') do
  expect(page).to have_text 'Chevrolet: Carros usados, seminovos e novos | Webmotors'
  favorite.choose_item
  home_page.alterar_aba
  expect(page).to have_text 'Sobre o vendedor'
end

Quando('não preencho todos os campos') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  user = table.hashes[0]
  installment.fill_form_fail_financiamento(user)
end

Entao('o botão fica desabilitado') do
  expect(page).to have_button('Ver Parcelas', disabled: true)
  take_screenshot('financiamento', 'financimento_dados_incompleto')
end

Quando('preencho com um campo inválido') do |table|
  user = table.hashes[0]
  installment.fill_form_fail_financiamento(user)
end 

Entao('a mensagem de erro é exibida {string}') do |string|
  expect(page).to have_text(string)
end
