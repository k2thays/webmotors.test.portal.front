Dado('que estou na home da webmotors') do
<<<<<<< HEAD
  visit('')
  home_page.verificar_home
  home_page.aceitar_coockies
end

Dado('faço a busca por um {string}') do |modelo|
  home_page.pesquisar_veiculo(modelo)
end

Entao('sou redirecionado para a página do {string} escolhido') do |menu_vender|
  case menu_vender
  when 'Vender meu veículo'
    expect(page).to have_text 'Anuncie e venda seu carro pelo melhor preço'
    take_screenshot('menu_vender', 'vender_carro')

  when 'Vender minha moto'
    expect(page).to have_text 'Anuncie e venda sua moto pelo melhor preço'
    take_screenshot('menu_vender', 'vender_moto')

  when 'Autopago'
    expect(page).to have_text 'Segurança para comprar e vender.'
    take_screenshot('menu_vender', 'autopago')

  when 'Gerenciar meu anúncio'
    expect(page).to have_text "Digite o seu\ne-mail e senha"
    take_screenshot('menu_vender', 'gerenciar_anuncio')

  when 'FazTudo'
    expect(page).to have_text 'Quer vender seu carro e não se preocupar com nada?'
    take_screenshot('menu_vender', 'faz_tudo')
  end
=======
    visit('')
    home_page.verificar_home
    home_page.aceitar_coockies
end
  
Dado('faço a busca por um {string}') do |modelo|
    home_page.pesquisar_veiculo(modelo)
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
end
