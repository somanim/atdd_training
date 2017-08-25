Feature: Cart

Scenario: Add product to cart
Given I am on a product page
And I click the 'Add to cart' button
And the Cart will will increment by 1
When I click on the cart button
Then the product will display
And the price will be the same as on the product page

Scenario: Remove product from cart
Given I am on the Shopping Cart page with a product displaying
When I click on the 'delete' link for that product
Then the product is removed from the cart
And a removal confirmation message is displayed
