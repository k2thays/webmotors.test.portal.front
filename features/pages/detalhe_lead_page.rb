class Lead < SitePrism::Page
  element :input_name, 'form[class*="send-proposal"] input[name="fullName"]'
  element :input_email, 'form[class*="send-proposal"] input[name="email"]'
  element :input_phone, 'form[class*="send-proposal"] input[name="numberPhone"]'
  element :input_message, 'div[class*="message"] textarea[name="message"]'

  def fill_form
    input_name.set Faker::Name.first_name
    input_email.set Faker::Internet.email
    input_phone.set '11992176665'
    click_button 'Enviar mensagem'
  end

  def fill_form_fail(user)
    input_name.set user[:nome]
    input_email.set user[:email]
    input_phone.set user[:telefone]
    input_message.set user[:mensagem]
  end

  element :input_name, :xpath, "//div[@class='Forms__cookie__stage']//input[@name='fullName']"
  element :input_email, :xpath, "//div[@class='Forms__cookie__stage']//input[@name='email']"
  element :input_phone, :xpath, "//div[@class='Forms__cookie__stage']//input[@name='numberPhone']"
  element :input_message, :xpath, "//div[@class='Forms__cookie__stage']//textarea[@name='message']"
    
  def fill_form
    input_name.set Faker::Name.first_name
    input_email.set Faker::Internet.email
    input_phone.set '11992176665'
    click_button 'Enviar mensagem'
  end

  def fill_form_fail(user)
    input_name.set user[:nome]
    input_email.set user[:email]
    input_phone.set user[:telefone]
    input_message.set user[:mensagem]
  end
end

class Complaint < SitePrism::Page
  element :input_name, 'form[class*="advert__middle"] input[name="fullName"]'
  element :input_email, 'form[class*="advert__middle"] input[name="email"]'
  element :reason_select, 'select[id="ReasonReportAdvert"]'
  element :input_msg, 'div[id="ReportAdvert"] textarea[name="message"]'
  element :checkbox, '#check-complaint'

  def fill_form
    input_name.set Faker::Name.first_name
    input_email.set Faker::Internet.email
    reason_select.select('Preço Irregular')
    input_msg.set 'Teste Campo de Mensagem'
    checkbox.click
    click_button 'Enviar'
  end
end
