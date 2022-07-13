Quando('verifico todos anuncios de um vendedor') do
    #Acessando carros pelo menu superior
    seller.select_upper_menu
    
    #Escolhendo um item
    home_page.alterar_aba
    expect(page).to have_text "Carros Usados e Seminovos em Todo o Brasil"
    seller.choose_car

    #Ver todos os carros desse vendedor
    home_page.alterar_aba
    expect(page).to have_text "Combustível"
    seller.car_list
end
  
Entao('sou redirecionado para a lista de anuncios') do
    #Assert via css para catalogo de itens
    expect(page).to have_css ".FilterResult__container__list:nth-child(1)"
    take_screenshot('lista_itens_vendedor','itens_vendedor')
end