*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC_mouse_actions
    #Right click open the context menu
    open browser  https://swisnl.github.io/jQuery-contextMenu/demo.html  Chrome
    maximize browser window
    open context menu  xpath://span[contains(text(),'right click me')]

    #Double click

    go to  http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element  xpath://button[contains(text(),'Copy Text')]
