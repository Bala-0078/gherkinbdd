Feature: Browse Books

  As a visitor
  I want to view a list of available books
  So that I can choose books to purchase

  Scenario: Viewing the list of books
    Given I am on the bookstore homepage
    When I navigate to the "Bookshelf" page
    Then I should see a list of books with titles, authors, and prices

  Scenario: Viewing book details
    Given I am on the "Bookshelf" page
    When I click on a book title
    Then I should see the book's detail page with description, price, and image
