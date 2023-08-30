class LojasEstoque < SitePrism::Page
    element :card01, :xpath, '//*[@data-qa="store_advertisement-1"]'
    element :card02, :xpath, '//*[@data-qa="store_advertisement-2"]'
    element :card03, :xpath, '//*[@data-qa="store_advertisement-3"]'
    element :card04, :xpath, '//*[@data-qa="store_advertisement-4"]'
    element :card05, :xpath, '//*[@data-qa="store_advertisement-5"]'
    element :input_localizacao, :xpath, '//*[@data-qa="input_location_auto_complete"]'
    elements :auto_complete_localizacao, '.AutoComplete-result-name'
    element :logo_webmotors, '._IVZOj'
    
    def selecionar_link_lojas_estoque(card)
        wait_until_card01_visible
        case card
        when 'card01'
            card01.click
        when 'card02'
            card02.click
        when 'card03'
            card03.click
        when 'card04'
            card04.click
        when 'card05'
            card05.click
        end
    end

    def inserir_localizacao
        input_localizacao.send_keys "Campinas"
        auto_complete_localizacao[0].click
    end

    def validacao_lista_rb
        wait_until_input_localizacao_visible
        input_localizacao.visible?
    end
end