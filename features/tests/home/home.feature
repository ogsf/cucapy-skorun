Feature: Home page navigation

  As a user I can navigate to useful places from the home page

  Scenario: Navigate to login page
    Given I am on the SchoolRunner home page
    When I click the "Sign In" link
    Then I am taken to the login page

  Scenario: Navigate to Learn More text
    Given I am on the SchoolRunner home page
    When I click the "Learn More" button
    Then I am taken to the Learn More text