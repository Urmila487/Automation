*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_Resources.robot
Library      DataDriver   ../TestData/LoginTestdata1.csv

Suite Setup  Open my Browser
Suite Teardown  Close Browser
Test Template  Invalid Login

*** Test Cases ***
Login test with csv using ${username} and ${password}


*** Keywords ***
Invalid Login

    [Arguments]  ${username}  ${password}
    Input User name  ${username}
    Input Password  ${password}
    Click Login Button
    Error message should be visible