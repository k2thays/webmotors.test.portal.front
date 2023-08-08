class MenuNoticias < SitePrism::Page
    element :menu_noticias, :xpath, '//*[@data-qa="header_wm1"]'
    element :link_carros_novos, :xpath, '//*[@data-qa="footer_buy_newCars"]'
    element :link_motos_usadas,:xpath, '//*[@data-qa="footer_buy_usedOrNewMotorbikes"]'
    element :link_motos_novas,:xpath, '//*[@data-qa="footer_buy_newMotorbikes"]'
    element :link_vistoriado,:xpath, '//*[@data-qa="footer_buy_inspected"]'

      
    def acessar_menu_noticias(menu_noticias)
        menu_noticias.hover
        case menu_noticias
        when 'Últimas notícias'
            link_carros_usados.click
        when 'Testes'
            link_carros_novos.click
        when 'Comparativos'
            link_motos_usadas.click
        when 'Videos'
            link_motos_novas.click
        when 'Motos'
            link_vistoriado.click
        when 'Segredos'
            link_vistoriado.click
        when 'Dicas'
            link_vistoriado.click
        when 'Bolso'
            link_vistoriado.click
        end 
        
        alterar_aba
    end

    def alterar_aba
        page.switch_to_window page.windows.last
        page.refresh
      end
    
end
  