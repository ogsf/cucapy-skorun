Given(/^I am on the SchoolRunner demo site search page$/) do
  @demo_login = DemoLoginPage.new
  @demo_login.load
  @demo_login.login(FIXTURE.user_1.username, FIXTURE.user_1.password)
  @demo_home = DemoHomePage.new
  @demo_home.wait_for_search_link
  @demo_home.search_link.click
end

When(/^I view existing filters$/) do
  # require 'timeout'
  # begin
  #   Timeout::timeout(120) do
  #     @demo_search = DemoSearchPage.new
  #   end
  # rescue Timeout::Error
  #   puts "Page load timed out"
  # end
  @demo_search = DemoSearchPage.new
  find(@demo_search.existing_filters_link).click
  # @demo_search.wait_for_existing_filters_link
  # @demo_search.existing_filters_link.click
  sleep(2) #debug
end

Then(/^I see the expected saved filters$/) do
  pending # Write code here that turns the phrase above into concrete actions
end