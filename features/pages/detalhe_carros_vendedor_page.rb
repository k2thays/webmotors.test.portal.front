class Seller < SitePrism::Page
  element :buy_menu, :xpath, '//*[@data-qa="header_buy"]'
  element :cars_new_button, :xpath, '//*[@data-qa="header_buy_car_new"]'   
  element :cars_used_button, :xpath, '//*[@data-qa="header_buy_car_used"]'
  element :car_item, :xpath, '//*[@data-qa="vehicle_card_1"]'
  element :seller_menu, '.CardSeller__stock__seller__arrow'

  def select_upper_menu
    buy_menu.click
    cars_used_button.click
  end

  def choose_car
    car_item.click
  end

  def car_list
    seller_menu.click
  end
end
