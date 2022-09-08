class MotoFilters < SitePrism::Page
  element :moto_selec, '.NavBar--item:nth-child(2) > a'
  element :brand_selector, 'div[class*="CarouselContainer"] a[title="honda"]'
  element :all_model_selector, '.Filters__line--gray'
  element :model_select, 'a[class*="Filters__line"][href$="cg-125-fan"]'
  # filtros
  element :from_year_field, 'input[name="anode"]'
  element :to_year_field, 'input[name="anoate"]'
  element :from_pricer, 'input[name="precode"]'
  element :to_pricer, 'input[name="precoate"]'
  element :color_select, '.Filters__container__group:nth-child(22) > .Filters__line'
  # checkbox
  element :color_silver, '.SlideLeft--opened .Form__InputRow:nth-child(10) > .Checkbox'
  element :slide_close, '.SlideLeft--opened .Filters__back'

  def selecionar_comprar_motos
    moto_selec.click
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

  def preencher_ano
    from_year_field.set '2012'
    to_year_field.set '2021'
  end

  def preencher_preco
    from_pricer.set '2000'
    to_pricer.set '15000'
  end

  def selecionar_cores
    color_select.click
    wait_until_slide_close_visible
    color_silver.click
  end


end

