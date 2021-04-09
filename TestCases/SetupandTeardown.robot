*** Settings ***
Suite Setup     log to console      opening browser
Suite Teardown   log to console      closing browser


Test Setup      log to console      Login to Application
Test Teardown   log to console      Logout to Application

*** Test Cases ***
TC1 Prepaid Recharge testcase
    log to console  This is prepaid recharge testcase

TC2 Prepaid Recharge testcase
    log to console  This is postpaid recharge testcase

TC3 Search
    log to console  This is search testcase

TC4 Advanced Search functionality
    log to console  This is Advanced Search testcase


