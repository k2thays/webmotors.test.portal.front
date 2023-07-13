class MotoFilters < SitePrism::Page
  element :moto_selec, :xpath, '//*[@data-qa="Tabs_Bikes"]'
  elements :brand_selector, '.CardMake__name-make'
  element :all_brands, '.CarouselContainer.undefined'
  element :all_model_selector, '.Filters__line.Filters__line--gray.Filters__line--icon.Filters__line--icon--right'
  element :model_select, 'a[class*="Filters__line"][href$="cg-125-fan"]'
  # filtros
  element :from_year_field, 'input[name="anode"]'
  element :to_year_field, 'input[name="anoate"]'
  element :from_pricer, 'input[name="precode"]'
  element :to_pricer, 'input[name="precoate"]'
  element :color_select, :xpath, '//*[@data-qa="filter_color_branco"]'
  element :marca_moto_bmw, :xpath, '//*[@data-qa="filter_make_card_bmw"]'
  element :filtro_super_preco, :xpath, '//*[@data-qa="filter_opportunity_superPreco"]'

  # checkbox
  element :color_silver, '.SlideLeft--opened .Form__InputRow:nth-child(10) > .Checkbox'
  element :slide_close, '.SlideLeft--opened .Filters__back'

  def selecionar_comprar_motos
    moto_selec.click
  end

  def scroll_to_element(elemento)
    page.execute_script('arguments[0].scrollIntoView();', elemento)
  end

  def selecionar_marca
    scroll_to_element(filtro_super_preco)
    marca_moto_bmw.click
  end

  def selecionar_modelo
    wait_until_all_model_selector_visible
    all_model_selector.click
    click_link "F 700 GS"
  end

  def preencher_ano
    from_year_field.set '2012'
    to_year_field.set '2021'
  end

  def preencher_preco
    from_pricer.set '2000'
    to_pricer.set '50000'
  end
end
