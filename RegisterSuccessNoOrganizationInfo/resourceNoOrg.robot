*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${REGISTER URL}    http://localhost:7272/Lab4/Registration.html
${SUCCESS URL}    http://localhost:7272/Lab4/Success.html
${FIRST NAME}    Somyod
${LAST NAME}    Sodsai
${EMAIL}    somyod@kkumail.com
${PHONE}    091-001-1234

*** Keywords ***
Open Register Page
    Set Selenium Speed    1.0s
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window

Input User Info
    Input Text    id=firstname       ${FIRST NAME}
    Input Text    id=lastname        ${LAST NAME}
    Input Text    id=email           ${EMAIL}
    Input Text    id=phone           ${PHONE}

Submit Registration Form
    Click Button    id=registerButton   

Verify Success Page Details
    Title Should Be    Success
    
    Page Should Contain    Thank you for registering with us.
    
    Page Should Contain    We will send a confirmation to your email soon.