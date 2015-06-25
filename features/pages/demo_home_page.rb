class DemoHomePage < SitePrism::Page

  set_url "/home{?asof=*}"
  set_url_matcher /demo.schoolrunner.org\/?/

  #Header Elements  #ToDo: Redefine as a site-prism section
  element :home_link,                               :css,     'a[href="/home"]'
  element :academics_menu,                          :css,     'a[href="/academics"]'
  element :academics_assessment_link,               :xpath,   '//li/a[.="Assessments"]'
  element :academics_add_assessment_link,           :xpath,   '//li/a[.="Add Assessment"]'
  element :academics_add_assessment_summary_link,   :xpath,   '//li/a[.="Add Assessment Summary"]'
  element :academics_bulk_assessment_import_link,   :xpath,   '//li/a[.="Bulk_Assessment_Import"]'
  element :academics_Progress_Reports_link,         :xpath,   '//li/a[.="Progress Reports"]'
  element :academics_Report_Cards_link,             :xpath,   '//li/a[.="Report Cards"]'
  element :attendance_menu,                         :xpath,   '//a[.="Attendance"]'     # Duplicate CSS href... 'a[href="/absences/class/"]'
  element :attendance_class_attendance_link,        :xpath,   '//li/a[.="Class Attendance"]'
  element :attendance_daily_attendance_link,        :xpath,   '//li/a[.="Daily Attendance"]'
  element :attendance_staff_attendance_link,        :xpath,   '//li/a[.="Staff Attendance"]'
  element :culture_menu,                            :css,     'a[href="/demerits"]'
  element :culture_slips_link,                      :xpath,   '//li/a[.="Slips"]'
  element :culture_behaviors_link,                  :xpath,   '//li/a[.="Behaviors"]'
  element :culture_lunch_detention_link,            :xpath,   '//li/a[.="Lunch Detention"]'
  element :culture_communication_link,              :xpath,   '//li/a[.="Communication"]'
  element :culture_incidents_link,                  :xpath,   '//li/a[.="Incidents"]'
  element :culture_interventions_link,              :xpath,   '//li/a[.="Interventions"]'
  element :search_link,                             :css,     'a[href="/search"]'
  element :analysis_menu,                           :css,     'a[href="/analysis/"]'
  element :analysis_analysis_link,                  :xpath,   '//li/a[.="Analysis"]'
  element :analysis_student_dashboard_link,         :xpath,   '//li/a[.="Student Dashboard"]'
  element :analysis_staff_dashboard_link,           :xpath,   '//li/a[.="Staff Dashboard"]'
  element :configure_menu,                          :css,     'a[href="/setup/settings/"]'
  element :configure_configure_link,                :xpath,   '//li/a[.="Configure"]'
  element :configure_export_link,                   :xpath,   '//li/a[.="Export"]'
  element :configure_settings_link,                 :xpath,   '//li/a[.="Settings"]'
  element :help_link,                               :css,     'a[href="http://schoolrunner.freshdesk.com/support/home"]'
  element :search_icon_link,                        :css,     'input#searchBox'
  element :quality_menu,                            :css,     'a[href="/settings"]'
  element :quality_settings_link,                   :xpath,   '//li/a[.="Settings"]'
  element :quality_change_password_link,            :xpath,   '//li/a[.="Change Password"]'
  element :quality_logout_link,                     :xpath,   '//li/a[.="Logout"]'
  element :school_menu,                             :css,     '.school-term-list-item'
  element :school_menu_list,                        :xpath,   '//div[.="Hogwarts"]'
  element :school_menu_list_east,                   :css,     'li[title="East"]'
  
  #Home Body Element
  element :h1_heading,                              :xpath,   '//h1[.="Home"]'  #xpath allows us to specify the text in the element
end