*** Settings ***
Documentation  This is variable file for the test suite
Library  SeleniumLibrary

*** Test Cases ***
Integer
    ${var1}  Set Variable  10
    ${var2}  Set Variable  20
    ${AddedValue}    Evaluate    ${var1} + ${var2}
    Log    This is addition of variables ${AddedValue}

Decimal
    ${Decimal}  Set Variable  10.5
    ${Decimal1}  Set Variable  10.5
    ${resultdecimal}   Evaluate  ${Decimal} + ${Decimal1}
    Log    This is addition of variables ${resultdecimal}

List
    @{List}    Create List    1  2  3  4  Five 
    Log    This is list printed as is ${List}

    FOR  ${i}  IN  @{List}    
        Log    Logging this from for loop ${i}
    END

Dictionary
    &{hashmap}    Create Dictionary    key1=value1  key2=value2  key3=value3
    Log    This is dictionary printed as is ${hashmap}
    Log  This is one element from dict ${hashmap}[key1]