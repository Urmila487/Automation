*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
TC_001 broswer Start and End
  Open Browser  ${URL}  ${Browser}
