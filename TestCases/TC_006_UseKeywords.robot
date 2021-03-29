*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/


*** Test Cases ***
TC_006 Use Keywords
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Enter Username Password Email  testing  urmila@gmail.com  123456


*** Keywords ***
Enter Username Password Email
  [Arguments]  ${username}  ${email}  ${password}
  Input Text  name:fld_username  ${username}
  Input Text  name:fld_email  ${email}
  Input Text  name:fld_password  {password}