Feature: Home Page Display
  As a visitor,
  I want to view the home page,
  So that I can see featured books and navigate the site.

  Scenario: Home page loads successfully
    Given the user is on the home page
    When the page loads
    Then featured books and navigation are displayed
