*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://www.practiceselenium.com/practice-form.html
${Browser}  Chrome

*** Test Cases ***
TC_003_Radiobutton

    open browser  ${URL}  ${Browser}
    maximize browser window
    select from list by label  continents  Asia
    select from list by label  selenium_commands  Wait Commands
    select from list by index  selenium_commands  2