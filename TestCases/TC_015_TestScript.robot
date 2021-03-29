*** Settings ***
Documentation     A test suite with a single test for Login & Sign Up Forms
...               Created by hats' Robotcorder
Library           SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${SLEEP}  3

*** Test Cases ***
Login & Sign Up Forms test

    Open Browser  https://thetestingworld.com/testings  Chrome
    Input Text  //input[@name="fld_username"]  Urmi
    Input Text  //input[@name="fld_email"]  urmila@gmail.com
    Input Text  //input[@name="fld_password"]  ***
    Input Text  //input[@name="fld_cpassword"]  ***
    Input Text    //input[@name="dob"]  25/01/1990ro
    Input Text  //input[@name="phone"]  1522345612
    Click Element  //input[@name="add_type"]
    Select From List By Value  //select[@name="sex"]    2
    Click Element  //input[@name="terms"]
    Click Element  xpath=(//input)[14]
    Click Element  xpath=(//input)[14]
    Close Browser