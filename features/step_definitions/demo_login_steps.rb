Given(/^I am on the SchoolRunner demo site login page$/) do
  @demo_login = DemoLoginPage.new
  @demo_login.load
end

When(/^I login with valid credentials$/) do
  @demo_login.username_input.set FIXTURE.user_1.username  #'FIXTURE' is defined in env.rb, user_1.username is in fixture.yml
  @demo_login.password_input.set FIXTURE.user_1.password
  @demo_login.sign_in_button.click
end

Then(/^I am taken to the demo site home page$/) do
  @demo_home = DemoHomePage.new
  # puts @demo_login.current_url
  # puts @demo_home.h1_heading.text
  expect(@demo_home).to be_displayed
  expect(@demo_home.h1_heading.text).to have_content("Home")
end

When(/^I login with "([^"]*)" and "([^"]*)" credentials$/) do |username, password|
  @demo_login.username_input.set username
  @demo_login.password_input.set password    #ToDo: Abstract login steps to a method in DemoLoginPage.
  @demo_login.sign_in_button.click
end

When(/^I login with missing "([^"]*)" and \/ or "([^"]*)" credentials$/) do |username, password|
  if username == 'username' ; @username = FIXTURE.user_1.username end
  if password == 'password' ; @password = FIXTURE.user_1.password end
  # puts "username is #{@username} and password is #{@password}"  #DEBUG USE ONLY
  @demo_login.username_input.set @username
  @demo_login.password_input.set @password
  @demo_login.sign_in_button.click
end

Then(/^I see an error indicator$/) do
  if @username.nil? then
    expect(@demo_login.username_error.visible?).to be true
    @demo_login.has_username_error?
  elsif @password.nil? then
    # expect(@demo_login.password_error).to exist  #Why doesn't this work? ToDo: Find out.
    @demo_login.has_password_error?
  end
end

Then(/^I remain on the demo site login page$/) do
  expect(@demo_login).to be_displayed
end