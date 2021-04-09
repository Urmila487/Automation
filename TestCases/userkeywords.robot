*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}=  https://opensource-demo.orangehrmlive.com/
${browser}=  Chrome


*** Test Cases ***
TC_opensource_element

    launchBrowser              #user defined keywords with no arguments
    input text  name:txtUsername    Urmila
    input text  name:txtPassword    Urmi@123

*** Keywords ***
launchBrowser
    open browser  ${url}  ${browser}
    maximize browser window