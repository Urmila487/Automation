*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://demo.nopcommerce.com/
${Browser}  Chrome

*** Test Cases ***
TC_001_login

    open browser  ${URL}  ${Browser}
    maximize browser window
    Login To Application
    close browser

*** Keywords ***

Login To Application

    click link  xpath://a[contains(text(),'Log in')]
    input text  id:Email  pavanoltraining@gmail.com
    input text  id:Password  Test@123
    click element  xpath://button[contains(text(),'Log in')]
