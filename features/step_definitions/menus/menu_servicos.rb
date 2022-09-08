Quando('quero acessar o menu de {string}') do |menu_servico|
  home_page.menu_servicos
  home_page.servicos_fipe if menu_servico.eql?('Tabela FIPE')
  home_page.servicos_zerokm if menu_servico.eql?('Catálogo 0km')
  home_page.servicos_seguros if menu_servico.eql?('Seguro')
  home_page.servicos_revendedores if menu_servico.eql?('Plataforma Revendedores')
  home_page.servicos_financiamento if menu_servico.eql?('Financiamento')
  home_page.servicos_noticiaswm if menu_servico.eql?('Notícias WM1')
  home_page.servicos_compra_segura if menu_servico.eql?('Autopago')
  home_page.servicos_faztudo if menu_servico.eql?('FazTudo')
  home_page.alterar_aba
end

Entao('devo ser direcionado para a area de {string}') do |menu_servico|
  case menu_servico
  when 'Tabela FIPE'
    expect(page).to have_text 'Tabela Fipe e Webmotors'
    take_screenshot('menu_servicos', 'tabela_fipe')

  when 'Catálogo 0km'
    expect(page).to have_text 'Tudo que você precisa para escolher o seu carro 0KM'
    take_screenshot('menu_servicos', 'catalogo')

  when 'Seguro'
    expect(page).to have_text 'Procurando por seguro auto ou moto?'
    take_screenshot('menu_servicos', 'seguro')

  when 'Plataforma Revendedores'
    expect(page).to have_text 'Você no comando do seu negócio.'
    take_screenshot('menu_servicos', 'plataforma_revendedores')

  when 'Financiamento'
    expect(page).to have_text 'As melhores condições para comprar seu carro estão aqui'
    take_screenshot('menu_servicos', 'financiamento')

  when 'Notícias WM1'
    expect(page).to have_text 'O canal de notícias da Webmotors'
    take_screenshot('menu_servicos', 'noticias_wm1')

  when 'Autopago'
    expect(page).to have_text 'Segurança para comprar e vender.'
    take_screenshot('menu_servicos', 'autopago')

  when 'FazTudo'
    expect(page).to have_text ' pra você não fazer nada, só vender.'
    take_screenshot('menu_servicos', 'faztudo')
  end
end
