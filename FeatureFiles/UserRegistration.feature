Feature: User Registration
  As a new visitor,
  I want to register an account,
  So that I can access bookstore features.

  Scenario: User registration with valid data
    Given the user is not logged in
    When the user navigates to the registration page
    And enters a valid username, email, and password
    And submits the registration form
    Then the user should be registered and redirected to the login or home page

  Scenario: User registration with existing email
    Given the user is not logged in
    And an account with the email already exists
    When the user navigates to the registration page
    And enters an existing email
    And submits the registration form
    Then an error message "Email already exists" should be shown
