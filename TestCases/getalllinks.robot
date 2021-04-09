*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinks Test
    open browser  https://swisnl.github.io/jQuery-contextMenu/demo.html  Chrome
    maximize browser window

    ${AllLinksCount}=   get element count  xpath://a
    log to console  ${AllLinksCount}

    @{Linkitems}    create list
    FOR     ${i}    IN RANGE    1    ${AllLinksCount}+1
        ${LinkText}=    get text  xpath:(//a)[${i}]
        log to console  ${LinkText}
    END