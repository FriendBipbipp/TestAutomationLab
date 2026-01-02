*** Settings ***
Library    SeleniumLibrary
Resource    resourceEmptyFirstName.robot
Resource    ../resource.robot

*** Test Cases ***
Register Fail Scenario
    [Documentation]    Test for Register Fail with empty firstname case Scenario
    Open Register Page
   
    Input User Info
    
    Submit Registration Form
    
    Verify First Name Missing Error
    
    Capture Page Screenshot
    
    [Teardown]    Close Browser
