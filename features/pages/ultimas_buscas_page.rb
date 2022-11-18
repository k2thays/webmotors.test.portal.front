class LatestSearch < SitePrism::Page
  element :back_homepage, '.right-container'
  element :last_search, '.CardUltimasBuscas:nth-child(1) > .CardUltimasBuscas__make'
  element :last_search_text, 'div[class="HomeSearchBox__lastsearch-title"] h2[class="container"]'

  def voltar_homepage
    back_homepage.click
    last_search_text.visible?
  end

  def selecionar_ultima_busca
    last_search.click
  end
end
