*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***

Table Validations

    open browser  http://testautomationpractice.blogspot.com/   Chrome
    maximize browser window
    ${rows}=    get element count  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr

    ${columns}=  get element count  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th


    log to console  ${rows}
    log to console  ${columns}



    ${data}=    get text  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    log to console  ${data}

    table column should contain  xpath://table[@name='BookTable']   2   Author
    table row should contain  xpath://table[@name='BookTable']    4   Learn JS
    table cell should contain  xpath://table[@name='BookTable']     5   2   Mukesh
    table header should contain  xpath://table[@name='BookTable']   BookName

    close browser
