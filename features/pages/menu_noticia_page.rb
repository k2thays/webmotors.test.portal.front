class NoticiasWM1 < SitePrism::Page
    element :menu_noticiasWM1,  :xpath, '//*[@data-qa="header_wm1"]'
    element :menu_noticia_portal,  :xpath, '//*[@data-qa="header_wm1_portal"]'
    element :menu_noticia_ultimas_noticias,  :xpath, '//*[@data-qa="header_wm1_lastnews"]'
    element :menu_noticia_testes,  :xpath, '//*[@data-qa="header_wm1_tests"]'
    element :menu_noticia_comparativos,  :xpath, '//*[@data-qa="header_wm1_comparativos"]'
    element :menu_noticia_videos,  :xpath, '//*[@data-qa="header_wm1_videos"]'
    element :menu_noticia_motos,  :xpath, '//*[@data-qa="header_wm1_bikes"]'
    element :menu_noticia_segredos,  :xpath, '//*[@data-qa="header_wm1_secrets"]'
    element :menu_noticia_dicas,  :xpath, '//*[@data-qa="header_wm1_tips"]'
    element :menu_noticia_bolso,  :xpath, '//*[@data-qa="header_wm1_pocket"]'

  
    def selecionar_menu_noticias(menu_noticia)
        menu_noticiasWM1.click
        case menu_noticia
        when 'Portal'
            menu_noticia_portal.click
        when 'Últimas notícias'
            menu_noticia_ultimas_noticias.click
        when 'Testes'
            menu_noticia_testes.click
        when 'Comparativos'
            menu_noticia_comparativos.click
        when 'Videos'
            menu_noticia_videos.click
        when 'Motos'
            menu_noticia_motos.click
        when 'Segredos'
            menu_noticia_segredos.click
        when 'Dicas'
            menu_noticia_dicas.click
        when 'Bolso'
            menu_noticia_bolso.click  
        end
    end 
end     
  
  