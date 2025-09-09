Feature: Shopping Cart

  As a customer
  I want to add books to my shopping cart
  So that I can purchase multiple books in one order

  Scenario: Adding a book to the cart
    Given I am viewing a book's detail page
    When I click "Add to Cart"
    Then the book should be added to my shopping cart

  Scenario: Viewing the shopping cart
    Given I have added books to my cart
    When I go to the "Shopping Cart" page
    Then I should see a list of books in my cart with quantities and total price

  Scenario: Removing a book from the cart
    Given I have books in my shopping cart
    When I click "Remove" next to a book
    Then the book should be removed from my cart
