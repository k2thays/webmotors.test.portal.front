class Installment < SitePrism::Page
  element :input_name, 'form[class="Forms__container"] input[name="fullName"]'
  element :input_email, 'form[class="Forms__container"] input[name="email"]'
  element :input_phone, 'form[class="Forms__container"] input[name="numberPhone"]'
  element :input_birthday, 'form[class="Forms__container"] input[name="birthday"]'
  element :input_cpf, 'form[class="Forms__container"] input[name="cpf"]'
  element :location_select, '.Form__field.Form__field--select'
  element :proposal_send, 'button[data-qa="btnSendProposalFinancing"]'
  element :ver_condicoes, :xpath, '//*[@data-qa="submitSendProposal"]' 
  element :ver_parcelas_nao_avisar, '.sc-fYxtnH.imqCGt'
  element :input_valor, 'input[data-qa="inputIntakeFinancing"]'
 
  def fill_form_financiamento
    input_name.set "Michel Jackeson"
    input_email.set Faker::Internet.email
    input_phone.set '11992176665'
    input_birthday.set '19111956'
    input_cpf.set '32523509806'
    location_select.select('São Paulo')
  end

  def fill_form_fail_financiamento(user)
    input_name.set user[:nome] unless user[:nome].empty?
    input_email.set user[:email] unless user[:email].empty?
    input_phone.set user[:telefone] unless user[:telefone].empty?
    input_birthday.set user[:nascimento] unless user[:nascimento].empty?
    input_cpf.set user[:cpf] unless user[:cpf].empty?
    location_select.select("#{user[:estado]}")
  end

  def show_result
    proposal_send.click
    wait_until_ver_condicoes_visible  
  end

  def show_result_not
    proposal_send.click
    #ver_parcelas_nao_avisar.click
  end   

  def fill_form
    input_name.set Faker::Name.first_name
    input_email.set Faker::Internet.email
    input_phone.set '11992176665'
    input_birthday.set '19111956'
    input_cpf.set Faker::CPF.numeric
    location_select.select('São Paulo')
  end

  def fill_form_fail(user)
    input_name.set user[:nome]
    input_email.set user[:email]
    input_phone.set user[:telefone]
    input_birthday.set user[:nascimento]
    input_cpf.set user[:cpf]
    location_select.select("#{user[:estado]}")
  end

  def ver_condicoes
    wait_until_input_valor_visible
    installment.input_valor.visible?
  end

end
