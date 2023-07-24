class LatestSearch < SitePrism::Page
  element :back_homepage, '._IVZOj'
  element :last_search, :xpath, '//*[@data-qa="last_search_card_1"]'
  element :last_search_text, '.sc-dSuTWQ.jXQjZm'
  element :car_select, :xpath, '//*[@data-qa="Autocomplete_DropItem_Model"]'
  element :input_busca, :xpath, '//*[@data-qa="Input_Autocomplete"]'


  def voltar_homepage
    back_homepage.click
  end

  def selecionar_ultima_busca
    last_search.click
  end

  def pesquisar_carro(veiculo)
    input_busca.visible?
    input_busca.set(veiculo)
    wait_until_car_select_visible
    car_select.click
  end
end
