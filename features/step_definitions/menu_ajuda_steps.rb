Quando('quero acessar o menu {string}') do |menu_ajuda|
  home_page.menu_ajuda
  case menu_ajuda
  when 'Para Você'
    home_page.ajuda_para_voce
    home_page.alterar_aba

  when 'Para a sua Loja'
    home_page.ajuda_para_loja
    home_page.alterar_aba
  end
end

Entao('devo ser direcionado para a página de {string}') do |menu_ajuda|
  case menu_ajuda
  when 'Para Você'
    expect(page).to have_text 'Boas-vindas à central de ajuda Webmotors.'
    take_screenshot('menu_ajuda', 'ajuda_para_voce')

  when 'Para a sua Loja'
    expect(page).to have_text 'Central de ajuda Cockpit'
    take_screenshot('menu_ajuda', 'ajuda_para_sua_loja')
  end
end
