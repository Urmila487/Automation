*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources3.robot
Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/


*** Test Cases ***
TC_010_Setup Teardown
  Create folder at Runtime
  Input Text  name:fld_username  Testingname
  Input Text  xpath://input[@name='fld_email']  Testingname@gmail.com
  Input Text  name:fld_password  Urmi@123

TC_010 SetupTeardown next TestCases
  Select Radio Button  add_type  office