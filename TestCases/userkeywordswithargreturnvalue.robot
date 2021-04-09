*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources5.robot

*** Variables ***
${url}=  https://opensource-demo.orangehrmlive.com/
${browser}=  Chrome


*** Test Cases ***
TC_opensource_element

    ${Pagetitle}=  launchBrowser  ${url}  ${browser}  #user defined keywords with arguments and return value
    log to console  ${Pagetitle}
    log  ${Pagetitle}
    input text  name:txtUsername    Urmila
    input text  name:txtPassword    Urmi@123

