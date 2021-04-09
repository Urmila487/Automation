*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  http://testautomationpractice.blogspot.com/
${Browser}  Chrome

*** Test Cases ***
TC_003_handle_alerts


    open browser  ${URL}  ${Browser}
    maximize browser window
    click element  xpath://button[contains(text(),'Click Me')]
    #handle alert  accept
    #handle alert  dismiss
    #handle alert  leave
    alert should be present  Press a button!