*** Settings ***
Library  Browser

*** Variables ***
${backpack_cart_list}  //a[@id='item_4_title_link']/div[text()='Sauce Labs Backpack']


*** Keywords ***
Backpack Should Be Visible
    Wait For Elements State  ${backpack_cart_list}  visible