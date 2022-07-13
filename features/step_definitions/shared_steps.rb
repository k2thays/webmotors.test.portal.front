Dado('que estou na home da webmotors') do
    visit('')
    home_page.verificar_home
    home_page.aceitar_coockies
end
  
Dado('faço a busca por um {string}') do |modelo|
    home_page.pesquisar_veiculo(modelo)
end
