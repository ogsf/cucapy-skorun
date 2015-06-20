Given(/^I am on the SchoolRunner home page$/) do
  @home_page = HomePage.new
  @home_page.load
end

When(/^I click the "([^"]*)" link$/) do |link_text|
  # click_link(link_text)
  @home_page.sign_in_link.click
end

When(/^I click the "([^"]*)" button$/) do |button_text|
  @home_page.learn_more_button.click
end

Then(/^I am taken to the Learn More text$/) do
  #ToDo Hard coded string should be moved to a yaml and referenced
  expect(@home_page.learn_more_text.text).to match("Data Should Make Your Job Easier, Not Harder.")
end

Then(/^I am taken to the login page$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  @login_page = LoginPage.new
  @login_page.wait_for_username_input(10)
  expect(@login_page).to have_username_input
  puts page.current_url
  expect(page.current_url).to include("app.schoolrunner.org/login")
end