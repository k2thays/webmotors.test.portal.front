Quando('quero acessar o menu de {string}') do |menu_servico|
  home_page.menu_servicos
  home_page.servicos_fipe if menu_servico.eql?('Tabela FIPE')
  home_page.servicos_zerokm if menu_servico.eql?('Catálogo 0km')
  home_page.servicos_seguros if menu_servico.eql?('Seguro veículo')
  home_page.servicos_revendedores if menu_servico.eql?('Plataforma Revendedores')
  home_page.servicos_financiamento if menu_servico.eql?('Financiamento')
  home_page.servicos_noticiaswm if menu_servico.eql?('Compra certificada')
  home_page.alterar_aba
end

Entao('devo ser direcionado para a area de {string}') do |menu_servico|
  case menu_servico
  when 'Tabela FIPE'
    expect(page).to have_text 'Tabela Fipe e Webmotors'

  when 'Catálogo 0km'
    expect(page).to have_text 'Tudo que você precisa para escolher o seu carro 0KM'

  when 'Seguro veículo'
    expect(page).to have_text 'Procurando por seguro auto ou moto?'

  when 'Plataforma Revendedores'
    expect(page).to have_text 'Você no comando do seu negócio.'

  when 'Financiamento'
    expect(page).to have_text 'As melhores condições para comprar seu carro estão aqui'

  when 'Compra certificada'
    expect(page).to have_css '.row.justify-content-between'
  end
  take_screenshot('menu_servicos', 'servicos')
end
