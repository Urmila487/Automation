*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.facebook.com


*** Test Cases ***
TC_001 broswer Start and End
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Input Text  id:email  urmila@gmail.com
  Input Text  id:pass   Urmi@123
  sleep  10
  handle alert  accept all
  click element  xpath://input[@type='submit']