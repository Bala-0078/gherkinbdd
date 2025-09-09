Feature: Shipping Addresses
  As a logged-in user,
  I want to add a shipping address,
  So that I can use it for order delivery.

  Scenario: Add shipping address
    Given the user is logged in
    When the user goes to shipping addresses
    And adds address details
    And saves the address
    Then the address should be saved and listed
