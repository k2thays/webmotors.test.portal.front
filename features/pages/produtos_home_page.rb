class ProdutosHome < SitePrism::Page
    element :card_fiananciamento, :xpath, '//*[@data-qa="icon_productsweb_financing"]'
    element :card_vender_carro, :xpath, '//*[@data-qa="icon_productsweb_vehiclesale"]'
    element :card_catalogo0km, :xpath, '//*[@data-qa="icon_productsweb_catalog"]'
    element :card_seguro_veiculo, :xpath, '//*[@data-qa="icon_productsweb_insurance"]'
    element :card_tabela_fipe, :xpath, '//*[@data-qa="icon_productsweb_tablefipe"]'
    element :card_noticiaswm1, :xpath, '//*[@data-qa="icon_productsweb_wm1news"]'

    def selecionar_produto(produto)
        case produto
        when 'Financiamento'
            card_fiananciamento.click  
        when 'Vender Carro'
            card_vender_carro.click  
        when 'Catálogo 0km'
            card_catalogo0km.click  
        when 'Seguro Veículo'
            card_seguro_veiculo.click  
        when 'Tabela FIPE'
            card_tabela_fipe.click  
        when 'Notícias WM1'
            card_noticiaswm1.click  
        end 
    end         
end
  