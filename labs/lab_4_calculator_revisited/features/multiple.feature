Feature: Multiplication
  As a mathematician
  I want my calculator to multiple numbers
  So I can know their product

  Scenario: Multiply numbers to get a product
    When I multiple two different numbers
    Then I get the product

  Scenario: Multiply zero
    When I multiple a number with zero
    Then the product is zero

  Scenario: Multiply numbers in different orders
    When I multiply the first numbers to the second number
    And I multiply the second numbers to the first number
    Then the products is same

  Scenario: Multiply a number by one
    When I multiple a number with one
    Then the product is same as the number

   Scenario: Multiply more than two numbers
    When I multiply more than two numbers
    Then I get the product of those numbers
