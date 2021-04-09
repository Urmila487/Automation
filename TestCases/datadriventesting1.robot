*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_Resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browser
Test Template  Invalid login


*** Test Cases ***               username              password
Right User Empty Password     admin@yourstore.com      ${EMPTY}
Right User Wrong Password       admin@yourstore.com     adminn
Wrong User Wrong Password       admi@yourstore.com      adminn
Wrong User Right Password       adminn@yourstore.com     admin
Wrong User Empty Password       adminn@yourstore.com     ${EMPTY}


*** Keywords ***
Invalid login
    [Arguments]  ${username}  ${password}
    Input User name  ${username}
    Input Password  ${password}
    Click Login Button
    Error message should be visible