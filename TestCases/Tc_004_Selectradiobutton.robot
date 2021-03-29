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
  Clear Element Text  name:fld_username
  Select Radio Button  add_type  home
  Select Check Box  name:terms
  Click Link  xpath://a[text()='Read Detail']
