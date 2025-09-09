Feature: Book Details
  As a customer,
  I want to view detailed information about a book,
  So that I can make informed purchasing decisions.

  Scenario: View book details page
    Given a book exists in the catalog
    When the user clicks on a book from the home page
    Then the book details including title, author, price, and stock are shown
