*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://www.practiceselenium.com/practice-form.html
${Browser}  Chrome

*** Test Cases ***
TC_003_Radiobutton

    open browser  ${URL}  ${Browser}
    maximize browser window
    set selenium speed  2seconds

    input text  name:firstname  Urmila
    input text  name:lastname   Ghadiya

    select radio button  sex  Female
    select radio button  exp  3

    select checkbox  BlackTea
    select checkbox  Red Tea
    unselect checkbox  BlackTea


*** Keywords ***