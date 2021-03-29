*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources4.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/


*** Test Cases ***
TC_011_Robot_Fetchdata
  Concatenate Username and Password  Testing  World

