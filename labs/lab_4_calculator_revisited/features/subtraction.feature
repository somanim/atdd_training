Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know their difference

  Scenario: Subtracting 2 different integer to get a difference
    When I subtract a smaller number from a greater numbers
    Then I get the difference

  Scenario: Subtracting 2 different integer to get a difference
    When I subtract a first number from a second numbers
    And I subtract a second number from a first numbers
    Then difference from first should not match the second one

  Scenario: Subtracting zero
    When I subtract zero from a first integer that is greater than zero
    Then the difference is that same first integer

  Scenario:  Subtracting the same integer
    When I subtract the same numbers
    Then the difference is zero

  Scenario: Subtracting more than two numbers
    When I subtract more than two numbers
    Then I get the difference of those numbers
