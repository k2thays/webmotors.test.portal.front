class Location < SitePrism::Page
  element :validacao, '.Filters__container__group:nth-child(1) > .Filters__container__group__title'
  element :input_location, '#locationAutoComplete'
  elements :select_result, '.AutoComplete-result:nth-child(2) > .AutoComplete-result-name'
  element :close_locator, '.AutoComplete__icon'

  def verificar_location
    validacao.visible?
  end

  def fill_form(location)
    input_location.set location
    select_result[0].click
  end

  def remove_locator
    close_locator.click if has_close_locator?(wait: 2)
  end
end
