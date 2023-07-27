class ScheduleCall < SitePrism::Page
  element :input_name, 'input[placeholder="Nome"]'
  element :input_email, 'input[placeholder="E-mail"]'
  element :input_phone, 'input[placeholder="Telefone"]'
  elements :day_arrow_right, :xpath, '//*[@data-qa="day_enabled"]'
  elements :hour_arrow_right, :xpath, '//*[@data-qa="hour_enabled"]'
  element :set_hour, '.sc-cLQEGU.EREiw'
  element :btn_ver_telefone, '#CardSellerPhoneViewPrivate'

  def fill_form(name, email, phone)
    input_name.set name
    input_email.set email
    input_phone.set phone
  end

  def select_date
    day_arrow_right[1].click
    hour_arrow_right[0].click
  end

  def validar_visualizar_telefone
    btn_ver_telefone.visible?
  end   
end
