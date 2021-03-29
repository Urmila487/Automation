*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
TC_001 broswer Start and End
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Input Text  name:fld_username  Testingname
  Input Text  xpath://input[@name='fld_email']  Testingname@gmail.com