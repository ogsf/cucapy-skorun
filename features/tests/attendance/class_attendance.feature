Feature: Class Attendance

  As a user I can record and view class, daily and staff attendance information

  Scenario: A user views the class attendance for a specific school
    Given I log into the School Runner site as "user_1"
    And navigate to the "Class Attendance" page
    When I select the "East" school
    Then I am shown the correct number of students