class FooterNoticias < SitePrism::Page
    #menu_noticiasWM1
    element :portal, :xpath, '//*[@data-qa="footer_wm1_portal"]'
    element :ultimas_noticias, :xpath, '//*[@data-qa="footer_wm1_lastnews"]'
    element :testes, :xpath, '//*[@data-qa="footer_wm1_tests"]'
    element :comparativos, :xpath, '//*[@data-qa="footer_wm1_comparativos"]'
    element :videos, :xpath, '//*[@data-qa="footer_wm1_videos"]'
    element :motos, :xpath, '//*[@data-qa="footer_wm1_bikes"]'
    element :segredos, :xpath, '//*[@data-qa="footer_wm1_secrets"]'
    element :dicas, :xpath, '//*[@data-qa="footer_wm1_tips"]'
    element :bolso, :xpath, '//*[@data-qa="footer_wm1_pocket"]'


    def selecionar_link_footer_noticias(menu)
        case menu
        when 'Portal'
            portal.click  
        when 'Últimas notícias'
            ultimas_noticias.click  
        when 'Testes'
            testes.click  
        when 'Comparativos'
            comparativos.click  
        when 'Vídeos'
            videos.click  
        when 'Motos'
            motos.click  
        when 'Segredos'
            segredos.click  
        when 'Dicas'
            dicas.click  
        when 'Bolso'
            bolso.click  
        when 'Para você'
        end     
    end 
end 