Feature: Password Reset
  As a user,
  I want to reset my password if I forget it,
  So that I can regain access to my account.

  Scenario: Password reset with registered email
    Given an account exists
    When the user goes to 'Forget Password'
    And enters the registered email
    And submits the form
    Then a password reset email is sent

  Scenario: Password reset with unregistered email
    Given the user is on the 'Forget Password' page
    When the user enters an unregistered email
    And submits the form
    Then an error message is shown for non-existent email
