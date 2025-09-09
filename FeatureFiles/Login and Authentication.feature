Feature: Login and Authentication
  As a registered user,
  I want to log in to my account,
  So that I can access personalized features.

  Scenario: Login with valid credentials
    Given an account exists
    When the user goes to the login page
    And enters valid credentials
    And submits the form
    Then the user is logged in

  Scenario: Login with invalid credentials
    Given the user is on the login page
    When the user enters invalid credentials
    And submits the form
    Then an error message is shown for invalid login
