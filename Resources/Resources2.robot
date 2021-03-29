*** Settings ***
Library  SeleniumLibrary

*** Variables ***



*** Keywords ***
Start Browser and Maximize
  [Arguments]  ${UseURL}  ${InputBrowser}
  Open Browser  ${UseURL}  ${InputBrowser}
  Maximize Browser Window
  ${Title}=  Get Title
  #Log  ${Title}
  [Return]  ${Title}