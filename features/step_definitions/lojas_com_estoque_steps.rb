Dado('insiro uma localização na tela de resultado de busca') do
    click_link 'Ver ofertas'
    lojasEstoque.inserir_localizacao
end

Dado('retorno para a home') do
    lojasEstoque.logo_webmotors.click
end

Quando('seleciono um dos {string} da régua de lojas com estoque') do |card|
    carfilters.scroll_to_element(produto.card_vender_carro)
    carfilters.scroll_to_element(lojasEstoque.logo_webmotors)
    carfilters.scroll_to_element(produto.card_vender_carro)
    lojasEstoque.selecionar_link_lojas_estoque(card)
end

Então('valido se direcionamento está correto para o card de lojas com estoque') do
    home_page.alterar_aba
    lojasEstoque.validacao_lista_rb
end