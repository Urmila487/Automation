*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteURL}  ${Browser}
    open browser  ${SiteURL}  ${Browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    input text  ${txt_loginusername}  ${username}

Enter Password
    [Arguments]  ${password}
    input text  ${txt_loginpassword}  ${password}

Click Login
    click button  ${btn_Login}

Verify suucessful login
    title should be  Demo Web Shop

Close my browser
    close all browsers