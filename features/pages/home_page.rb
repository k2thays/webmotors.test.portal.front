class HomePage < SitePrism::Page
  # Header da página
  element :logo, '#logoHomeWebmotors'
  element :input_busca, '#searchBar'
  element :seleciona_retorno_busca, '.SearchBar__results__group:nth-child(1) .SearchBar__results__result__name'
  elements :lista_retorno_busca, :xpath, '//*[@class="SearchBar__results__group"][1]'
  element :busca_sem_retorno, ".SearchBar__results__result.no-result"
  element :card_cars, ".ContainerCardVehicle"
  element :carlist_fav_unchecked, ".sc-gqPbQI.ldOiUz:nth-child(3) .sc-jzJRlG.iepUUL"
  element :moto_selector, :xpath, "//*[@class='NavBar--item']//*[contains(text(), 'Comprar Motos')]"
  element :sell_option, :xpath, "//*[@class='NavBar--item']//*[contains(text(), 'Quero Vender')]"
  element :categories_slide_right, :xpath, "div:nth-child(2) > .slick-slider > .slick-next"
  element :categorie_option1, :xpath, "//a[contains(.,'Carros de luxo')]"
  element :categorie_option2, :xpath, "//a[contains(.,'Carros a diesel')]"
  element :categorie_option3, :xpath, "//a[contains(.,'Carros para família')]"
  element :categories, ".bBNCJh .sc-jlyJG"

  #Menu superior de Compra
  element :buy_upper_menu, ".Menu-User__list-links__navigation__item:nth-child(1)"
  element :upper_new_and_used_car, "#navigationUsedOrNewCars"
  element :upper_new_car, "#navigationNewCars"
  element :upper_new_and_used_bikes, "#navigationUsedOrNewMotorbikes"
  element :upper_new_bikes, "#navigationNewMotorsbike"
  element :upper_advanced_search, "#navigationSearchAdvanced"
  element :upper_buy_safebuy, ".Menu-User__list-links__navigation__item__sub__item:nth-child(2) > #navigationSafeBuy"
  
  #Menu Superior de Venda
  element :sell_upper_menu, ".Menu-User__list-links__navigation__item:nth-child(2)"
  element :upper_sellmy_car, "#navigationSellMyCar"
  element :upper_sellmy_bike, "#navigationSellMyBike"
  element :upper_sell_safebuy, ".Menu-User__list-links__navigation__item__sub__item:nth-child(3) > #navigationSafeBuy"
  element :upper_manage_advertising, "#navigationManageAdvertising"
  element :upper_sell_faztudo, "#navigationFazTudo"

  #Menu Superior de Ajuda
  element :upper_help, ".Menu-User__list-links__navigation__item:nth-child(4)"
  element :upper_foryou, "#navigationAttendance"
  element :upper_forstore, "#navigationLegalPerson"

  #Menu Superior de Serviços
  element :services_upper_menu, ".Menu-User__list-links__navigation__item:nth-child(3)"
  element :upper_fipe, "#navigationFipe"
  element :upper_zerokm, "#navigationKM"
  element :upper_assurance, "#navigationSafe"
  element :upper_dealers, "#navigationDealer"
  element :upper_financial, "#navigationFinancing"
  element :upper_newswm, "#navigationNewsWM1"
  element :upper_services_safebuy, ".Menu-User__list-links__navigation__item__sub__item:nth-child(6) > #navigationSafeBuy"
  element :upper_services_faztudo, "#navigationServicesFazTudo"

  #Menu Superior de Login
  element :login_upper_menu, ".Menu-User__login"
  element :upper_login, "#userLoginRegister"
  element :upper__login_dealer, "#navigationImAReseller"

  #Menu Superior de Notificações
  element :notification_upper_menu, ".Header-Notifications__icon"
  element :notifications, ".Header-Notifications__list__item__text > div:nth-child(1)"

    
  # Retorno da busca
  element :fechar_modal, '.modal--close'
  elements :retorno_busca, :xpath, '//*[@class="sc-hMFtBS cVTeoI"]'

  # MOTODOS
  def verificar_home
    logo.visible?
  end

  def pesquisar_veiculo(veiculo)
    input_busca.visible?
    input_busca.set veiculo
    if lista_retorno_busca[0].text[0, 7] != 'Modelos'
      input_busca.send_keys :space
      wait_until_seleciona_retorno_busca_visible
    end
    seleciona_retorno_busca.click
  end

  def validar_card_carros
    wait_until_carlist_fav_unchecked_visible
    wait_until_card_cars_visible
  end

  def validar_retorno_busca
    if retorno_busca.size.zero?
      $log_erro = 'Falha no retorno da busca'
      raise ArgumentError, $log_erro
    end
  end

  def alterar_aba
    page.switch_to_window page.windows.last
  end

  def comprar_motos
    moto_selector.click
  end

  def quero_vender
    sell_option.click
  end

  def categorias
    if has_categorie_option1?(wait: 1)
      categorie_option1.click
    elsif has_categorie_option2?(wait: 1)
      categorie_option2.click
    else 
      categorie_option3.click
    end
  end
  
  def menu_comprar
    buy_upper_menu.hover
  end

  def menu_carros_novos_usados
    upper_new_and_used_car.click
  end

  def menu_carros_novos
    upper_new_car.click
  end

  def menu_motos_novas_usadas
    upper_new_and_used_bikes.click
  end

  def menu_motos_novas
    upper_new_bikes.click
  end

  def menu_busca_avancada
    upper_advanced_search.click
  end

  def menu_compra_segura
    upper_buy_safebuy.click
  end

  def menu_vender
    sell_upper_menu.hover
  end

  def vender_carro
    upper_sellmy_car.click
  end

  def vender_moto
    upper_sellmy_bike.click
  end

  def venda_compra_segura
    upper_sell_safebuy.click
  end

  def gerenciar_anuncio
    upper_manage_advertising.click
  end

  def venda_faztudo
    upper_sell_faztudo.click
  end

  def menu_ajuda
    upper_help.hover
  end

  def ajuda_para_voce
    upper_foryou.click
  end

  def ajuda_para_loja
    upper_forstore.click
  end

  def menu_servicos
    services_upper_menu.hover
  end

  def servicos_fipe
    upper_fipe.click
  end

  def servicos_zerokm
    upper_zerokm.click
  end

  def servicos_seguros
    upper_assurance.click
  end

  def servicos_revendedores
    upper_dealers.click
  end

  def servicos_financiamento
    upper_financial.click
  end

  def servicos_noticiaswm
    upper_newswm.click
  end

  def servicos_compra_segura
    upper_services_safebuy.click
  end

  def servicos_faztudo
    upper_services_faztudo.click
  end

  def menu_login
    login_upper_menu.hover
  end

  def login_usuario
    upper_login.click
  end

  def login_revendedor
    upper__login_dealer.click
  end

  def menu_notificacoes
    notification_upper_menu.hover
  end

  def notificacao_slide
    notifications.click
  end
    
  def acessar_detalhes_veiculo
    retorno_busca.click
    alterar_aba
  end

  def aceitar_coockies
    if page.has_text?('Simule seu financiamento', wait: 2)
      fechar_modal.click
    else page.has_text?('Aviso de Cookies', wait: 1)
        click_button "OK"
    end
  end
end