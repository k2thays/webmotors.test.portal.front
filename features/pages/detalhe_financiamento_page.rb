class Installment < SitePrism::Page
    element :input_name, :xpath, "//div[@class='Forms__container__form']//input[@name='fullName']"
    element :input_email, :xpath, "//div[@class='Forms__container__form']//input[@name='email']"
    element :input_phone, :xpath, "//div[@class='Forms__container__form']//input[@name='numberPhone']"
    element :input_birthday, :xpath, "//div[@class='Forms__container__form']//input[@name='birthday']"
    element :input_cpf, :xpath, "//div[@class='Forms__container__form']//input[@name='cpf']"
    element :location_select, ".Form__field.Form__field--select"
    element :proposal_send, ".Forms__footer > #ButtonSendProposal"

    def fill_form
        input_name.set Faker::Name.first_name
        input_email.set Faker::Internet.email
        input_phone.set "11992176665"
        input_birthday.set "19111956"
        input_cpf.set Faker::CPF.numeric
        location_select.select("São Paulo")
    end

    def fill_form_fail(user)
        input_name.set user[:nome]
        input_email.set user[:email]
        input_phone.set user[:telefone]
        input_birthday.set user[:nascimento ]
        input_cpf.set user[:cpf]
        location_select.select("#{user[:estado]}")
    end

    def show_result
        proposal_send.click
    end
end 
