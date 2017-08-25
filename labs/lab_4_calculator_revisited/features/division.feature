Feature: Division
  As a mathematician
  I want my calculator to divide numbers
  So I can know their quotient

  Scenario: Divide numbers to get a quotient
    Given the dividend is greater than the divisor
    When I divide two different numbers
    Then I get the quotient

  Scenario: Divide by a zero
    When I divide a number by zero
    Then the quotient is zero

  Scenario: Divide numbers in different orders
    When I divide the first numbers by the second number
    And I divide the second numbers by the first number
    Then the quotient is same

  Scenario: Divide a number by one
    When I divide a number by one
    Then the quotient is same as the number

  Scenario: Divide more than two numbers
    When I divide more than two numbers
    Then I get the quotient of those numbers
