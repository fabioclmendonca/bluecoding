*** Settings ***
Resource  ../pages/userLoggedPage.robot
Resource  ../pages/swaglabsLogin.robot
Resource  ../pages/cartPage.robot

*** Keywords ***
I open "${url}" page
    New Page  ${url}
    
I login with "${user}" user and "${password}" password
    Input username  ${user}
    Input password    ${password}
    Click on Login button
    
I click on menu button
    Click On Menu button

I should see "All Items" item
    Menu Item Should be Visible  ${all_items_button}

I should see "About" item
    Menu Item Should be Visible  ${about_button}

I should see "Logout" item
    Menu Item Should be Visible  ${logout_button}

I should see "Reset APP STATE" item
    Menu Item Should be Visible  ${reset_button}

I click on Add to cart button
    Click On Add Backpack to Cart

I click on cart button
    Click On Cart Button

I should see added item on cart list
    Backpack Should Be Visible

I select "${option}"
    Select Filter    ${option}

I should see product with price "${value}" in the first position
    Item Should be Visible in First position  ${value}

I should see product with price "${value}" in the end of product list
    Item Should be Visible in Last position  ${value}
    