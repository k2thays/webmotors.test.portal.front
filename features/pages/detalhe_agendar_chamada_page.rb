class ScheduleCall < SitePrism::Page
  element :input_name, 'input[placeholder="Nome"]'
  element :input_email, 'input[placeholder="E-mail"]'
  element :input_phone, 'input[placeholder="Telefone"]'
  elements :day_arrow_right, :xpath, '//*[@data-qa="day_enabled"]'
  elements :hour_arrow_right, :xpath, '//*[@data-qa="hour_enabled"]'
  element :set_hour, '.sc-cLQEGU.EREiw'
  element :btn_ver_telefone, '#CardSellerPhoneViewPrivate'
  element :btn_fechar_modal, '.modal--close'


  def fill_form(name, email, phone)
    fechar_modal_DA
    input_name.set name
    fechar_modal_DA
    input_email.set email
    fechar_modal_DA
    input_phone.set phone
    fechar_modal_DA
  end

  def select_date
    fechar_modal_DA
    day_arrow_right[1].click
    fechar_modal_DA
    hour_arrow_right[0].click
    fechar_modal_DA
  end

  def validar_visualizar_telefone
    btn_ver_telefone.visible?
  end   

  def fechar_modal_DA
    btn_fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 2)
  end

end
