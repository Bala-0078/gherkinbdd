Feature: Profile Management
  As a logged-in user,
  I want to update my profile information,
  So that my account details are accurate.

  Scenario: Profile update
    Given the user is logged in
    When the user goes to the profile page
    And edits profile fields
    And saves the changes
    Then the profile information should be updated and a confirmation shown
