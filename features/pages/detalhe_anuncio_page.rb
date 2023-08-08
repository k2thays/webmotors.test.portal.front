class DetalheAnuncio < SitePrism::Page
    element :link_saiba_mais, :xpath, '//*[@data-qa="certified_purchase_know_more"]' 
    element :button_360, '.spin__cta._5PJ65'
    #element :imagem_360, '#spincar-view'
    element :button_fechar_360, '.modal__close._wCKN4'
    element :btn_ver_telefone, '#CardSellerPhoneViewPrivate'
    element :button_ver_laudo, :xpath, '//*[@data-qa="btn_certified_purchase"]'

    def validar_visualizar_telefone
        btn_ver_telefone.visible?
    end   
end 