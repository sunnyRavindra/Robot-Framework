*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open SauceDemo
    Open Browser    https://www.saucedemo.com/    chrome
    Log    Navigated to soucedemo