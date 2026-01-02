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

*** Keywords ***
Input User Info
    Input Text    id=firstname       ${FIRST NAME}
    Input Text    id=lastname        ${LAST NAME}
    Input Text    id=organization    ${Organization}
    Input Text    id=email           ${EMAIL}

Submit Registration Form
    Click Button    id=registerButton   

Verify PHONE Missing Error
    Title Should Be    Registration
    Page Should Contain    *Please enter your phone number!!