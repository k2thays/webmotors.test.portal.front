class Favorite < SitePrism::Page
<<<<<<< HEAD
  element :login_menu, '.Menu-User__login'
  element :login_button, '#userLoginRegister'
  element :input_email, '#email'
  element :input_password, '#password'
  element :car_item, '.sc-gqPbQI:nth-child(2) .sc-bbmXgH'
  element :fav_checked_cardetails, '.VehicleDetails__header__top .sc-jzJRlG.iHAlVS'
  element :fav_unchecked_cardetails, '.VehicleDetails__header__top .sc-jzJRlG.xPHcV'
  element :fav_checked_carlist, '.sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.dVKAHr'
  element :fav_unchecked_carlist, '.sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.iepUUL'

  def login_upper_menu
    login_menu.hover
    login_button.click
  end
=======
    element :login_menu, ".Menu-User__login"
    element :login_button, "#userLoginRegister"
    element :input_email, "#email"
    element :input_password, "#password"
    element :car_item, ".sc-gqPbQI:nth-child(2) .sc-bbmXgH"
    element :fav_checked_cardetails, ".VehicleDetails__header__top .sc-jzJRlG.iHAlVS"
    element :fav_unchecked_cardetails, ".VehicleDetails__header__top .sc-jzJRlG.xPHcV"
    element :fav_checked_carlist, ".sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.dVKAHr"
    element :fav_unchecked_carlist, ".sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.iepUUL"

    def login_upper_menu
        login_menu.hover
        login_button.click
    end
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70

  def fill_login(email, password)
    input_email.set email
    input_password.set password
    click_button 'Entrar'
  end

<<<<<<< HEAD
  def choose_item
    car_item.click
  end

  def fav_add
    fav_checked_cardetails.click if has_fav_checked_cardetails?(wait: 1)
    fav_unchecked_cardetails.click
  end

  def car_fav_add
    fav_unchecked_carlist.click
  end

  def list_fav_add
    fav_checked_carlist.click if has_fav_checked_carlist?(wait: 1)
    fav_unchecked_carlist.click
    fav_unchecked_carlist.click
  end
end
=======
    def choose_item
        car_item.click
    end

    def fav_add
        if has_fav_checked_cardetails?(wait: 1)
            fav_checked_cardetails.click
        end
        fav_unchecked_cardetails.click
    end

    def car_fav_add
        fav_unchecked_carlist.click
    end

    def list_fav_add
        if has_fav_checked_carlist?(wait: 1)
            fav_checked_carlist.click
        else 
            fav_unchecked_carlist.click
        end    
        fav_unchecked_carlist.click
    end
end
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
