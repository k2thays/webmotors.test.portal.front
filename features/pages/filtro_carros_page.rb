class CarFilters < SitePrism::Page
    element :click_offerts, ".Button--red-home"
    element :upper_tittle, ".title-search"
    element :filter_validate, ".sc-jhAzac:nth-child(2) > .sc-fMiknA"
    element :brand_selector, ".CardMake:nth-child(4) > .CardMake__name-make"
    element :all_model_selector, ".Filters__line--gray"
    element :model_select, :xpath, "//a[contains(text(),'CIVIC')]"
    element :version_select, :xpath, "//a[contains(text(),'2.0 EXR 16V FLEX 4P AUTOMÁTICO')]"
    element :from_year_field, :xpath, "//input[@name='anode']"
    element :to_year_field, :xpath, "//input[@name='anoate']"
    element :from_pricer, :xpath, "//input[@name='precode']"
    element :to_pricer, :xpath, "//input[@name='precoate']"

    #filtros
    element :color_select, ".Filters__container__group:nth-child(16) > .Filters__line"
    element :slide_close, ".SlideLeft--opened .Filters__back"

    #checkbox
    element :color_white, ".SlideLeft--opened .Form__InputRow:nth-child(5) > .Checkbox"
    element :color_black, ".SlideLeft--opened .Form__InputRow:nth-child(13) > .Checkbox"
    element :license_plate, ".Filters__container__group:nth-child(13) > .Form__InputRow:nth-child(2) > .Checkbox"
    
    

    def oferta_carros
        click_offerts.click
    end

    def validar_page_filtros
        upper_tittle.visible?
        filter_validate.visible?
    end

    def selecionar_marca
        wait_until_brand_selector_visible
        brand_selector.click
    end
    
    def selecionar_modelo
        wait_until_all_model_selector_visible
        all_model_selector.click
        if wait_until_model_select_visible
            model_select.click
            page.refresh
        end
    end
    
    def selecionar_versao
        wait_until_all_model_selector_visible
        all_model_selector.click
        wait_until_version_select_visible
        version_select.click
    end

    def preencher_ano
        from_year_field.set "2017"
        to_year_field.set "2021"
    end

    def preencher_preco
        from_pricer.set "90000"
        to_pricer.set "130000"
    end

    def selecionar_final_placa
        license_plate.click
    end

    def selecionar_cores
        color_select.click
        color_black.click
        color_white.click
        slide_close.click
    end
end