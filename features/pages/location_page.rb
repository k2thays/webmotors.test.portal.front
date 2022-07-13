class Location < SitePrism::Page
    element :validacao, ".Filters__container__group:nth-child(1) > .Filters__container__group__title"
    element :input_location, "#locationAutoComplete"
    element :select_result, ".AutoComplete-result:nth-child(2) > .AutoComplete-result-name"
    element :close_locator, ".AutoComplete__icon"

    def verificar_location
        validacao.visible?    
    end

    def fill_form(location)
        input_location.set location
        select_result.click
    end
    
    def remove_locator
        if has_close_locator?(wait: 2)
        close_locator.click
        end
    end
end