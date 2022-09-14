After do |scn|
  image = page.save_screenshot("results/screenshots/#{scn.name}.png")
  attach(image, 'image/png')

  Allure.add_attachment(
    name: 'filename',
    source: File.open("results/screenshots/#{scn.name}.png"),
    type: Allure::ContentType::PNG,
    test_case: true
  )
  Capybara.current_session.driver.quit
end
