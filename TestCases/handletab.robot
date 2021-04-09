*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://demo.automationtesting.in/Windows.html
${Browser}  Chrome

*** Test Cases ***
TC_003_handle_tabes


    open browser  ${URL}  ${Browser}
    maximize browser window
    click element  xpath://*[@id="Tabbed"]/a/button
    select window  title=SeleniumHQ Browser Automation
    click link  Blog

    close all browsers