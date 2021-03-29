*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources4.robot



*** Variables ***
${var1}  https://thetestingworld.com
${var2}  https://www.google.com/


*** Test Cases ***

Tc_012_Login Logout functionality
  open browser  ${var1}  Chrome
  open browser  ${var2}  Chrome
  switch browser  1
  ${url1}=  get location
  log to console  ${url1}
  click element  xpath://a[text()='Login']
  switch browser  2
  ${url2}=  get location
  log to console  ${url2}
  input text  name:q  HelloWorld
  close all browsers

