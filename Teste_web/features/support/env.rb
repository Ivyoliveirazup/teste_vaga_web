require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'webdrivers'
require 'cucumber'
require 'pry'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.americanas.com.br/'
  config.default_max_wait_time = 5
end

Capybara.configure do
  Capybara.page.driver.browser.manage.window.maximize
end
