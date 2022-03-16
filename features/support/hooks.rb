After do
  puts 'Fechando Navegador'
  Capybara.current_session.driver.quit
end

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = 'results/report.json'
    config.report_path = 'results/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = 'Report Builder - Testes automatizados em Web'
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = { 'Project name' => 'Web WebMotors', 'Platform' => 'Web',
                               'Report generated' => time }
  end
  ReportBuilder.build_report
end
