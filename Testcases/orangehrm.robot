*** Settings ***
Suite Setup
Suite Teardown
Test Teardown
Test Template
Library           ../scripts/excellib.py
Resource          ../Resources/app_keywords.txt
Resource          ../Resources/Commonkeywords.txt

*** Variables ***
${username}       Admin
${password}       admin123

*** Test Cases ***
tc01
    [Setup]
    Login    ${username}    ${password}
    web_clickelement    loginpage    Admin
    web_inputtext    Admin    username    Admin
    web_clickelement    Admin    searchbutton
    [Teardown]
