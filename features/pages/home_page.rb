class HomePage < SitePrism::Page
  # Header da página
  element :logo, '._IVZOj'
  element :input_busca, :xpath, '//*[@data-qa="Input_Autocomplete"]'
  elements :seleciona_retorno_busca,  :xpath, '//*[@data-qa="Autocomplte_DropItem_Model"]'
  elements :lista_retorno_busca, :xpath, '//*[@class="SearchBar__results__group"][1]'
  element :busca_sem_retorno, '.SearchBar__results__result.no-result'
  element :card_cars, '.sc-daURTG.hOmCb'
  element :fav_unchecked_carlist,  '.sc-hEsumM.hiCjMu'
  element :moto_selector, '.NavBar--item:nth-child(2) > a'
  element :sell_option, :xpath, '//*[@class="NavBar--item"]//*[contains(text(), "Quero Vender")]'
  element :categorie_option, :xpath, '(//section[@id="home_categories_carousel"]/div/div/div/div/div/div/div/div/a)[1]'
  element :categories, '.bBNCJh .sc-jlyJG'
  element :favorite_heart, '.sc-bMVAic:nth-child(1) svg'

  # Menu superior de Compra
  element :buy_upper_menu, :xpath, '//*[@data-qa="header_buy"]'
  element :upper_used_car, :xpath, '//*[@data-qa="header_buy_car_used"]'
  element :upper_new_car, :xpath, '//*[@data-qa="header_buy_car_new"]'
  element :upper_used_bikes, :xpath, '//*[@data-qa="header_buy_bike_used"]'
  element :upper_new_bikes, :xpath, '//*[@data-qa="header_buy_bike_new"]'
  element :upper_buy_certified, :xpath, '//*[@data-qa="header_buy_certified_purchase"]'
  element :upper_buy_safebuy, '.Menu-User__list-links__navigation__item__sub__item:nth-child(2) > #navigationSafeBuy'

  # Menu Superior de Venda
  element :sell_upper_menu, '.Menu-User__list-links__navigation__item:nth-child(2)'
  element :upper_sellmy_car, '#navigationSellMyCar'
  element :upper_sellmy_bike, '#navigationSellMyBike'
  element :upper_sell_safebuy, '.Menu-User__list-links__navigation__item__sub__item:nth-child(3) > #navigationSafeBuy'
  element :upper_manage_advertising, '#navigationManageAdvertising'
  element :upper_sell_faztudo, '#navigationFazTudo'

  # Menu Superior de Ajuda
  element :upper_help, :xpath, '//*[@data-qa="header_help"]'
  element :upper_foryou, :xpath, '//*[@data-qa="header_help_you"]'
  element :upper_forstore, :xpath, '//*[@data-qa="header_help_store"]'

  # Menu Superior de Serviços
  element :services_upper_menu, '.Menu-User__list-links__navigation__item:nth-child(3)'
  element :upper_fipe, '#navigationFipe'
  element :upper_zerokm, '#navigationKM'
  element :upper_assurance, '#navigationSafe'
  element :upper_dealers, '#navigationDealer'
  element :upper_financial, '#navigationFinancing'
  element :upper_newswm, '#navigationNewsWM1'
  element :upper_services_safebuy, '.Menu-User__list-links__navigation__item__sub__item:nth-child(6) > #navigationSafeBuy'
  element :upper_services_faztudo, '#navigationServicesFazTudo'

  # Menu Superior de Login
  element :login_upper_menu, :xpath, '//*[@data-qa="btn_header_login"]'
  element :upper_login, :xpath, '//*[@data-qa="header_btn_login"]'
  element :upper__login_dealer, :xpath, '//*[@data-qa="header_btn_cockpit"]'
  element :closed_modal_login,  :xpath, '//*[@data-qa="login-popover-close-btn"]'

  # Menu Superior de Notificações
  element :notification_upper_menu, :xpath, '//*[@data-qa="btn_header_notifications"]'
  element :notifications, '#btn_popover_callModalNotifications'

  # Retorno da busca
  element :fechar_modal, '.modal--close'
  elements :retorno_busca, :xpath, '//*[@class="sc-hMFtBS cVTeoI"]'

  # MOTODOS
  def verificar_home
    logo.visible?
  end

  def carregar_lista_veiculos
    favorite_heart.visible?
  end

  def pesquisar_veiculo(veiculo)
    input_busca.visible?
    input_busca.set(veiculo)
    #if lista_retorno_busca[0].text[0, 7] != 'Modelos'
      #input_busca.send_keys :space
      #input_busca.set(veiculo)
      #input_busca.send_keys :space
      #input_busca.set(veiculo)
      #input_busca.send_keys :space
      #wait_until_seleciona_retorno_busca_visible
    #end
    seleciona_retorno_busca[0].click
  end

  def validar_card_carros
    wait_until_card_cars_visible
    wait_until_fav_unchecked_carlist_visible
  end

  def validar_retorno_busca
    if retorno_busca.size.zero?
      $log_erro = 'Falha no retorno da busca'
      raise ArgumentError, $log_erro
    end
  end

  def alterar_aba
    page.switch_to_window page.windows.last
    page.refresh
  end

  def comprar_motos
    moto_selector.click
  end

  def quero_vender
    sell_option.click
  end

  def categorias
    categorie_option.click
  end

  def menu_comprar
    buy_upper_menu.hover
  end

  def menu_carros_usados
    upper_used_car.click
  end

  def menu_carros_novos
    upper_new_car.click
  end

  def menu_motos_usadas
    upper_used_bikes.click
  end

  def menu_motos_novas
    upper_new_bikes.click
  end

  def menu_compra_certificada
    upper_buy_certified.click
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
    wait_until_closed_modal_login_visible
    closed_modal_login.click  
    login_upper_menu.hover
  end

  def login_usuario
    upper_login.click
  end

  def login_revendedor
    upper__login_dealer.click
  end

  def menu_notificacoes
    notification_upper_menu.click
  end

  def notificacao_slide
    notifications.click
  end

  def acessar_detalhes_veiculo
    retorno_busca.click
    alterar_aba
  end

  def aceitar_coockies
    fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 2)
    click_button 'OK' if page.has_text?('Aviso de Cookies', wait: 1)
  end
end
