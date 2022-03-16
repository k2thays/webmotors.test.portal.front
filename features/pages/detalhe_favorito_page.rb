class Favorite < SitePrism::Page
    element :login_menu, ".Menu-User__login"
    element :login_button, "#userLoginRegister"
    element :input_email, "#email"
    element :input_password, "#password"
    element :close_locator, ".AutoComplete__icon"
    element :car_item, ".sc-gqPbQI:nth-child(2) .sc-bbmXgH"
    element :fav_checked_cardetails, ".VehicleDetails__header__top .sc-jzJRlG.iHAlVS"
    element :fav_unchecek_cardetails, ".VehicleDetails__header__top .sc-jzJRlG.xPHcV"
    element :fav_checked_carlist, ".sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.dVKAHr"
    element :fav_unchecek_carlist, ".sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.iepUUL"

    def login_upper_menu
        login_menu.click
        login_button.click
    end

    def fill_login(email, password)
        input_email.set email
        input_password.set password
        click_button "Entrar"
    end

    def remove_locator
        close_locator.click
    end

    def choose_item
        car_item.click
    end

    def fav_add
        if page.has_css?(".VehicleDetails__header__top .sc-jzJRlG.iHAlVS", wait: 1)
            fav_checked_cardetails.click
        end
        fav_unchecek_cardetails.click
    end

    def car_fav_add
        fav_unchecek_carlist.click
    end

    def list_fav_add
        if page.has_no_css?(".sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.dVKAHr", wait: 1)
            fav_unchecek_carlist.click
        else page.has_css?(".sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.dVKAHr", wait: 1)
            fav_checked_carlist.click
        end    
    end
end