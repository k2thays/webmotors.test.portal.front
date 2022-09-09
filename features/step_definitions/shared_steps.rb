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
  when 'Vender meu veículo'
    expect(page).to have_text 'Anuncie e venda seu carro pelo melhor preço'

  when 'Vender minha moto'
    expect(page).to have_text 'Anuncie e venda sua moto pelo melhor preço'

  when 'Autopago'
    expect(page).to have_text 'Segurança para comprar e vender.'

  when 'Gerenciar meu anúncio'
    expect(page).to have_text "Digite o seu\ne-mail e senha"

  when 'FazTudo'
    expect(page).to have_text 'Quer vender seu carro e não se preocupar com nada?'
  end
  take_screenshot('menu_vender')
end
