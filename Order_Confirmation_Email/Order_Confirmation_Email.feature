Feature: Order Confirmation Email

  As a customer
  I want to receive an email confirmation after placing an order
  So that I have a record of my purchase

  Scenario: Receiving order confirmation email
    Given I have successfully placed an order
    Then I should receive an order confirmation email with order details
