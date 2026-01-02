*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${REGISTER URL}    http://localhost:7272/Lab4/Registration.html
${SUCCESS URL}    http://localhost:7272/Lab4/Success.html
${FIRST NAME}    Somyod
${Organization}    CS KKU
${EMAIL}    somyod@kkumail.com
${PHONE}    091-001-1234

*** Keywords ***
Input User Info
    Input Text    id=firstname       ${FIRST NAME}
    Input Text    id=organization    ${Organization}
    Input Text    id=email           ${EMAIL}
    Input Text    id=phone           ${PHONE}

Submit Registration Form
    Click Button    id=registerButton   

Verify Last Name Missing Error
    Title Should Be    Registration
    Page Should Contain    *Please enter your last name!!