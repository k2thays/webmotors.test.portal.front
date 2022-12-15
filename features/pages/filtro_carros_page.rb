class CarFilters < SitePrism::Page
  element :click_offerts, '.Button--red-home'
  element :upper_tittle, '.title-search'
  element :filter_validate, 'label[data-testid="filter_Opportunities_superPreco"]'
  elements :brand_selector, '.CardMake'
  element :all_model_selector, '.Filters__line--gray'
  element :model_select, 'a[class*="Filters__line"][href*="civic"]'
  element :version_select, 'a[class*="Filters__line"][href*="20-exr-16v-flex-4p-automatico"]'
  element :from_year_field, 'input[name="anode"]'
  element :to_year_field, 'input[name="anoate"]'
  element :from_pricer, 'input[name="precode"]'
  element :to_pricer, 'input[name="precoate"]'
  # filtros
  element :color_select, '.Filters__container__group:nth-child(16) > .Filters__line'
  element :slide_close, '.SlideLeft--opened .Filters__back'
  # checkbox
  element :color_white, :xpath, '/html/body/div[1]/main/div[1]/div[2]/div/div[17]/div/div[3]/div[3]/label'
  element :color_black, :xpath, '/html/body/div/main/div[1]/div[2]/div/div[17]/div/div[3]/div[7]/label'
  element :license_plate, '.Filters__container__group:nth-child(13) > .Form__InputRow:nth-child(2) > .Checkbox'

  def oferta_carros
    click_offerts.click
  end

  def validar_page_filtros
    upper_tittle.visible?
    filter_validate.visible?
  end

  def selecionar_marca_carro
    brand_selector.visible?
    wait_until_brand_selector_visible
    brand_selector[3].click
  end

  def selecionar_modelo_carro
    sleep(1)
    wait_until_all_model_selector_visible
    all_model_selector.click
    if wait_until_model_select_visible
      sleep(1)
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
    from_year_field.set '2017'
    to_year_field.set '2021'
  end

  def preencher_preco
    from_pricer.set '90000'
    to_pricer.set '130000'
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

  def oferta_carros
    click_link "Ver ofertas"
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
    from_year_field.set '2005'
    to_year_field.set '2021'
  end

  def preencher_preco
    from_pricer.set '10000'
    to_pricer.set '250000'
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
