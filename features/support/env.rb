require 'allure-cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'cpf_faker'
require 'faker'
require 'pry'
require 'report_builder'
require 'rubocop'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper'
require  'parallel_tests'

World(PageObjects)
Faker::Config.locale = 'pt-BR'

AMBIENTE = YAML.load_file("#{File.dirname(__FILE__)}/config/environments.yml")
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{AMBIENTE['ambiente']}.yml")

if ENV['headless']
  Selenium::WebDriver::Chrome::Service.driver_path = "#{Dir.pwd}/webdrivers/chromedriver"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_headless_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument '--headless'
      options.add_argument '--disable-gpu'
      options.add_argument '--no-sandbox'
      options.add_argument '--incognito'
      options.add_argument '--window-size=1280,1280'
      options.add_argument '--disable-site-isolation-trials'
      options.add_argument '--disable-dev-shm-usage'
      options.add_argument 'user-agent="Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36"'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: chrome_headless_options)
  end
  Capybara.default_driver = :selenium_chrome_headless
else
  Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
  Capybara.register_driver :chrome do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument '--disable-gpu'
      options.add_argument '--no-sandbox'
      options.add_argument '--incognito'
      options.add_argument '--window-size=1280,1280'
      options.add_argument '--disable-site-isolation-trials'
      options.add_argument '--start-maximized'
      options.add_argument 'user-agent="Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36"'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: chrome_options)
  end
  Capybara.default_driver = :chrome
end

Capybara.configure do |config|
  config.app_host = CONFIG['url_webmotor']
  config.default_max_wait_time = 30
  Capybara.page.driver.browser.manage.window.maximize
end

AllureCucumber.configure do |c|
  c.clean_results_directory = true
end

def take_screenshot(pasta, nome_arquivo)
  file_path = "./results/screenshots/#{pasta}"
  screenshot = "#{file_path}/#{nome_arquivo}.png"
  page.save_screenshot(screenshot)
  attach(screenshot, 'image/png')
  Allure.add_attachment(name: nome_arquivo, source: File.open(screenshot), type: Allure::ContentType::PNG, test_case: true)
end
