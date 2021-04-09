*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC_Navigationkeywords

    open browser  https://google.com  Chrome

    ${location1}=  get location
    log to console  ${location1}

    go to  https://youtube.com
    ${location2}=  get location
    log to console  ${location2}

    go back
    ${location1}=  get location
    log to console  ${location1}