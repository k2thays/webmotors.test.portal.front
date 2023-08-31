class FooterAjuda < SitePrism::Page
    #menu_ajuda
    element :para_voce, :xpath, '//*[@data-qa="footer_help_you"]'
    element :para_sua_loja, :xpath, '//*[@data-qa="footer_help_store"]'
    element :seguranca, :xpath, '//*[@data-qa="footer_help_security"]'
    element :sobre_nos, :xpath, '//*[@data-qa="footer_help_institutional"]'
    element :trabalhe_com_a_gente, :xpath, '//*[@data-qa="footer_help_workWithUs"]'
    element :mapa_site, :xpath, '//*[@data-qa="footer_help_siteMap"]'
    element :aceitar_cookies_rb, :xpath, '//*[@data-qa="btn_understoodCookieWarn"]' 


    def selecionar_link_footer_ajuda(menu)
        case menu
        when 'Para você'
            para_voce.click  
        when 'Para a sua loja'
            para_sua_loja.click  
        when 'Segurança'
            seguranca.click  
        when 'Sobre nós'
            sobre_nos.click  
        when 'Trabalhe com a gente'
            trabalhe_com_a_gente.click  
        when 'Mapa do site'
            mapa_site.click  
        end
    end 
end 