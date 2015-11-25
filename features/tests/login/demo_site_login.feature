Feature: Logging in to demo site

  As a user I can log in from the demo site login page

  Scenario: Login from the demo site login page
    Given I am on the SchoolRunner demo site login page
    When I login with valid credentials
    Then I am taken to the demo site home page

  Scenario Outline: Invalid login from the demo site login page
    Given I am on the SchoolRunner demo site login page
    When I login with missing "<username>" and / or "<password>" credentials
    Then I see an error indicator
    And I remain on the demo site login page

    Examples:
    | username | password |
    |          |          |
    | username |          |
    |          | password |

  Scenario: Login with invalid credentials
    Given I am on the SchoolRunner demo site login page
    When I log into the School Runner site as "user_2"
    Then I see an invalid credentials error message
    