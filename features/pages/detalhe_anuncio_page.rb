class DetalheAnuncio < SitePrism::Page
    element :link_saiba_mais, :xpath, '//*[@data-qa="certified_purchase_know_more"]' 
    element :button_360, :xpath, '//*[@data-qa="car360-open-button"]'
    element :imagem_360, '#spincar-view'
    element :button_fechar_360, :xpath, '//*[@data-qa="car360-close-button"]'
end 