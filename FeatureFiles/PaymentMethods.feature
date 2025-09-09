Feature: Payment Methods
  As a logged-in user,
  I want to add a credit card,
  So that I can use it for purchases.

  Scenario: Add credit card
    Given the user is logged in
    When the user goes to payment methods
    And adds card details
    And saves the card
    Then the card should be saved and listed in payment methods
