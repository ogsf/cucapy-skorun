Given(/^I am on the SchoolRunner demo site login page$/) do
  @demo_login = DemoLoginPage.new
  @demo_login.load
end

When(/^I login with valid credentials$/) do
  @demo_login.username_input.set "kevint@boulder.net"
  @demo_login.password_input.set "$8ndyGirl"
  @demo_login.sign_in_button.click
  sleep(5)  #Delay to observe results
end

Then(/^I am taken to the demo site home page$/) do
  @demo_home = DemoHomePage.new
  puts @demo_login.current_url
  puts @demo_home.h1_heading.text
  expect(@demo_home).to be_displayed
  expect(@demo_home.h1_heading.text).to have_content("Home")
end