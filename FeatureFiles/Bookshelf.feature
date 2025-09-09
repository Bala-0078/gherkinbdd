Feature: Bookshelf
  As a visitor,
  I want to view available books,
  So that I can browse and select books to buy.

  Scenario: View bookshelf
    Given books exist in the database
    When the user navigates to the bookshelf page
    Then a list of books should be displayed

  Scenario: Filter by category
    Given books with categories exist
    When the user goes to the bookshelf
    And selects a category filter
    Then only books from the selected category should be shown

  Scenario: View book details
    Given the book exists
    When the user clicks on a book from the bookshelf
    Then the book details including title, author, price, stock, and description should be shown

  Scenario: Search books
    Given books exist
    When the user enters a search term in the search bar
    And submits the search
    Then books matching the search should be displayed
