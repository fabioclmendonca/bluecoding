*** Settings ***
Library  Browser


*** Variables ***
${menu_button}  //button[@id='react-burger-menu-btn']
${all_items_button}  //a[@id='inventory_sidebar_link']
${about_button}  //a[@id='about_sidebar_link']
${logout_button}  //a[@id='logout_sidebar_link']
${reset_button}  //a[@id='reset_sidebar_link']
${cart_button}  //div[@id='shopping_cart_container']

${add_to_cart_backpack}  //button[@id='add-to-cart-sauce-labs-backpack']

${filter_select}  //select[@data-test='product_sort_container']

${first_item_div}  //div[@class="inventory_list"]/child::div[1]
${last_item_div}  //div[@class="inventory_list"]/child::div[6]


*** Keywords ***
Click On Menu button
    Click    ${menu_button}
    
Menu Item Should be Visible
    [Arguments]  ${item}
    Wait For Elements State  ${item}  visible

Click On Add Backpack to Cart
    Click    ${add_to_cart_backpack}

Click On Cart Button
    Click    ${cart_button}

Select Filter
    [Arguments]  ${option}
    Select Options By    ${filter_select}    text  ${option}

Item Should be Visible in First position
    [Arguments]  ${value}
    Wait For Elements State  ${first_item_div}//div[@class="inventory_item_price"][text()="${value}"]  visible

Item Should be Visible in Last position
    [Arguments]  ${value}
    Wait For Elements State  ${first_item_div}//div[@class="inventory_item_price"][text()="${value}"]  visible
    

    