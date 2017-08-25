Scenario: Unable to check out while signed out
Given I am on the Shopping Cart page with a product displaying
When I click the 'Proceed to checkout' button
Then I will be navigated to the login page.

Scenario: Prime shipping eligibility - non-Prime member
Given I am on a Prime Exclusive search results page
And I select an item
When the product page displays
Then the "Add to Cart" button is not available

Scenario: Prime shipping availability - non-Prime member
Given I am logged in as a non-Prime member
And I select a prime-eligible product
When I add product to cart
The product is no longer designated as prime item.

Scenario: Prime shipping eligibility - Prime member
Given I am on a Prime Exclusive search results page
And I select an item
When the product page displays
Then the "Add to Cart" button is available