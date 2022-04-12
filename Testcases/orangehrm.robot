*** Settings ***
Suite Setup
Suite Teardown
Test Teardown
Test Template
Resource          ../Libraries/librarymanager.txt
Resource          ../Resources/ResourceManger.txt
Library           ../scripts/excellib.py

*** Test Cases ***
tc01
    [Setup]
    Open Browser    https://opensource-demo.orangehrmlive.com    chrome
    Maximize Browser Window
    web_clickelement    landingpage    loginbutton
    Comment    Maximize Browser Window
    Comment    web_Mouseover    landingpage    Administration
    Comment    web_clickelement    landingpage    add_edit_user
    Comment    Handle Alert    ACCEPT
    Comment    web_inputtext    add_edit_user    Username    karthikeyan
    [Teardown]
