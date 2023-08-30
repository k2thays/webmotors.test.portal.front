module PageObjects
  def home_page
    HomePage.new
  end

  def schedule
    ScheduleCall.new
  end

  def seller
    Seller.new
  end

  def favorite
    Favorite.new
  end

  def lead
    Lead.new
  end

  def complaint
    Complaint.new
  end

  def installment
    Installment.new
  end

  def description
    Description.new
  end

  def location
    Location.new
  end

  def carfilters
    CarFilters.new
  end

  def motofilters
    MotoFilters.new
  end

  def latestsearch
    LatestSearch.new
  end

  def lead
    Lead.new
  end  

  def detalhe_anuncio
    DetalheAnuncio.new
  end   

  def noticiasWM1
    NoticiasWM1.new
  end   

  def footerComprar
    FooterComprar.new
  end  
  
  def footerVender
    FooterVender.new
  end  
  
  def footerServicos
    FooterServicos.new
  end  

  def footerNoticias
    FooterNoticias.new
  end  

  def footerInstitucional
    FooterInstitucional.new
  end  

  def footerAjuda
    FooterAjuda.new
  end
  
  def produto
    ProdutosHome.new
  end   

  def carros0km
    Carros0km.new
  end  

end
