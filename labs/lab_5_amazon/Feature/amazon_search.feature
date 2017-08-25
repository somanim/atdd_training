Feature: Search
  Scenario: Search for Prime Exclusive product
    Given I am on the Amazon.com website
    When I select Prime Exclusive from the search dropdown
    And click the search button
    Then all Prime Exclusive products display

  Scenario: View product page from results
    Given I am on the Amazon.com Prime Exclusive products page
    And I enter 'phone' in the search box
    And I click the search button
    And all phone products will be displayed
    When I click on one phone product
    Then the product page will display

  Scenario: Search function returns only items requested
    Given I am on the Amazon.com home page
    And I enter 'Amazon Basic' in the search box
    When I click the search button
    Then ONLY Amazon Basic products will display
