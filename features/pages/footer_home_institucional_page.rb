class FooterInstitucional < SitePrism::Page
    #menu_institucional
    element :canal_etica, '#footer_institutional_ethic'
    element :codigo_conduta, :xpath, '//*[@data-qa="footer_institutional_conductCode"]'
    element :codigo_defesa, :xpath, '//*[@data-qa="footer_institutional_consumerPolicy"]'
    element :termos_uso, :xpath, '//*[@data-qa="footer_institutional_privacyPolicy"]'
    element :lgpd, :xpath, '//*[@data-qa="footer_institutional_lgpd"]'
    element :fechar_modal_login, :xpath, '//*[@data-qa="login-popover-close-btn"]'



    def selecionar_link_footer_institucional(menu)
        wait_until_fechar_modal_login_visible
        fechar_modal_login.click
        case menu
        when 'Canal de ética'
            canal_etica.click  
        when 'Código de conduta Webmotors'
            codigo_conduta.click  
        when 'Código defesa do consumidor'
            codigo_defesa.click  
        when 'Termos de Uso e Política de privacidade'
            termos_uso.click  
        when 'LGPD'
            lgpd.click  
        end
    end 
end 