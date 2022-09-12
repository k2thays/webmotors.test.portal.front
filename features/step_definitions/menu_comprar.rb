Quando('quero acessar o {string} superior para comprar') do |menu_comprar|
  if menu_comprar.eql?('Carros Usados e Seminovos')
    home_page.menu_comprar
    home_page.menu_carros_novos_usados
    home_page.alterar_aba
      
  elsif menu_comprar.eql?('Carros Novos')
    home_page.menu_comprar
    home_page.menu_carros_novos
    home_page.alterar_aba
      
  elsif menu_comprar.eql?('Motos Usadas e seminovas')
    home_page.menu_comprar
    home_page.menu_motos_novas_usadas
    home_page.alterar_aba

  elsif menu_comprar.eql?('Motos Novas')
    home_page.menu_comprar
    home_page.menu_motos_novas
    home_page.alterar_aba
      
  elsif menu_comprar.eql?('Busca Avançada')
    home_page.menu_comprar
    home_page.menu_busca_avancada
    home_page.alterar_aba
      
  elsif menu_comprar.eql?('Autopago')
    home_page.menu_comprar
    home_page.menu_compra_segura
    home_page.alterar_aba
  end
end

Entao('deve retorna uma lista com os veiculos disponiveis {string}') do |menu_comprar|
  if menu_comprar.eql?('Autopago')
    expect(page).to have_text 'Segurança para comprar e vender.'

  else
    home_page.validar_card_carros
  end
end
