Feature: Checkout

  As a customer
  I want to checkout and purchase the books in my cart
  So that I can complete my order

  Scenario: Successful checkout
    Given I am on the "Shopping Cart" page with books in my cart
    When I click "Checkout" and provide valid shipping and payment information
    Then my order should be placed and I should see an order confirmation page

  Scenario: Checkout with missing information
    Given I am on the "Checkout" page
    When I leave required fields blank and submit the form
    Then I should see validation messages indicating the missing information
