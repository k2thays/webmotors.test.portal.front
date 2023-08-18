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
    expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro?lkid=1006', url: true)

  when 'Vender moto'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-moto?lkid=1007', url: true)

  when 'Gerenciar meu anúncio'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/login/?r=https://hportal.webmotors.com.br/garagem?lkid=1009', url: true)

  when 'Plataforma revendedores'
    expect(page).to have_current_path('https://www.cockpit.com.br/?lkid=1017', url: true)
  end
  take_screenshot('menu_vender', 'menu_vender')
end

Entao('sou redirecionado para a página do {string} escolhido logado') do |menu_vender|
  case menu_vender
  when 'Vender carro'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-carro?lkid=1006', url: true)

  when 'Vender moto'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/vender-moto?lkid=1007', url: true)

  when 'Gerenciar meu anúncio'
    expect(page).to have_current_path('https://hportal.webmotors.com.br/login/?r=https://hportal.webmotors.com.br/garagem?lkid=1009', url: true)

  when 'Plataforma revendedores'
    expect(page).to have_current_path('https://www.cockpit.com.br/?lkid=1017', url: true)
  end
  take_screenshot('menu_vender', 'menu_vender')
end