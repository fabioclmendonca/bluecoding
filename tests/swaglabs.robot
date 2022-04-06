*** Settings ***
Resource  ../steps/swaglabsSteps.robot

*** Test Cases ***
Menu Is Available and Itens are visible
    Given I open "http://www.saucedemo.com" page
    And I login with "standard_user" user and "secret_sauce" password
    When I click on menu button
    And I should see "All Items" item
    And I should see "About" item
    And I should see "Logout" item
    And I should see "Reset APP STATE" item

Add Item to Cart
    Given I open "http://www.saucedemo.com" page
    And I login with "standard_user" user and "secret_sauce" password
    When I click on Add to cart button
    And I click on cart button
    Then I should see added item on cart list

Filter Products by Price
    Given I open "http://www.saucedemo.com" page
    And I login with "standard_user" user and "secret_sauce" password
    When I select "Price (low to high)"
    Then I should see product with price "7.99" in the first position
    And I should see product with price "49.99" in the end of product list