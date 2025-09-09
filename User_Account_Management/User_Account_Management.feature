Feature: User Account Management

  As a user
  I want to create and manage my account
  So that I can view my orders and save my shipping/payment information

  Scenario: User registration
    Given I am on the registration page
    When I enter valid user information and submit the form
    Then my account should be created and I should be logged in

  Scenario: User login
    Given I have a registered account
    When I enter my username and password on the login page
    Then I should be logged in and redirected to my account dashboard

  Scenario: Viewing order history
    Given I am logged in
    When I navigate to "My Account" and view my order history
    Then I should see a list of my previous orders
