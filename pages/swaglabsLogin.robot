*** Settings ***
Library  Browser


*** Variables ***
${username_input}  //input[@id='user-name']
${password_input}  //input[@id='password']
${login_button}  //input[@id='login-button']

*** Keywords ***
Input username
    [Arguments]  ${username}
    Type Text    ${username_input}    ${username}


Input password
    [Arguments]  ${password}
    Type Secret    ${password_input}    ${password}

Click on Login button
    Click    ${login_button}