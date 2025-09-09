Feature: Shopping Cart
  As a logged-in user,
  I want to manage my shopping cart,
  So that I can purchase selected books.

  Scenario: Add book to cart
    Given the user is logged in
    And the book is in stock
    When the user goes to the book detail page
    And clicks "Add to Cart"
    Then the book should be added to the cart and the cart count should increase

  Scenario: Update cart quantity
    Given the book is in the cart
    When the user goes to the cart
    And changes the quantity
    And updates the cart
    Then the cart should update the total and quantity

  Scenario: Remove item from cart
    Given the book is in the cart
    When the user goes to the cart
    And clicks "Remove" on the item
    Then the item should be removed from the cart

  Scenario: Empty cart
    Given the cart has items
    When the user goes to the cart
    And clicks "Empty Cart"
    Then the cart should be empty and a message should be shown

  Scenario: Add out-of-stock book
    Given the book stock is zero
    When the user goes to the book detail page
    And clicks "Add to Cart"
    Then an error "Book out of stock" should be shown
