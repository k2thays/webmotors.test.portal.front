Quando('entro para ver as ofertas') do
  carfilters.oferta_carros
  carfilters.validar_page_filtros
end

Quando('faço um filtro por, marca, modelo e versão') do
  carfilters.selecionar_marca_carro
  carfilters.selecionar_modelo_carro
end

Entao('devo ver a lista com filtros aplicados') do
  expect(page).to have_text 'Chevrolet Celta: Carros usados, seminovos e novos | Webmotors'
  take_screenshot('filtros', 'filtro_carros')
end

Quando('seleciono uma marca e aplico alguns filtros') do
  carfilters.selecionar_marca_carro
  carfilters.preencher_ano
  carfilters.preencher_preco
end

Entao('retorna a busca com os filtros') do
  expect(page).to have_text 'Chevrolet usados, seminovos e novos ano 2005 até ano 2021'
  take_screenshot('filtros', 'filtros_aplicados_carros')
end

E('logo em seguida limpo os filtros') do 
  carfilters.limpar_filtro.click
end   

E('valido se a página foi recarregada sem os filtros aplicados') do 
  expect(page).to have_text 'Carros usados, seminovos e novos em todo o Brasil | Webmotors'
end   

