#Ruby Gems
require 'selenium-webdriver'
require 'page-object'
require 'page-object/page_factory'  #For later refactor: github.com/cheezy/page-object/wiki/Creating-and-using-page-objects
require 'rspec/expectations'
require 'net/http'
require 'rubygems'
require 'json'

#Page Classes
require_relative '../../lib/home_page'
require_relative '../../lib/login_page'

#Hooks
#Create new browser object and close the browser for each scenario
Before do 
  @browser = Selenium::WebDriver.for (:firefox)
  @browser.manage().window().maximize()
end

After do 
  @browser.quit
end

World(PageObject::PageFactory)   #Included for PageFactory refactor