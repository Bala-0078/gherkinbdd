Feature: Error Handling and Navigation
  As a user,
  I want to be informed when I navigate to an invalid page,
  So that I can return to the home page easily.

  Scenario: Handle invalid request path
    Given the user is on the website
    When the user enters an invalid URL or request path
    Then a bad request page is shown with a link to the home page
