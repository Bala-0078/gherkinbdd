Feature: Search Books

  As a visitor
  I want to search for books by title or author
  So that I can quickly find the books I am interested in

  Scenario: Searching for a book by title
    Given I am on the bookstore homepage
    When I enter a book title in the search box and submit
    Then I should see search results matching the title

  Scenario: Searching for a book by author
    Given I am on the bookstore homepage
    When I enter an author's name in the search box and submit
    Then I should see search results matching the author
