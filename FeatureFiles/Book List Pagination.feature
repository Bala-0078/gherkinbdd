Feature: Book List Pagination
  As a user,
  I want to navigate through multiple pages of books,
  So that I can browse the entire catalog.

  Scenario: Paginate book list
    Given there are many books in the catalog
    When the user goes to the home or bookshelf page
    And clicks 'Next' or 'Previous'
    Then the book list updates to the next or previous page
