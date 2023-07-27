Quando('quero acessar o menu de {string}') do |menu_servico|
  home_page.menu_servicos
  home_page.servicos_fipe if menu_servico.eql?('Tabela FIPE')
  home_page.servicos_zerokm if menu_servico.eql?('Catálogo 0km')
  home_page.servicos_seguros if menu_servico.eql?('Seguro veículo')
  home_page.servicos_revendedores if menu_servico.eql?('Plataforma Revendedores')
  home_page.servicos_financiamento if menu_servico.eql?('Financiamento')
  home_page.servicos_vistoriado if menu_servico.eql?('Vistoriado')
  home_page.alterar_aba
end

Entao('devo ser direcionado para a area de {string}') do |menu_servico|
  case menu_servico
  when 'Tabela FIPE'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/tabela-fipe/?lkid=1010', url: true)

  when 'Catálogo 0km'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/catalogo?lkid=1012', url: true)

  when 'Seguro veículo'
    expect(page).to have_current_path('https://www.autocompara.com.br/?lkid=1015', url: true)
    # vai mudar para https://www.autocompara.com.br/?utm_source=webmotors&utm_medium=site&utm_campaign=Menu_Servicos_Seguro_Veiculo

  when 'Plataforma Revendedores'
    expect(page).to have_current_path('https://www.cockpit.com.br/?lkid=1017', url: true)

  when 'Financiamento'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/financiamento?lkid=1011', url: true)

  when 'Vistoriado'
    expect(page).to have_current_path('https://www.cockpit.com.br/solutions/vistoriado?lkid=1577', url: true)
  end
  take_screenshot('menu_servicos', 'sub-menus')
end
