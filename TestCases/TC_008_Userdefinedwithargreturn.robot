*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources2.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/


*** Test Cases ***
TC_008 User Defined Resources
  ${Res}=  Start Browser and Maximize  ${URL}  ${Browser}
  Log  ${Res}
  Input Text  name:fld_username  ${Res}
