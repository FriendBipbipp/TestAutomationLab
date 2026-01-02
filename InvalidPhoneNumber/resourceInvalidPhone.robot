*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${REGISTER URL}    http://localhost:7272/Lab4/Registration.html
${SUCCESS URL}    http://localhost:7272/Lab4/Success.html
${FIRST NAME}    Somyod
${LAST NAME}    Sodsai
${Organization}    CS KKU
${EMAIL}    somyod@kkumail.com
${PHONE}    1234

*** Keywords ***

Input User Info
    Input Text    id=firstname       ${FIRST NAME}
    Input Text    id=lastname        ${LAST NAME}
    Input Text    id=organization    ${Organization}
    Input Text    id=email           ${EMAIL}
    Input Text    id=phone           ${PHONE}

Submit Registration Form
    Click Button    id=registerButton   

Verify PHONE number invalid
    Title Should Be    Registration
    Element Text Should Be    id=errors    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)