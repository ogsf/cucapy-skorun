Given(/^navigate to the "([^"]*)" page$/) do |arg1|  #ToDo: Abstract "arg1" into the step code
  @demo_home = DemoHomePage.new
  @demo_home.wait_for_attendance_menu
  @demo_home.attendance_menu.click
end

When(/^I select the "([^"]*)" school$/) do |arg1|
  @demo_home.school_menu.click
  @demo_home.wait_for_school_menu_list
  @demo_home.school_menu_list.click
  @demo_home.school_menu_list_east.click
  sleep(5)
end

Then(/^I am shown the correct number of students$/) do
  pending # Write code here that turns the phrase above into concrete actions
end