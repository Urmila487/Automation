*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://demowebshop.tricentis.com/register
${Browser}  Chrome

*** Test Cases ***
TC_003_Radiobutton
    ${speed}=  get selenium speed
    log to console  ${speed}

    open browser  ${URL}  ${Browser}
    maximize browser window

    set selenium speed  2 seconds
    select radio button  Gender  M
    input text  id:FirstName  Urmila
    input text  id:LastName  Ghadiya
    input text  id:Email  urmila.ghadiya@gmail.com
    input text  id:Password  Urmi@123
    input text  id:ConfirmPassword  Urmi@123


    ${speed1}=  get selenium speed
    log to console  ${speed1}
