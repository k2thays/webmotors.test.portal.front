Quando('que eu pesquise a moto {string}') do |motos|
    home_page.comprar_motos
    home_page.pesquisar_veiculo(motos)
end

Entao('deve retorna uma lista com as motos disponiveis') do
    home_page.validar_card_carros
end

Quando('que eu pesquiso um modelo da marca {string}') do |motos|
    home_page.comprar_motos
    home_page.pesquisar_veiculo(motos)
end
  
Entao('vejo a lista de motos disponível na região de {string}') do |regiao|
    expect(page).to have_text "Motos Yamaha Novas e Usadas em #{regiao}/SP"
end