*** Settings ***
Library    SeleniumLibrary
Resource    resourceEmptyPhoneNumber.robot
Resource    ../resource.robot

*** Test Cases ***
Register Fail Scenario
    [Documentation]    Test for Register Fail with empty phone number case Scenario
    Open Register Page
   
    Input User Info
    
    Submit Registration Form
    
    Verify PHONE Missing Error
    
    Capture Page Screenshot
    
    [Teardown]    Close Browser
