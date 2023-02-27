class ScheduleCall < SitePrism::Page
  element :input_name, 'input[placeholder="Nome"]'
  element :input_email, 'input[placeholder="E-mail"]'
  element :input_phone, 'input[placeholder="Telefone"]'
  elements :day_arrow_right, :xpath, '//*[@data-qa="day_enabled"]'
  elements :hour_arrow_right, :xpath, '//*[@data-qa="hour_enabled"]'
  element :set_hour, '.sc-cLQEGU.EREiw'

  def fill_form(name, email, phone)
    input_name.set name
    input_email.set email
    input_phone.set phone
  end

  def select_date
    day_arrow_right[1].click
    hour_arrow_right[0].click
  end
end
