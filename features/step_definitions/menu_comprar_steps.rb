Quando('acessar o {string} superior para comprar') do |menu_comprar|
  home_page.menu_comprar
  home_page.menu_carros_usados if menu_comprar.eql?('Carros usados')
  home_page.menu_carros_novos if menu_comprar.eql?('Carros novos')
  home_page.menu_motos_usadas if menu_comprar.eql?('Motos usadas')
  home_page.menu_motos_novas if menu_comprar.eql?('Motos novas')
  home_page.menu_vistoriado if menu_comprar.eql?('Vistoriado')
  home_page.alterar_aba
end

Entao('deve retorna uma lista com os veiculos disponiveis {string}') do |menu_comprar|
  case menu_comprar
  when 'Carros usados'
    expect(page).to have_text 'Carros usados e seminovos em todo o Brasil | Webmotors'

  when 'Carros novos'
    expect(page).to have_text 'Carros novos e seminovos em todo o Brasil | Webmotors'
  
  when 'Motos usadas'
    expect(page).to have_text 'Motos usadas e seminovas em todo o Brasil | Webmotors'

  when 'Motos novas'
    expect(page).to have_text 'Motos novas e seminovas em todo o Brasil | Webmotors'

  when 'Vistoriado'
    expect(page).to have_text 'Carros usados, seminovos e novos em todo o Brasil | Webmotors'
  end
  home_page.validar_card_carros
  take_screenshot('menu_comprar', 'menus')
end

Entao('deve retorna uma lista com os veiculos disponiveis de vistoriado') do
  home_page.validar_vistoriado
end