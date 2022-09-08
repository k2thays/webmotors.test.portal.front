Quando('quero acessar o menu superior para ver as notificações') do
  home_page.menu_notificacoes
  home_page.notificacao_slide
end

Entao('abre o menu com as notificações') do
  expect(page).to have_text "Bora acelerar\nna nova Webmotors?"
  take_screenshot('menu_notificacao', 'notificacao')
end
