class FooterServicos < SitePrism::Page
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


    def selecionar_link_footer_servicos(menu)
        case menu
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
        end
    end 
end 