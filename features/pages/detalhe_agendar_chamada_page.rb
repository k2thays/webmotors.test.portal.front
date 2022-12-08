class ScheduleCall < SitePrism::Page
  element :input_name, 'input[placeholder="Nome"]'
  element :input_email, 'input[placeholder="E-mail"]'
  element :input_phone, 'input[placeholder="Telefone"]'
  element :day_arrow_right, '.sc-esjQYD'
  elements :hour_arrow_right,'.sc-hORach.hchHUW'
  element :set_hour, '.sc-cLQEGU.EREiw'


  def fill_form(name, email, phone)
    input_name.set name
    input_email.set email
    input_phone.set phone
  end

  def select_date
    day_arrow_right.click
    hour_arrow_right.click
  end    

  def fill_form(name, email, phone)
    input_name.set name
    input_email.set email
    input_phone.set phone
  end
    
  def select_date
    set_hour.click
    day_arrow_right.click
    hour_arrow_right[0].click
  end
end
