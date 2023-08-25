Quando('quero acessar o menu {string}') do |menu_ajuda|
  home_page.aguardar_elemento_aparecer
  home_page.menu_ajuda
  case menu_ajuda
  when 'Para Você'
    home_page.ajuda_para_voce
    home_page.alterar_aba

  when 'Para a sua Loja'
    home_page.ajuda_para_loja
    home_page.alterar_aba
  
  when 'Segurança'
    home_page.ajuda_seguranca
    home_page.alterar_aba
  end
end

Entao('devo ser direcionado para a página de {string}') do |menu_ajuda|
  case menu_ajuda
  when 'Para Você'
    expect(page).to have_text 'Sobre o que é a sua dúvida?'
    take_screenshot('menu_ajuda', 'ajuda_para_voce')

  when 'Para a sua Loja'
    expect(page).to have_text 'Central Cockpit'
    take_screenshot('menu_ajuda', 'ajuda_para_sua_loja')

  when 'Segurança'
    expect(page).to have_text 'Na Webmotors você pode confiar que terá a melhor experiência pra comprar e vender seu veículo, porque pra gente sua segurança vem em primeiro lugar.'
    take_screenshot('menu_ajuda', 'seguranca')
  end
end
