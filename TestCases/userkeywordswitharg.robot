*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}=  https://opensource-demo.orangehrmlive.com/
${browser}=  Chrome


*** Test Cases ***
TC_opensource_element

    launchBrowser  ${url}  ${browser}           #user defined keywords with arguments
    input text  name:txtUsername    Urmila
    input text  name:txtPassword    Urmi@123

*** Keywords ***
launchBrowser
    [Arguments]  ${appurl}  ${appbrowser}
    open browser  ${appurl}  ${appbrowser}
    maximize browser window