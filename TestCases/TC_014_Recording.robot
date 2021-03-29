*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
TC_014 Recording
  Open Browser    https://thetestingworld.com/testings    ${BROWSER}
  Input Text    //input[@name="fld_username"]    Urmi
  Input Text    //input[@name="fld_email"]    urmila@gmail.com
  Input Text    //input[@name="fld_password"]    ***
  Input Text    //input[@name="fld_cpassword"]    ***
  Input Text    //input[@name="phone"]    1522345612
  Click Element    //input[@name="add_type"]
  Select From List By Value    //select[@name="sex"]    2
  Click Element    //input[@name="terms"]
  Click Element    xpath=(//input)[14]
  Click Element    xpath=(//input)[14]