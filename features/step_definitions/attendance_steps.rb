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
end

Then(/^I am shown the correct number of students$/) do
  @demo_class_attendance = DemoClassAttendancePage.new
  @demo_class_attendance.wait_for_student_count
  expect(page).to have_content('Students (0)')
end