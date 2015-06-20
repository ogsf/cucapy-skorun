Feature: Logging in to demo site

  As a user I can log in from the demo site login page

  Scenario: Login from the demo site login page
    Given I am on the SchoolRunner demo site login page
    When I login with valid credentials
    Then I am taken to the demo site home page

  Scenario: Login from the demo site login page
    Given I am on the SchoolRunner demo site login page
    When I login with valid credentials
    Then I am taken to the demo site home page