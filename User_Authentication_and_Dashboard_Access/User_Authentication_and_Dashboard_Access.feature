Feature: User Authentication and Dashboard Access
  As a user,
  I want to securely register, log in, and access my dashboard,
  So that I can manage my account and information.

  Scenario: Valid login with registered credentials
    Given the user is registered
    And the user is on the login page
    When the user enters a valid username and password
    And clicks the 'Login' button
    Then the user should be redirected to the dashboard

  Scenario: Invalid login with incorrect credentials
    Given the user exists
    And the user is on the login page
    When the user enters invalid credentials
    And clicks the 'Login' button
    Then an error message should be displayed

  Scenario: Successful registration of a new user
    Given the user is on the registration page
    When the user enters valid registration details
    And submits the registration form
    Then registration should be successful
    And the user should be redirected to the login or dashboard page

  Scenario: Registration attempt with an already registered email
    Given the email is already registered
    And the user is on the registration page
    When the user enters an existing email
    And submits the registration form
    Then an error message should be displayed
    And the message should state "Email already exists"

  Scenario: Access dashboard after successful login
    Given the user is logged in
    When the user navigates to the dashboard
    Then the dashboard should be displayed
    And the dashboard should show the user's information

  Scenario: Logout from the application
    Given the user is logged in
    When the user clicks the 'Logout' button
    Then the user should be redirected to the login page
