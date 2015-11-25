Given(/^I am on the SchoolRunner demo site search page$/) do
  @demo_login = DemoLoginPage.new
  @demo_login.load
  @demo_login.login(FIXTURE.user_1.username, FIXTURE.user_1.password)
  @demo_home = DemoHomePage.new
  @demo_home.wait_for_search_link
  @demo_home.search_link.click
end

When(/^I view existing filters$/) do
  require 'timeout'
  begin
    Timeout::timeout(180) do
      @demo_search = DemoSearchPage.new
    end
  rescue Timeout::Error
    puts "Page load timed out"
  end
  @demo_search = DemoSearchPage.new
  (@demo_search.existing_filters_link).click
  # @demo_search.wait_for_existing_filters_link
  # @demo_search.existing_filters_link.click
  sleep(2) #debug  TODO: Replace the sleep with a wait for on 'aria-expanded=true'
end

Then(/^I see the expected existing filters$/) do
  within(@demo_search.existing_filters_panel) do
    expect(page).to have_content('1 WG 2018 (Wade)')
    expect(page).to have_content('2016 Interventions (Crawford)')
    expect(page).to have_content('5th Period Speech II (Webb)')
    expect(page).to have_content('Volleyball - CPA (Public, all)')
  end
end