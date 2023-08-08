class Lead < SitePrism::Page
  element :input_name_lead, 'form[class*="send-proposal"] input[name="fullName"]'
  element :input_email_lead, 'form[class*="send-proposal"] input[name="email"]'
  element :input_phone_lead, 'form[class*="send-proposal"] input[name="numberPhone"]'
  element :input_message_lead, 'div[class*="message"] textarea[name="message"]'
  element :button_chamada_video,  :xpath, '//*[@data-qa="btn_schedule_video_call"]'
  element :button_ver_telefone, '#CardSellerPhoneViewPrivate'

  def fill_form
    button_chamada_video.hover
    button_ver_telefone.hover
    #home_page.fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 2)
    input_name_lead.set "Hebe Camargo"
    input_email_lead.set Faker::Internet.email
    input_phone_lead.set '11992176665'
    click_button 'Enviar mensagem'
  end

  def fill_form_fail(user)
    input_name_lead.set user[:nome]
    input_email_lead.set user[:email]
    input_phone_lead.set user[:telefone]
    input_message_lead.set user[:mensagem]
  end

  def verificar_popup
    lead.button_chamada_video.hover
    lead.button_ver_telefone.hover
    #home_page.fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 4)
  end
end 

class Complaint < SitePrism::Page
  element :input_name, 'form[class*="advert__middle"] input[name="fullName"]'
  element :input_email, 'form[class*="advert__middle"] input[name="email"]'
  element :reason_select, 'select[id="ReasonReportAdvert"]'
  element :input_msg, 'div[id="ReportAdvert"] textarea[name="message"]'
  element :checkbox, '#check-complaint'
  element :button_send, '#ButtonSendReportAdvert'
 

  def fill_form
    button_chamada_video.hover
    button_ver_telefone.hover
    #home_page.fechar_modal.click if page.has_text?('Simule seu financiamento', wait: 2)
    input_name.set "Silvio Santos"
    input_email.set Faker::Internet.email
    reason_select.select('Preço Irregular')
    input_msg.set 'Enviando uma mensagem para rtealizar uma denuncia em ambiente de teste'
    checkbox.click
    wait_until_button_send_visible
    button_send.click
  end
end  
