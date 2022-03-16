class ScheduleCall < SitePrism::Page
    element :input_name, "input[placeholder='Nome']"
    element :input_email, "input[placeholder='E-mail']"
    element :input_phone, "input[placeholder='Telefone']"

    element :arrow, ".sc-esjQYD"
    element :day, ".XWnny:nth-child(3) > .sc-RefOD"
    element :hour, ".sc-epnACN:nth-child(5) > .sc-iQNlJl"
    

    def fill_form(name, email, phone)
        input_name.set name
        input_email.set email
        input_phone.set phone
    end
    
    def select_date
        arrow.click
        day.click
        hour.click
    end
end