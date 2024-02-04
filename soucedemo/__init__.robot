*** Settings ***
Name             SouceDemo
Documentation    SouceDemo suite
Metadata        Version            2.0
Metadata        Robot Framework    http://robotframework.org
Suite Setup      Log    SouceDemo Suite setup
Suite Teardown   Log    SouceDemo Suite teardown
Test Tags        SauceDemo
Library          SeleniumLibrary
Resource         ../resources/keywords.resource
Test Setup       Open SauceDemo
Test Teardown    Close Browser
