*** Settings ***
Library    SeleniumLibrary
Resource    resourceEmptyLastName.robot
Resource    ../resource.robot

*** Test Cases ***
Register Fail Scenario
    [Documentation]    Test for Register Fail with empty lastname case Scenario
    Open Register Page
   
    Input User Info
    
    Submit Registration Form
    
    Verify Last Name Missing Error
    
    Capture Page Screenshot
    
    [Teardown]    Close Browser
