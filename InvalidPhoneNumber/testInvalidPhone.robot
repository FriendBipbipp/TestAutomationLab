*** Settings ***
Library    SeleniumLibrary
Resource    resourceInvalidPhone.robot
Resource    ../resource.robot

*** Test Cases ***
Register Fail Scenario
    [Documentation]    Test for Register Fail with invalid phone number case Scenario
    Open Register Page
   
    Input User Info
    
    Submit Registration Form
    
    Verify PHONE number invalid
    
    Capture Page Screenshot
    
    [Teardown]    Close Browser
