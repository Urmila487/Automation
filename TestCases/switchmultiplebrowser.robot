*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://demo.automationtesting.in/Windows.html
${Browser}  Chrome

*** Test Cases ***
TC_003_switchmultiplebrowsers

    open browser  ${URL}  ${Browser}
    maximize browser window

    open browser  https://google.com  ${Browser}
    maximize browser window

    switch browser  1
    ${title1}=  get title
    log to console  ${title1}

    switch browser  2
    ${title2}=  get title
    log to console  ${title2}

