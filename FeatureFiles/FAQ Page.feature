Feature: FAQ Page
  As a user,
  I want to view the FAQ page,
  So that I can find answers to common questions.

  Scenario: View FAQ page
    Given the user is on the website
    When the user navigates to the FAQ page
    Then the FAQ content is displayed
