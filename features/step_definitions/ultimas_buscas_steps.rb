Dado('que eu pesquiso um modelo de veiculo {string}') do |modelo|
  latestsearch.pesquisar_carro(modelo)
end  

Quando('retorno a página inicial e seleciono a ultima busca realizada') do
  location.remove_locator
  latestsearch.voltar_homepage
  latestsearch.selecionar_ultima_busca
end

Entao('vejo a lista de veiculos da ultima busca') do
  home_page.carregar_lista_veiculos
  take_screenshot('ultimas_buscas', 'ultima_busca_lista')
end
