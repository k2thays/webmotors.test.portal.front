class Carros0km < SitePrism::Page
    element :card_renault, :xpath, '//*[@data-qa="car_advertisement-1"]'
    element :card_nissan, :xpath, '//*[@data-qa="car_advertisement-2"]'
    element :card_toyota, :xpath, '//*[@data-qa="car_advertisement-3"]'
    element :card_gwm, :xpath, '//*[@data-qa="car_advertisement-4"]'
    element :card_ford, :xpath, '//*[@data-qa="car_advertisement-5"]'

    def selecionar_link_0km(link)
        case link
        when 'renault'
            card_renault.click
        when 'nissan'
            card_nissan.click
        when 'toyota'
            card_toyota.click
        when 'gwm'
            card_gwm.click
        when 'ford'
            card_ford.click
        end
    end
end