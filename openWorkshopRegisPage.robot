*** Settings ***
Documentation     Test for verifying user registration functionality.
Resource          resource.robot

*** Test Cases ***
TC_01: Verify Registration Page
    Open Register Page
    [Teardown]    Close Browser