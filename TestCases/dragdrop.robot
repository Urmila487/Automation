*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***

Drag_drop_cases

    open browser  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html  Chrome
    maximize browser window
    drag and drop  id:box7  box101






