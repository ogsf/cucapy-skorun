Given(/^I am on the SchoolRunner demo site login page$/) do
  @demo_login = DemoLoginPage.new
  @demo_login.load
end

Given(/^I log into the School Runner site as "([^"]*)"$/) do |user| #ToDo: Figure out how to pass 'user' into the Fixture argument
  @demo_login = DemoLoginPage.new
  @demo_login.load
  @demo_login.login(FIXTURE.user_1.username, FIXTURE.user_1.password)
end

When(/^I login with valid credentials$/) do
  @demo_login.login(FIXTURE.user_1.username, FIXTURE.user_1.password)   # Passing credentials from fixture.yml
end

Then(/^I am taken to the demo site home page$/) do
  @demo_home = DemoHomePage.new
  @demo_home.wait_for_h1_heading(10)  # site-prism method to wait f or an element to load, with optional time-out
  expect(@demo_home).to be_displayed  # site-prism method to verify page is loaded
  expect(@demo_home.h1_heading.text).to have_content("Home")  # Using Capybara .text method to return element content
end

When(/^I login with "([^"]*)" and "([^"]*)" credentials$/) do |username, password|
  @demo_login.login(username, password)
end

When(/^I login with missing "([^"]*)" and \/ or "([^"]*)" credentials$/) do |username, password|
  if username == 'username' ; @username = FIXTURE.user_1.username end
  if password == 'password' ; @password = FIXTURE.user_1.password end
  @demo_login.login(@username, @password)
end

Then(/^I see an error indicator$/) do
  if @username.nil? then
    expect(@demo_login.username_error.visible?).to be true
    @demo_login.has_username_error?
  elsif @password.nil? then
    expect(@demo_login.password_error).to be  # passes if obj is truthy (not nil or false)
    @demo_login.has_password_error?           # same validation using site-prism method
  end
end

Then(/^I remain on the demo site login page$/) do
  expect(@demo_login).to be_displayed
end