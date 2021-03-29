*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources4.robot



*** Variables ***
${var1}  https://robotframework.org/


*** Test Cases ***

Tc_013_Multiwindowhandling
  open browser  ${var1}  Chrome
  maximize browser window
  click element  xpath://*[@id="{tab.title}-standard"]/div[31]/a

  select window  Robot Framework
  ${url1}=  get location
  log to console  ${url1}
  select window  RPA Framework — RPA Framework documentation
  ${url2}=  get location
  log to console  ${url2}