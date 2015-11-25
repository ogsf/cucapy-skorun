Feature: Search page filters on demo site

  As a user I can CRUD search filters

  Scenario: A user can view existing filters
    Given I am on the SchoolRunner demo site search page
    When I view existing filters
    Then I see the expected existing filters