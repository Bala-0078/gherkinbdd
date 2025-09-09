Feature: User Login
  As a registered user,
  I want to log in,
  So that I can access my account and features.

  Scenario: User login with valid credentials
    Given the user is registered
    When the user goes to the login page
    And enters a valid email and password
    And submits the login form
    Then the user should be logged in and redirected to the home or dashboard page

  Scenario: User login with invalid password
    Given the user is registered
    When the user goes to the login page
    And enters a valid email and an incorrect password
    And submits the login form
    Then an error message "Invalid credentials" should be shown
