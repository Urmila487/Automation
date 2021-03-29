*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  http://www.thetestingworld.com/testings
${Browser}  Firefox

*** Test Cases ***
TC_002_Closebrowser
  Open Browser  ${URL}  ${Browser}
  Close Browser