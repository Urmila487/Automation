*** Settings ***
Library  SeleniumLibrary
Library  ..//External Keywords/UserKeywords.py

*** Variables ***



*** Keywords ***
Start Browser and Maximize
  #Open Browser  https://thetestingworld.com/testings  Chrome
  Open Browser  https://thetestingworld.com  Chrome
  Open Browser  https://www.google.com/  Chrome



Close Browser Window
  ${Title}=  Get Title
  Log  ${Title}
  Close Browser

Create folder at Runtime
  create_folder
  create_sub_folder
  Log  "Folder Created successfully"

Concatenate Username and Password
  [Arguments]   ${username}  ${password}
  ${resultval}=  concatenate_two_vaules  ${username}  ${password}
  Log  ${resultval}