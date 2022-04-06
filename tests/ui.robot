*** Settings ***
Library   Browser

*** Test Cases ***
Draft
    # Open Browser  url=https://playwright.dev  headless=${False}
    New Page  https://playwright.dev
    Get Text    h1    ==    Playwright enables reliable end-to-end testing for modern web apps.
    [Teardown]  Close Browser
