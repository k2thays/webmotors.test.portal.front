class HomePage < SitePrism::Page
  # Header da página
  element :logo, '#logoHomeWebmotors'
  element :input_busca, '#searchBar'
  element :seleciona_retorno_busca, :xpath, '//*[@class="SearchBar__results__group"][1]/a[1]'
  elements :lista_retorno_busca, :xpath, '//*[@class="SearchBar__results__group"]'

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
      input_busca.send_keys :space
      wait_until_seleciona_retorno_busca_visible
    end
    seleciona_retorno_busca.click
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

  def acessar_detalhes_veiculo
    retorno_busca[0].click
    alterar_aba
    fechar_modal.visible?
    fechar_modal.click
  end

  def aceitar_coockies
    if page.has_text?('Simule seu financiamento', wait: 2)
        find(".modal--close").click
    else page.has_text?('Aviso de Cookies', wait: 1)
        click_button "OK"
    end
  end
end

