Feature: Checkout Process
  As a customer,
  I want to complete my purchase with valid information,
  So that I can receive my order.

  Scenario: Successful checkout with valid information
    Given the user has book(s) in the cart
    When the user goes to checkout
    And enters a valid shipping address
    And enters valid payment information
    And selects a shipping method
    And places the order
    Then the order is placed and a confirmation page is shown

  Scenario: Checkout with missing required information
    Given the user has book(s) in the cart
    When the user goes to checkout
    And leaves required fields blank
    And tries to place the order
    Then an error message is shown for missing fields

  Scenario: Checkout with invalid payment information
    Given the user has book(s) in the cart
    When the user goes to checkout
    And enters invalid payment information
    And places the order
    Then an error message is shown for invalid payment

  Scenario: View order confirmation page
    Given the user has placed an order
    When the checkout is completed
    Then the order confirmation page shows order details and estimated delivery
