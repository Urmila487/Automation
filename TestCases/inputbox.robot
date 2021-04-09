*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://demo.nopcommerce.com/
${Browser}  Chrome

*** Test Cases ***
TC_001_Input_box

    open browser  ${URL}  ${Browser}
    maximize browser window
    title should be  nopCommerce demo store  Login
    click link  xpath://a[contains(text(),'Log in')]
    ${"email"}  set variable  id:Email
    element should be visible  ${"email"}
    element should be enabled  ${"email"}
    input text  ${"email"}  john@gmail.com
    sleep  5
    clear element text   ${"email"}
    sleep  3
    close browser

*** Keywords ***