*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources2.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/


*** Test Cases ***
TC_007 User Defined Resources
  Start Browser and Maximize  ${URL}  ${Browser}
  Input Text  name:fld_username  Urmila