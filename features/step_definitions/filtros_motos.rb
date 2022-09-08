Quando('entro para ver as ofertas de motos') do
  motofilters.selecionar_comprar_motos
  carfilters.oferta_carros
  carfilters.validar_page_filtros
end

Quando('faço um filtro por marca e modelo') do
  motofilters.selecionar_marca
  motofilters.selecionar_modelo
end

Entao('devo ver a lista com os modelos listados') do
  expect(page).to have_text 'Motos Honda Cg 125 Fan Novas e Usadas'
  take_screenshot('filtros', 'filtro_motos')
end

Quando('seleciono uma marca e filtros') do
  motofilters.selecionar_marca
  motofilters.preencher_ano
  motofilters.preencher_preco
  motofilters.selecionar_cores
end

Entao('deve me retornar uma lista com os filtros aplicados') do
  expect(page).to have_text 'Motos Honda Novas e Usadas ano 2012 até ano 2021'
  take_screenshot('filtros', 'filtro_aplicados_motos')
end
