class Favorite < SitePrism::Page
  element :login_menu,  :xpath, '//*[@data-qa="btn_header_login"]'
  element :login_button, :xpath, '//*[@data-qa="header_btn_login"]'
  element :close_popup_login, :xpath, '//*[@data-qa="login-popover-close-btn"]'
  element :input_email, '#email'
  element :input_password, '#password'
  element :car_item, :xpath, '//div[@id="root"]/main/div/div[3]/div[2]/div/div/div/div[2]/div/div[2]/a/div/h3'
  element :fav_checked_cardetails, '.VehicleDetails__header__top .sc-jzJRlG.iHAlVS'
  element :fav_unchecked_cardetails, '.VehicleDetails__header__top .sc-jzJRlG.xPHcV'
  element :fav_checked_carlist, '.sc-gqPbQI.ldOiUz:nth-child(2) .sc-jzJRlG.dVKAHr'
  element :fav_unchecked_carlist, '.sc-jlyJG.brCSCC'

  def login_upper_menu
    close_popup_login.click
    login_menu.hover
    login_button.click
  end

  def fill_login(email, password)
    input_email.set email
    input_password.set password
    click_button 'Entrar'
  end

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
