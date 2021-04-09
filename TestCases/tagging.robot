*** Settings ***

*** Test Cases ***
TC1 User Registration Test
    [Tags]  Regression
    log to console  This is user Registration test
    log to console  User registration test is over
TC2 Login test
    [Tags]  Sanity
    log to console  This is login test
    log to console  Login test is over
TC3 Change User Settings
    [Tags]  Regression
    log to console  This is changing user settings test
    log to console  Change User settings test is over
TC4 Logout test
    [Tags]  Sanity
    log to console  This is Logout test
    log to console  Logout test is over


    #robot --include=Sanity tagging.robot   Run in console only "Sanity" keywords test executed
    #robot -i Sanity -i Regression tagging.robot  both sanity Regression testcases executed
    #robot -e Regression tagging.robot      exclude Regression means that's not executed only sanity executed
    #robot -e Sanity -i Regression tagging.robot   exclude sanity and incude Regression executed