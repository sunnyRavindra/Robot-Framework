*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Valid Login with Template
    [Template]    Login to the application soucedemo
    [Tags]    Smoke    Regression
    standard_user    secret_sauce
    invalid_user    wrong_password

Valid Login without template
    Login to the application soucedemo    standard_user    secret_sauce

*** Keywords ***
Login to the application soucedemo
    [Arguments]    ${username}    ${password}
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    css=.btn_action
    Sleep    5
    Close Browser