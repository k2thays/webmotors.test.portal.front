Quando('quero acessar o menu de {string}') do |menu_servico|
  if menu_servico.eql?('Tabela FIPE')
    home_page.menu_servicos
    home_page.servicos_fipe
    home_page.alterar_aba

  elsif menu_servico.eql?('Catálogo 0km')
    home_page.menu_servicos
    home_page.servicos_zerokm
    home_page.alterar_aba

  elsif menu_servico.eql?('Seguro')
    home_page.menu_servicos
    home_page.servicos_seguros
    home_page.alterar_aba
      
  elsif menu_servico.eql?('Plataforma Revendedores')
    home_page.menu_servicos
    home_page.servicos_revendedores
    home_page.alterar_aba
      
  elsif menu_servico.eql?('Financiamento')
    home_page.menu_servicos
    home_page.servicos_financiamento
    home_page.alterar_aba
      
  elsif menu_servico.eql?('Notícias WM1')
    home_page.menu_servicos
    home_page.servicos_noticiaswm
    home_page.alterar_aba
      
  elsif menu_servico.eql?('Autopago')
    home_page.menu_servicos
    home_page.servicos_compra_segura
    home_page.alterar_aba
      
  elsif menu_servico.eql?('FazTudo')
    home_page.menu_servicos
    home_page.servicos_faztudo
    home_page.alterar_aba
  end
end
  
Entao('devo ser direcionado para a area de {string}') do |menu_servico|
  if menu_servico.eql?('Tabela FIPE')
    expect(page).to have_text 'Tabela Fipe e Webmotors'

  elsif menu_servico.eql?('Catálogo 0km')
    expect(page).to have_text 'Tudo que você precisa para escolher o seu carro 0KM'
      
  elsif menu_servico.eql?('Seguro')
    expect(page).to have_text 'Procurando por seguro auto ou moto?'
      
  elsif menu_servico.eql?('Plataforma Revendedores')
    expect(page).to have_text 'Você no comando do seu negócio.'
      
  elsif menu_servico.eql?('Financiamento')
    expect(page).to have_text 'As melhores condições para comprar seu carro estão aqui'
      
  elsif menu_servico.eql?('Notícias WM1')
    expect(page).to have_text 'O canal de notícias da Webmotors'
      
  elsif menu_servico.eql?('Autopago')
    expect(page).to have_text 'Segurança para comprar e vender.'
      
  elsif menu_servico.eql?('FazTudo')
    expect(page).to have_text ' pra você não fazer nada, só vender.'
  end
end
