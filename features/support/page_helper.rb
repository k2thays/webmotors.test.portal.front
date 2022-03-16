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
end