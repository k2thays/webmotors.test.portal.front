Dado('que estou na home da webmotors') do
  visit('')
  home_page.verificar_home
  home_page.aceitar_coockies
end

Dado('faço a busca por um {string}') do |modelo|
  home_page.pesquisar_veiculo(modelo)
end

Entao('sou redirecionado para a página do {string} escolhido') do |menu_vender|
  case menu_vender
  when 'Vender carro'
    expect(page).to have_text 'Anuncie e venda seu carro pelo melhor preço'

  when 'Vender moto'
    expect(page).to have_text 'Anuncie e venda sua moto pelo melhor preço'

  when 'Gerenciar meu anúncio'
    expect(page).to have_text 'Digite o seu'

  when 'Plataforma revendedores'
    expect(page).to have_text "Você no comando do seu negócio."
  end
  take_screenshot('menu_vender', 'menu_vender')
end

Entao('sou redirecionado para a página do {string} escolhido logado') do |menu_vender|
  case menu_vender
  when 'Vender carro'
    expect(page).to have_text 'Vamos começar seu anúncio?'

  when 'Vender moto'
    expect(page).to have_text 'Vamos começar seu anúncio?'

  when 'Gerenciar meu anúncio'
    expect(page).to have_text 'Meus Anúncios'

  when 'Plataforma revendedores'
    expect(page).to have_text "Você no comando do seu negócio."
  end
  take_screenshot('menu_vender', 'menu_vender')
end

