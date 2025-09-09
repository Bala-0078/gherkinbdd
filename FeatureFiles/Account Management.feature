Feature: Account Management
  As a new user,
  I want to create an account,
  So that I can make purchases and track my orders.

  Scenario: Create new account
    Given the user does not have an existing account
    When the user goes to 'Create new account'
    And enters a valid username and email
    And submits the form
    Then the account is created and a confirmation email is sent

  Scenario: Create account with existing username
    Given a username already exists
    When the user goes to 'Create new account'
    And enters the existing username
    And submits the form
    Then an error message is shown for duplicate username
