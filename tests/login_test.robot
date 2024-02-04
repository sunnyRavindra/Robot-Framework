*** Settings ***
Library    SeleniumLibrary
# Test Setup  Open Application    SouceDemo
# *** Test Cases ***
# SouceDemo Valid Login
#     Open Browser    browser=chrome    alias=Chrome   url=${SouceDemoURL}
#     Input Text    id:user-name    ${SouceDemoValidUsername}
#     Input Text    id:password    ${SouceDemoInvalidPassword}
#     Click Button    css:.btn_action
#     Wait Until Element Is Visible    css:.inventory_list1
#     Sleep    5s
#     Title Should Be    Swag Labs    Title is not as expected
#     [Teardown]   Close Browser

# SouceDemo Invalid Login Username
#     Open Browser    browser=chrome    alias=Chrome   url=${SouceDemoURL}
#     Input Text    id:user-name    ${SouceDemoInvalidUsername}
#     Input Text    id:password    ${SouceDemoValidPassword}
#     Click Button    css:.btn_action
#     Wait Until Element Is Visible    css:.inventory_list1
#     Sleep    5s
#     Title Should Be    Swag Labs    Title is not as expected
#     [Teardown]   Close Browser

# SouceDemo Invalid Login password
#     Open Browser    browser=chrome    alias=Chrome   url=${SouceDemoURL}
#     Input Text    id:user-name    ${SouceDemoValidUsername}
#     Input Text    id:password    ${SouceDemoInvalidPassword}
#     Click Button    css:.btn_action
#     Wait Until Element Is Visible    css:.inventory_list1
#     Sleep    5s
#     Title Should Be    Swag Labs    Title is not as expected
#     [Teardown]   Close Browser
