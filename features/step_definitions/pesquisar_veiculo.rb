Quando('que eu pesquise o veiculo {string}') do |veiculo_desejado|
  home_page.pesquisar_veiculo(veiculo_desejado)
end

Entao('deve retorna uma lista com os veiculos disponiveis') do
  home_page.validar_card_carros
  home_page.carregar_lista_veiculos
  take_screenshot('pesquisar_carro', 'lista_carros')
end

Quando('acessar o detalhe de um dos veiculos') do
  # Remover autocompletar de localização
  location.remove_locator
  expect(page).to have_text 'Novos e Usados'
  seller.choose_car
  home_page.alterar_aba
end

Entao('devo visualizar os detalhes do veiculo') do
  description.validar_detalhes_veiculo
  take_screenshot('detalhes_de_veiculos', 'detalhes')
end

Quando('que eu pesquiso um modelo do tipo {string}') do |modelo|
  home_page.pesquisar_veiculo(modelo)
end

Quando('faço a busca pela região de {string}') do |regiao|
  location.verificar_location
  home_page.carregar_lista_veiculos
  location.fill_form(regiao)
end

Entao('vejo a lista disponível na região de {string}') do |regiao|
  expect(page).to have_text "Honda em #{regiao}/SP"
  take_screenshot('pesquisar_carro', 'lista_carros_localizacao')
end
