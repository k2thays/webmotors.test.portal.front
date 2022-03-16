class Lead < SitePrism::Page
    element :input_name, :xpath, "//div[@class='Forms__cookie__stage']//input[@name='fullName']"
    element :input_email, :xpath, "//div[@class='Forms__cookie__stage']//input[@name='email']"
    element :input_phone, :xpath, "//div[@class='Forms__cookie__stage']//input[@name='numberPhone']"

    def fill_form
        input_name.set Faker::Name.first_name
        input_email.set Faker::Internet.email
        input_phone.set "11992176665"
        click_button "Enviar mensagem"
    end
end

class Complaint < SitePrism::Page
    element :input_name, :xpath, "//form[@class='Forms--report-advert__middle']//input[@name='fullName']"
    element :input_email, :xpath, "//form[@class='Forms--report-advert__middle']//input[@name='email']"
    element :reason_select, "select[id='ReasonReportAdvert']"
    element :input_msg, :xpath, "//form[@class='Forms--report-advert__middle']//textarea"
    element :checkbox, "#check-complaint"

    def fill_form
        input_name.set Faker::Name.first_name
        input_email.set Faker::Internet.email
        reason_select.select("Preço Irregular")
        input_msg.set "Teste Campo de Mensagem"
        checkbox.click
        click_button "Enviar"
    end
end








