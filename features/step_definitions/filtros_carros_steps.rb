Quando('entro para ver as ofertas') do
  carfilters.oferta_carros
  carfilters.validar_page_filtros
end

Quando('faço um filtro por, marca, modelo e versão') do
  carfilters.selecionar_marca_carro
  carfilters.selecionar_modelo_carro
  carfilters.selecionar_versao
end

Entao('devo ver a lista com filtros aplicados') do
  expect(page).to have_text 'Chevrolet Celta 1.0 Mpfi Super 8v Gasolina 2p Manual Novos e Usados'
  take_screenshot('filtros', 'filtro_carros')
end

Quando('seleciono uma marca e aplico alguns filtros') do
  carfilters.selecionar_marca_carro
  carfilters.preencher_ano
  carfilters.preencher_preco
end

Entao('retorna a busca com os filtros') do
  expect(page).to have_text 'Chevrolet Novos e Usados do ano 2005 até 2021'
  take_screenshot('filtros', 'filtros_aplicados_carros')
end
