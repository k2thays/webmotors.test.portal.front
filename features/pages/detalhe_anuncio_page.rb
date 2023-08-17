class DetalheAnuncio < SitePrism::Page
    element :link_saiba_mais, :xpath, '//*[@data-qa="certified_purchase_know_more"]' 
    element :button_360, '.spin__cta._5PJ65'
    element :button_fechar_360, :xpath, '//*[@data-qa="car360-close-button"]'
    element :btn_ver_telefone, '#CardSellerPhoneViewPrivate'
    element :button_ver_laudo, :xpath, '//*[@data-qa="btn_certified_purchase"]'
end 