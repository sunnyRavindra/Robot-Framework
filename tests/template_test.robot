*** Settings ***
Library           SeleniumLibrary
Test Template     Login to the application soucedemo

*** Test Cases ***
Valid Login
    standard_user    secret_sauce

Invalid Login
    invalid_user    wrong_password

*** Keywords ***
Login to the application soucedemo
    [Arguments]    ${username}    ${password}
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    css=.btn_action
    Sleep    5
    Close Browser