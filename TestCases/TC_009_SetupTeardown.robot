*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources3.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/


*** Test Cases ***
TC_009SetupTeardown
  [Setup]  Start Browser and Maximize
  [Teardown]  Close Browser Window
  Input Text  name:fld_username  Testingname
  Input Text  xpath://input[@name='fld_email']  Testingname@gmail.com
  Input Text  name:fld_password  Urmi@123

TC_009SetupTeardown next TestCases
  [Setup]  Start Browser and Maximize
  [Teardown]  Close Browser Window
  Select Radio Button  add_type  office