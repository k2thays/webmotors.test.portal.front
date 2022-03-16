Dado('que estou na home da webmotors') do
  visit('')
  home_page.verificar_home
  home_page.aceitar_coockies
end

Quando('que eu pesquise o veiculo {string}') do |veiculo_desejado|
  home_page.pesquisar_veiculo(veiculo_desejado)
end

Entao('deve retorna uma lista com os veiculos disponiveis') do
  home_page.validar_retorno_busca
  take_screenshot('lista_de_veiculos_disponiveis', 'exemplo_pasta1')
end

Quando('acessar o detalhe de um dos veiculos') do
  home_page.acessar_detalhes_veiculo
end

Entao('devo visualizar os detalhes do veiculo') do
  description.validar_detalhes_veiculo
  take_screenshot('lista_de_veiculos', 'exemplo_pasta2')
end
