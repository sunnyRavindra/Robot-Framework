*** Settings ***
Documentation      This is a test suite for the SauceDemo application
Test Tags    Requirement:1234    Failed    Smoke
Library           SeleniumLibrary

*** Variables ***
${ValidNumber}    100

*** Test Cases ***
Failed Test Case
    [Documentation]    This test case is expected to fail
    [Tags]    fail
    Fail    This test case is expected to fail
    
HTML Error
    [Documentation]    This test case is expected to fail
    [Tags]    fail
    Should Be Equal As Numbers    {ValidNumber}    100    *HTML* Number is not my <b>MAGIC</b> number.
    
