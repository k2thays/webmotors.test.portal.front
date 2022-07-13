Quando('que eu pesquise a moto {string}') do |motos|
    home.comprar_motos
    home_page.pesquisar_veiculo(motos)
end
  
Entao('deve retorna uma lista com as motos disponiveis') do
    home_page.validar_card_carros
end