*** Settings ***
Library    SeleniumLibrary
Resource    RegisterSuccessresource.robot

*** Test Cases ***
Register Success Scenario
    [Documentation]    Test for Register Success case Scenario
    Open Register Page
   
    Input User Info
    
    Submit Registration Form
    
    Verify Success Page Details
    
    Capture Page Screenshot
    
    [Teardown]    Close Browser
