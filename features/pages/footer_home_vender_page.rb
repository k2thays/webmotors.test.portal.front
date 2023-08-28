class FooterVender < SitePrism::Page
    #menu_vender
    element :vender_carro, :xpath, '//*[@data-qa="footer_sell_car"]'
    element :vender_moto, :xpath, '//*[@data-qa="footer_sell_bike"]'
    element :gerenciar_anuncio, :xpath, '//*[@data-qa="footer_sell_manage_ad"]'
    element :plataforma_revendedores, :xpath, '//*[@data-qa="footer_sell_dealer_platform"]'


    def selecionar_link_footer_vender(menu)
        case menu    
        when 'Vender carro'
            vender_carro.click
        when 'Vender moto'
            vender_moto.click
        when 'Gerenciar meu anúncio'
            gerenciar_anuncio.click
        when 'Plataforma revendedores'
            plataforma_revendedores.click  

        end 
    end 
end 