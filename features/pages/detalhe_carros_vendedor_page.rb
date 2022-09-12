class Seller < SitePrism::Page
  element :buy_menu, '.Menu-User__list-links__navigation__item:nth-child(1)'
  element :cars_button, '#navigationUsedOrNewCars'
  element :car_item, '.sc-gqPbQI:nth-child(3) .sc-bbmXgH'
  element :seller_menu, '.CardSeller__stock__seller__arrow'

  def select_upper_menu
    buy_menu.click
    cars_button.click
  end

  def choose_car
    car_item.click
  end

  def car_list
    seller_menu.click
  end
end
