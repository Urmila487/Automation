*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteURL}  ${Browser}
    open browser  ${SiteURL}  ${Browser}
    maximize browser window

Select Button
    [Arguments]  ${gender}  ${female}
    select radio button  ${gender}  ${female}

Enter FirstName
    [Arguments]  ${firstname}
    input text  ${txt_firstname}  ${firstname}

Enter LastName
    [Arguments]  ${lastname}
    input text  ${txt_lastname}  ${lastname}

Enter Email
    [Arguments]  ${email}
    input text  ${txt_email}  ${email}

Enter Password
    [Arguments]  ${password}
    input text  ${txt_password}  ${password}

Enter ConfirmPassword
    [Arguments]  ${confirmpassword}
    input text  ${txt_confirm_password}  ${confirmpassword}


Click Sign in
    click button  ${btn_sign_in}

Verify suucessful register
    page should contain  Your registration completed

Close my browser
    close all browsers