class ScheduleCall < SitePrism::Page
  element :input_name, 'input[placeholder="Nome"]'
  element :input_email, 'input[placeholder="E-mail"]'
  element :input_phone, 'input[placeholder="Telefone"]'
  element :day_arrow_right, '.sc-esjQYD'
  element :hour_arrow_right, '.sc-gwVKww.cAJaAi'

<<<<<<< HEAD
  def fill_form(name, email, phone)
    input_name.set name
    input_email.set email
    input_phone.set phone
  end

  def select_date
    day_arrow_right.click
    hour_arrow_right.click
  end
end
=======
    element :day_arrow_right, ".sc-esjQYD"
    element :hour_arrow_right, ".sc-gwVKww.cAJaAi"
    

    def fill_form(name, email, phone)
        input_name.set name
        input_email.set email
        input_phone.set phone
    end
    
    def select_date
        day_arrow_right.click
        hour_arrow_right.click
    end
end
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
