class DemoClassAttendancePage < SitePrism::Page

  set_url "/absences/class/"
  set_url_matcher /demo.schoolrunner.org\/?/

  element :student_count,       :css,     '.resultsHeader h2'

end