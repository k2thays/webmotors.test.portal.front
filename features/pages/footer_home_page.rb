class Footer < SitePrism::Page
    #menu_comprar
    element :carros_usados, :xpath, '//*[@data-qa="footer_buy_usedOrNewCars"]'
    element :carros_novos,  :xpath, '//*[@data-qa="footer_buy_newCars"]'
    element :motos_usados, :xpath, '//*[@data-qa="footer_buy_usedOrNewMotorbikes"]'
    element :motos_novas, :xpath, '//*[@data-qa="footer_buy_newMotorbikes"]'
    element :vistoriado, :xpath, '//*[@data-qa="footer_buy_inspected"]'
    #menu_vender
    element :vender_carro, :xpath, '//*[@data-qa="footer_sell_car"]'
    element :vender_moto, :xpath, '//*[@data-qa="footer_sell_bike"]'
    element :gerenciar_anuncio, :xpath, '//*[@data-qa="footer_sell_manage_ad"]'
    element :plataforma_revendedores, :xpath, '//*[@data-qa="footer_sell_dealer_platform"]'
    #menu_servicos
    element :tabela_fipe, :xpath, '//*[@data-qa="footer_services_fipe"]'
    element :financiamento, :xpath, '//*[@data-qa="footer_services_financing"]'
    element :catalogo_0km, :xpath, '//*[@data-qa="footer_services_catalog_0km"]'
    element :vistoriado_servicos, :xpath, '//*[@data-qa="footer_services_inspected"]'
    element :plataforma_revendedor_servico, :xpath, '//*[@data-qa="footer_services_dealer_platform"]'
    element :seguro_veiculo, :xpath, '//*[@data-qa="footer_services_insurance"]'
    element :autoinsights, :xpath, '//*[@data-qa="footer_services_autoinsights"]'
    element :publicidade, :xpath, '//*[@data-qa="footer_services_advertising"]'
    element :comparar_veiculos, :xpath, '//*[@data-qa="footer_services_compare_vehicles"]'
    element :multas_debitos, :xpath, '//*[@data-qa="footer_services_fines"]'
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
    #menu_ajuda
    element :para_voce, :xpath, '//*[@data-qa="footer_help_you"]'
    element :para_sua_loja, :xpath, '//*[@data-qa="footer_help_store"]'
    element :seguranca, :xpath, '//*[@data-qa="footer_help_security"]'
    element :sobre_nos, :xpath, '//*[@data-qa="footer_help_institutional"]'
    element :trabalhe_com_a_gente, :xpath, '//*[@data-qa="footer_help_workWithUs"]'
    element :mapa_site, :xpath, '//*[@data-qa="footer_help_siteMap"]'
    #menu_institucional
    element :canal_etica, :xpath, '//*[@data-qa="footer_institutional_ethic"]'
    element :codigo_conduta, :xpath, '//*[@data-qa="footer_institutional_conductCode"]'
    element :codigo_defesa, :xpath, '//*[@data-qa="footer_institutional_consumerPolicy"]'
    element :gerenciamento_cookies, :xpath, '//*[@data-qa="footer_institutional_cookiesManagement"]'
    element :termos_uso, :xpath, '//*[@data-qa="footer_institutional_privacyPolicy"]'
    element :lgpd, :xpath, '//*[@data-qa="footer_institutional_lgpd"]'



    def selecionar_link_footer(menu)
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
        when 'Plataforma revendedores'
            plataforma_revendedores.click  
        when 'Tabela FIPE'
            tabela_fipe.click  
        when 'Financiamento'
            financiamento.click  
        when 'Catálogo 0km'
            catalogo_0km.click  
        when 'Vistoriado servico'
            vistoriado_servicos.click  
        when 'Plataforma revendedores serviço'
            plataforma_revendedor_servico.click  
        when 'Seguro veículo'
            seguro_veiculo.click  
        when 'Autoinsights'
            autoinsights.click  
        when 'Publicidade'
            publicidade.click  
        when 'Comparar veículos'
            comparar_veiculos.click  
        when 'Multas e Débitos'
            multas_debitos.click  
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
        when 'Canal de ética'
            canal_etica.click  
        when 'Código de conduta Webmotors'
            codigo_conduta.click  
        when 'Código defesa do consumidor'
            codigo_defesa.click  
        when 'Gerenciamento de cookies'
            gerenciamento_cookies.click  
        when 'Termos de Uso e Política de privacidade'
            termos_uso.click  
        when 'LGPD'
            lgpd.click  
        end
    end 
end 