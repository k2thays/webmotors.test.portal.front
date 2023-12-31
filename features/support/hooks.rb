After do
  Capybara.reset_session!
end

After do |scn| 
  binding.pry if scn.failed? && ENV['deb']
  image = page.save_screenshot("results/screenshots/#{scn.name}.png")
  attach(image, 'image/png')

  Allure.add_attachment(
    name: 'filename',
    source: File.open("results/screenshots/#{scn.name}.png"), 
    type: Allure::ContentType::PNG,
    test_case: true
  )
  Capybara.reset_session!
end