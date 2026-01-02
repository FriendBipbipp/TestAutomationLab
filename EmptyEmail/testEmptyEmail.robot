*** Settings ***
Library    SeleniumLibrary
Resource    resourceEmptyEmail.robot
Resource    ../resource.robot

*** Test Cases ***
Register Fail Scenario
    [Documentation]    Test for Register Fail with empty email case Scenario
    Open Register Page
   
    Input User Info
    
    Submit Registration Form
    
    Verify EMAIL Missing Error
    
    Capture Page Screenshot
    
    [Teardown]    Close Browser
