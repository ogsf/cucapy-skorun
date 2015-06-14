Given(/^I am on the SchoolRunner home page$/) do
  #Creating browser page object from HOME class (lib/home_page.rb)
  #Refactor this to use PageFactory, e.g. visit HomePage (see github.com/cheezy/page-object/wiki/Creating-and-using-page-objects)
  #HOME class contains the URL for the page object
  @home = HomePage.new(@browser)
  @home.goto
end

When(/^I click the "([^"]*)" link$/) do |link_text|
  @home.sign_in_link
end

When(/^I click the "([^"]*)" button$/) do |button_text|
  @home.click_learn_more_button
end

Then(/^I am taken to the Learn More text$/) do
  #ToDo Hard coded string should be moved to a yaml and referenced
  expect(@home.learn_more_text).to include("Data Should Make Your Job Easier, Not Harder.")
end

Then(/^I am taken to the login page$/) do
  @login = LoginPage.new(@browser)
  expect(@login.page_url_value).to include("app.schoolrunner.org/login")
end