*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.resource

*** Variables ***
${string}    Hello
${decimal}    3.14
${integer}    42
${boolean}    ${True}
@{list}    Item 1    Item 2    Item 3

*** Test Cases ***
Test 1
    ${result} =    Get Length    ${string}
    Should Be Equal    ${result}    5

Test 2
    ${sum}    Evaluate    ${decimal} + ${integer}
    Should Be Equal As Integers    ${sum}    45

Test 3
    Run Keyword If    ${boolean}    Log    Boolean is True
    Run Keyword Unless    ${boolean}    Log    Boolean is False

Test 4
    Log Many    @{list}
