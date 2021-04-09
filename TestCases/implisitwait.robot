*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://demowebshop.tricentis.com/register
${Browser}  Chrome

*** Test Cases ***
TC_003_Selenium_Time_out


    open browser  ${URL}  ${Browser}
    maximize browser window

    set selenium implicit wait  10seconds

    select radio button  Gender  M
    input text  id:FirstName12  Urmila
    input text  id:LastName  Ghadiya
    input text  id:Email  urmila.ghadiya@gmail.com
    input text  id:Password  Urmi@123
    input text  id:ConfirmPassword  Urmi@123


