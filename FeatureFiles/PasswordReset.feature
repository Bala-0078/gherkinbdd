Feature: Password Reset
  As a user,
  I want to reset my password,
  So that I can regain access if I forget it.

  Scenario: Password reset request
    Given the user is registered
    When the user goes to the login page
    And clicks "Forgot Password"
    And enters a registered email
    And submits the request
    Then a confirmation message about the reset email should be shown

  Scenario: Password reset with valid token
    Given the user has requested a password reset and has a valid token
    When the user opens the reset link from the email
    And enters a new password
    And submits the form
    Then the password should be updated and the user can log in with the new password
