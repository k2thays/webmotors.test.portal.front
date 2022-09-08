Quando('que eu pesquise o veiculo {string}') do |veiculo_desejado|
  home_page.pesquisar_veiculo(veiculo_desejado)
end

Entao('deve retorna uma lista com os veiculos disponiveis') do
  home_page.validar_card_carros
<<<<<<< HEAD
  home_page.carregar_lista_veiculos
  take_screenshot('pesquisar_carro', 'lista_carros')
end

Quando('acessar o detalhe de um dos veiculos') do
  # Remover autocompletar de localização
  location.remove_locator
  expect(page).to have_text 'Novos e Usados'
=======

  #think time
  sleep 2
  take_screenshot('lista_de_veiculos_disponiveis', 'exemplo_pasta1')
end

Quando('acessar o detalhe de um dos veiculos') do
  #Remover autocompletar de localização
  location.remove_locator
  expect(page).to have_text "Novos e Usados"
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
  seller.choose_car
  home_page.alterar_aba
end

Entao('devo visualizar os detalhes do veiculo') do
  description.validar_detalhes_veiculo
<<<<<<< HEAD
  take_screenshot('detalhes_de_veiculos', 'detalhes')
=======
  take_screenshot('detalhes_de_veiculos', 'exemplo_pasta2')
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
end

Quando('que eu pesquiso um modelo do tipo {string}') do |modelo|
  home_page.pesquisar_veiculo(modelo)
end

Quando('faço a busca pela região de {string}') do |regiao|
  location.verificar_location
<<<<<<< HEAD
  home_page.carregar_lista_veiculos
=======
  #think time
  sleep 3
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
  location.fill_form(regiao)
end

Entao('vejo a lista disponível na região de {string}') do |regiao|
  expect(page).to have_text "Honda em #{regiao}/SP"
<<<<<<< HEAD
  take_screenshot('pesquisar_carro', 'lista_carros_localizacao')
end
=======
  take_screenshot('regiao', 'busca_por_regiao')
end
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
