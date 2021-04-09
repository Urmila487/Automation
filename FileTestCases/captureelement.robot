*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC_opensource_element

    open browser  https://opensource-demo.orangehrmlive.com/  Chrome
    input text  name:txtUsername    Urmila
    input text  name:txtPassword    Urmila@123

    #capture element screenshot  xpath://*[@id="divLogo"]/img    C:/Users/rvadi/PycharmProjects/pythonProject/Automation/logo.png
    #capture page screenshot  C:/Users/rvadi/PycharmProjects/pythonProject/Automation/Loginpage.png

    capture element screenshot  xpath://*[@id="divLogo"]/img  logo1.png
    capture page screenshot  login123.png

