*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/SigninKeywords.robot

*** Variables ***
${Browser}  Chrome
${SiteURL}  http://demowebshop.tricentis.com/register
${Gender}   Gender
${Female}   F
${Firstname}    Urmila
${Lastname}     Vadi
${Email}    urmila.ghadiya1523@gmail.com
${Password}     Urmi@123
${ConfirmPassword}      Urmi@123




*** Test Cases ***
Registration Pass Case 1
    Open my Browser     ${SiteURL}  ${Browser}
    Select Button   ${Gender}  ${Female}
    Enter FirstName     ${Firstname}
    Enter LastName  ${Lastname}
    Enter Email     ${Email}
    Enter Password      ${Password}
    Enter ConfirmPassword   ${ConfirmPassword}
    Click Sign in
    Verify suucessful register
    Close my browser














