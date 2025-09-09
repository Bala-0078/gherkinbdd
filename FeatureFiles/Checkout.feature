Feature: Checkout
  As a logged-in user,
  I want to complete my purchase,
  So that I can receive my books.

  Scenario: Proceed to checkout
    Given the user is logged in
    And the cart has items
    When the user goes to the cart
    And clicks "Checkout"
    Then the user should be redirected to the checkout page

  Scenario: Address validation
    Given the user is at checkout
    When the user enters an invalid address
    And submits the order
    Then an error "Invalid address" should be shown

  Scenario: Payment validation
    Given the user is at checkout
    When the user enters invalid card information
    And submits the order
    Then an error "Invalid payment" should be shown

  Scenario: Successful order placement
    Given the user has entered a valid address and payment
    And the cart has items
    When the user submits the order
    Then the order confirmation page should be shown and the order should appear in order history

  Scenario: Stock validation at checkout
    Given the cart has an item
    And the item's stock is set to zero before checkout
    When the user proceeds to checkout
    And submits the order
    Then an error "Item out of stock" should be shown
