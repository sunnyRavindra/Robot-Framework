*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.saucedemo.com/
${BROWSER}        chrome
${VALID_USERNAME}    standard_user
${VALID_PASSWORD}    secret_sauce
${INVALID_USERNAME}    invalid_user
${INVALID_PASSWORD}    wrong_password

*** Test Cases ***
Valid Login
    Given a web browser is at the SauceDemo login page
    When a user attempts to login with valid credentials
    Then the user should be able to login successfully

Invalid Login
    Given a web browser is at the SauceDemo login page
    When a user attempts to login with invalid credentials
    Then the user should not be able to login

*** Keywords ***
Given a web browser is at the SauceDemo login page
    Open Browser    ${URL}    ${BROWSER}

When a user attempts to login with valid credentials
    Input Text    id=user-name    ${VALID_USERNAME}
    Input Text    id=password    ${VALID_PASSWORD}
    Click Button    css=.btn_action

Then the user should be able to login successfully
    Wait Until Page Contains    Products
    Close Browser

When a user attempts to login with invalid credentials
    Input Text    id=user-name    ${INVALID_USERNAME}
    Input Text    id=password    ${INVALID_PASSWORD}
    Click Button    css=.btn_action

Then the user should not be able to login
    Wait Until Page Contains    Epic sadface
    Close Browser