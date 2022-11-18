class Seller < SitePrism::Page
  element :buy_menu, '.Menu-User__list-links__navigation__item:nth-child(1)'
  element :cars_button, '#navigationUsedOrNewCars'
  element :car_item, :xpath, '//div[@id="root"]/main/div/div[3]/div[2]/div/div/div/div[2]/div/div[2]/a/div/h3'
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
