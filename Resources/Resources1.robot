*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/


*** Keywords ***
Start Browser and Maximize
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window