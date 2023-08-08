 class Footer < SitePrism::Page
    element :link_carros_usados, :xpath, '//*[@data-qa="footer_buy_usedOrNewCars"]'
    element :link_carros_novos, :xpath, '//*[@data-qa="footer_buy_newCars"]'
    element :link_motos_usadas,:xpath, '//*[@data-qa="footer_buy_usedOrNewMotorbikes"]'
    element :link_motos_novas,:xpath, '//*[@data-qa="footer_buy_newMotorbikes"]'
    element :link_vistoriado,:xpath, '//*[@data-qa="footer_buy_inspected"]'

      
    def acessar_link_footer(link_footer)
        case link_footer
        when 'Carros usados'
            link_carros_usados.click
        when 'Carros novos'
            link_carros_novos.click
        when 'Motos usadas'
            link_motos_usadas.click
        when 'Motos novas'
            link_motos_novas.click
        when 'Vistoriado'
            link_vistoriado.click
        end 
        alterar_aba
    end

    def alterar_aba
        page.switch_to_window page.windows.last
        page.refresh
      end
    
end
  