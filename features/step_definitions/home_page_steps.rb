Given(/^I am on the SchoolRunner home page$/) do
  @home = HomePage.new
  @home.load
end

When(/^I click the "([^"]*)" link$/) do |link_text|
  click_link(link_text)
  sleep(5)
end

# When(/^I click the "([^"]*)" button$/) do |button_text|
#   @home.click_learn_more_button
# end

# Then(/^I am taken to the Learn More text$/) do
#   #ToDo Hard coded string should be moved to a yaml and referenced
#   expect(@home.learn_more_text).to include("Data Should Make Your Job Easier, Not Harder.")
# end

# Then(/^I am taken to the login page$/) do
#   @login = LoginPage.new(@browser)
#   expect(@login.page_url_value).to include("app.schoolrunner.org/login")
# end