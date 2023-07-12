class Lead < SitePrism::Page

    #formulario de envio de lead
    element :closed_modal, '.--close-modal'
    element :input_nome, 'form[class="Forms__cookie Forms__cookie--send-proposal"] input[name="fullName"]'
    element :input_email_lead,   'form[class="Forms__cookie Forms__cookie--send-proposal"] input[name="email"]'
    element :input_telefone, 'form[class="Forms__cookie Forms__cookie--send-proposal"] input[name="numberPhone"]'
    elements :button_send, '#ButtonSendProposal'

    #cockpit
    element :input_email, '#txtNome'
    element :input_senha, '#txtSenha'
    element :button_logar, '#btLogin_'
    element :card_comercial, '.icon.iconeComercial'
    element :menu_cliente, '.menuItem.clientes.dropdown-toggle'
    element :input_cnpj, '#txtformCNPJ'
    element :buscar_cliente, '#btnBuscarCliente'
    element :acessar_page_cockpit, '#centralRevendedor'
    element :filtro_calendario, '.react-datepicker-wrapper'
    element :card_gerenciar_lead, '.StyleCard-sc-12gk7a3-1.sc-4yiqt-0.hyFQDb'






    def preencher_formulario(nome, email, telefone)
        if wait_until_closed_modal_visible
            closed_modal.click
        end   
        input_nome.send_keys nome     
        input_email_lead.send_keys email
        input_telefone.send_keys telefone
        button_send[1].click
    end    
    
    def acessar_cockpit(email, senha)
        input_email.send_keys email
        input_senha.send_keys senha
        button_logar.click
        wait_until_card_comercial_visible
        click_link 'COMERCIAL'
        menu_cliente.click
        click_link 'Ficha do Cliente'
        wait_until_input_cnpj_visible
        input_cnpj.send_keys "43575234000170"
        buscar_cliente.click
        wait_until_acessar_page_cockpit_visible
        acessar_page_cockpit.click
        sleep 5
        page.switch_to_window page.windows.last
        page.refresh
        
        wait_until_card_gerenciar_lead_visible
        click_link 'Gerenciar leads'
        sleep 5
        click_link_or_button 'Thays envio simples quatro'
    end     

end