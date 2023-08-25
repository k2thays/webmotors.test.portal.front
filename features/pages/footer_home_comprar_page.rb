class FooterComprar < SitePrism::Page
    #menu_comprar
    element :carros_usados, :xpath, '//*[@data-qa="footer_buy_usedOrNewCars"]'
    element :carros_novos,  :xpath, '//*[@data-qa="footer_buy_newCars"]'
    element :motos_usados, :xpath, '//*[@data-qa="footer_buy_usedOrNewMotorbikes"]'
    element :motos_novas, :xpath, '//*[@data-qa="footer_buy_newMotorbikes"]'
    element :vistoriado, :xpath, '//*[@data-qa="footer_buy_inspected"]'
    element :gerenciamento_cookies, :xpath, '//*[@data-qa="footer_institutional_cookiesManagement"]'
    element :vender_carro, :xpath, '//*[@data-qa="footer_sell_car"]'
    element :vender_moto, :xpath, '//*[@data-qa="footer_sell_bike"]'
    element :gerenciar_anuncio, :xpath, '//*[@data-qa="footer_sell_manage_ad"]'
    element :footer_rb,  :xpath, '//*[@data-qa="toggle_footer"]'



    def selecionar_link_footer_comprar(menu)
        case menu
        when 'Carros usados'
            carros_usados.click
        when 'Carros novos'
            carros_novos.click
        when 'Motos usadas'
            motos_usados.click
        when 'Motos novas'
            motos_novas.click
        when 'Vistoriado'
            vistoriado.click     
        when 'Vender carro'
            vender_carro.click
        when 'Vender moto'
            vender_moto.click
        when 'Gerenciar meu anúncio'
            gerenciar_anuncio.click
        end 
    end
end      