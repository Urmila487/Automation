*** Settings ***
Library  SeleniumLibrary
Library  ..//External Keywords/UserKeywords.py

*** Variables ***



*** Keywords ***
Start Browser and Maximize
  Open Browser  https://thetestingworld.com/testings  Chrome
  Maximize Browser Window


Close Browser Window
  ${Title}=  Get Title
  Log  ${Title}
  Close Browser


Create folder at Runtime
  create_folder
  create_sub_folder
  Log  "Folder Created successfully"




