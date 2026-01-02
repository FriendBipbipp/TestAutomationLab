*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}        Chrome
${REGISTER URL}   http://localhost:7272/Lab4/Registration.html
${SUCCESS URL}    http://localhost:7272/Lab4/Success.html

*** Keywords ***
Open Register Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1.0
    Register Page Should Be Open

Register Page Should Be Open
    Title Should Be    Registration
    Capture Page Screenshot


Close Browser
    Close All Browsers