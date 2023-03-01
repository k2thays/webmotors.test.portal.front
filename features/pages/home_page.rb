class HomePage < SitePrism::Page
  # Header da página
  element :logo, '._IVZOj'
  element :input_busca, :xpath, '//*[@data-qa="Input_Autocomplete"]'
  element :seleciona_retorno_busca,  :xpath, '//*[@data-qa="Autocomplete_DropItem_Brand"]'
  elements :lista_retorno_busca, :xpath, '//*[@class="SearchBar__results__group"][1]'
  element :busca_sem_retorno, '.SearchBar__results__result.no-result'
  element :card_cars, '.sc-iujRgT.jtOieA'
  element :fav_unchecked_carlist,  :xpath, '//*[@ddata-test-id="card_favorite_23853904"]'
  element :sell_bike, :xpath, '//*[@data-qa="Tabs_Bikes"]'
  elements :sell_option, '.sc-gYMRRK.kjzrDR'
  element :sell_car, :xpath, '//*[@data-qa="header_sell_car"]' 
  elements :categorie_option, :xpath, '//*[@data-testid="Card_1"]'
  element :categories, '.bBNCJh .sc-jlyJG'
  elements :favorite_heart, '.sc-bbmXgH.MCVGq'
  element :acept_cookie, :xpath, '//*[@data-qa="btn_understoodCookieWarn"]'

  # Menu superior de Compra
  element :buy_upper_menu, :xpath, '//*[@data-qa="header_buy"]'
  element :upper_used_car, :xpath, '//*[@data-qa="header_buy_car_used"]'
  element :upper_new_car, :xpath, '//*[@data-qa="header_buy_car_new"]'
  element :upper_used_bikes, :xpath, '//*[@data-qa="header_buy_bike_used"]'
  element :upper_new_bikes, :xpath, '//*[@data-qa="header_buy_bike_new"]'
  element :upper_buy_certified, :xpath, '//*[@data-qa="header_buy_certified_purchase"]'
  element :upper_buy_safebuy, '.Menu-User__list-links__navigation__item__sub__item:nth-child(2) > #navigationSafeBuy'

  # Menu Superior de Venda
  element :sell_upper_menu, :xpath, '//*[@data-qa="header_sell"]'
  element :upper_sellmy_car, :xpath, '//*[@data-qa="header_sell_car"]'
  element :upper_sellmy_bike, :xpath, '//*[@data-qa="header_sell_bike"]'
  element :upper_manage_advertising, :xpath, '//*[@data-qa="header_sell_manage_ad"]'
  element :upper_sell_dealer_platform, :xpath, '//*[@data-qa="header_sell_dealer_platform"]'

  # Menu Superior de Ajuda
  element :upper_help, :xpath, '//*[@data-qa="header_help"]'
  element :upper_foryou, :xpath, '//*[@data-qa="header_help_you"]'
  element :upper_forstore, :xpath, '//*[@data-qa="header_help_store"]'

  # Menu Superior de Serviços
  element :services_upper_menu, :xpath, '//*[@data-qa="header_services"]'
  element :upper_fipe, :xpath, '//*[@data-qa="header_services_fipe"]'
  element :upper_zerokm, :xpath, '//*[@data-qa="header_services_catalog_0km"]'
  element :upper_assurance, :xpath, '//*[@data-qa="header_services_insurance"]'
  element :upper_dealers,  :xpath, '//*[@data-qa="header_services_dealer_platform"]'
  element :upper_financial, :xpath, '//*[@data-qa="header_services_financing"]'
  element :upper_buy_certificada, :xpath, '//*[@data-qa="header_services_certified_purchase"]'

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
  elements :retorno_busca, :xpath, '//*[@data-qa="Autocomplete_DropItem_Brand"]'

  # MOTODOS
  def verificar_home
    wait_until_logo_visible
    logo.visible?
  end

  def carregar_lista_veiculos
    favorite_heart[0].visible?
  end

  def pesquisar_veiculo(veiculo)
    input_busca.visible?
    input_busca.set(veiculo)
    input_busca.send_keys :backspace
    wait_until_seleciona_retorno_busca_visible
    seleciona_retorno_busca.click
  end

  def validar_card_carros
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

  def vender_motos
    sell_option.click
  end

  def quero_vender
    sell_option[0].click
  end

  def comprar_motos
    sell_bike.click
  end  

  def categorias
    categorie_option[0].click
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

  def venda_revendedores
    upper_sell_dealer_platform.click
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

  def plataforma_rev
    upper_sell_dealer_platform.click
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
    upper_buy_certificada.click
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
    acept_cookie.click if page.has_text?('Entendi', wait: 2)
  end
end
