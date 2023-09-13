Quando('entro para ver as ofertas de motos') do
  motofilters.selecionar_comprar_motos
  carfilters.oferta_carros
  #carfilters.validar_page_filtros
end

Quando('faço um filtro por marca e modelo') do
  motofilters.selecionar_marca
  motofilters.selecionar_modelo
end

Entao('devo ver a lista com os modelos listados') do
  expect(page).to have_text 'Bmw F 700 Gs: Motos usadas, seminovas e novas | Webmotors'
  take_screenshot('filtros', 'filtro_motos')
end

Quando('seleciono uma marca e filtros') do
  motofilters.selecionar_marca
  motofilters.preencher_ano
  motofilters.preencher_preco
end

Entao('deve me retornar uma lista com os filtros aplicados') do
  expect(page).to have_text 'Motos Bmw usadas, seminovas e novas ano 2012 até ano 2021'
  take_screenshot('filtros', 'filtro_aplicados_motos')
end

E('valido se a página foi recarregada sem os filtros aplicados para moto') do 
  expect(page).to have_text 'Motos usadas, seminovas e novas em todo o Brasil | Webmotors'
end   

