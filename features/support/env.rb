#Ruby Gems
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot'
require 'capybara-screenshot/cucumber'
require 'site_prism'
require 'rspec/expectations'
require 'yaml'
require 'recursive-open-struct'
require 'capybara/poltergeist'
require 'parallel_tests'
require 'timeout'
require 'net/http'
require 'rubygems'
require 'json'
require 'pry'
Bundler.require :default, :test

# Capybara.default_wait_time = 20   #This is not used by site-prism unless a spec_file is configured. This is an RSpec thing I think.

Capybara.default_driver = :selenium

WEB_BROWSER ||= (ENV["WEB_BROWSER"] || 'firefox').downcase.to_sym

Capybara.register_driver WEB_BROWSER do |app|
  Capybara::Selenium::Driver.new(app, :browser => WEB_BROWSER)
end

Capybara.current_driver = :selenium
Capybara.run_server = false
Capybara.app_host = 'https://demo.schoolrunner.org'

ENV['SCREENSHOT_PATH'] ||= '../reports/'
Capybara.save_and_open_page_path = ENV['SCREENSHOT_PATH']
Capybara::Screenshot.register_driver(WEB_BROWSER) do |driver, path|
  driver.browser.save_screenshot(path)
end

World(Capybara)