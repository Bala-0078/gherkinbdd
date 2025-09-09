Feature: Shopping Cart Management
  As a customer,
  I want to add, update, and remove books in my shopping cart,
  So that I can manage my purchases before checkout.

  Scenario: Add book to cart
    Given a book is in stock
    When the user goes to the book details page
    And enters a quantity
    And clicks on the 'Add to Cart' button
    Then the book is added to the cart and a confirmation is shown

  Scenario: Prevent adding out-of-stock book to cart
    Given a book is out of stock
    When the user goes to the book details page of the out-of-stock book
    And clicks on the 'Add to Cart' button
    Then an error message is shown and the book is not added to the cart

  Scenario: View shopping cart contents
    Given the user has added book(s) to the cart
    When the user clicks on the 'Shopping Cart'
    Then the cart displays the correct items, quantities, and prices

  Scenario: Update item quantity in cart
    Given a book is in the cart
    When the user goes to the shopping cart
    And changes the quantity
    And clicks on the 'Update' button
    Then the cart updates the quantity and recalculates the total price

  Scenario: Delete item from cart
    Given a book is in the cart
    When the user goes to the shopping cart
    And clicks 'Delete' on the item
    Then the item is removed from the cart
