*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  Chrome
${SiteURL}  http://demowebshop.tricentis.com/login
${User}  urmila.ghadiya@gmail.com
${Password}  Urmila@123

*** Test Cases ***
Login Test
    Open my Browser     ${SiteURL}  ${Browser}
    Enter UserName  ${User}
    Enter Password  ${Password}
    Click Login
    Verify suucessful login
    Close my browser
