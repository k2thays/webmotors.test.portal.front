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
  expect(page).to have_text 'Honda Civic 2.0 Exr 16v Flex 4p Automático Novos e Usados'
  take_screenshot('filtros', 'filtro_carros')
end

Quando('seleciono uma marca e aplico alguns filtros') do
  carfilters.selecionar_marca_carro
  carfilters.preencher_ano
  carfilters.preencher_preco
  #carfilters.selecionar_final_placa
  #carfilters.selecionar_cores
end

Entao('retorna a busca com os filtros') do
  expect(page).to have_text 'Honda Novos e Usados do ano 2015 até 2021'
  take_screenshot('filtros', 'filtros_aplicados_carros')
end
