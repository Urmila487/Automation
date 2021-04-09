
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/package-summary.html
${Browser}  Chrome

*** Test Cases ***
TC_003_handle_frames


    open browser  ${URL}  ${Browser}
    maximize browser window

    select frame  packageListFrame
    click link  org.openqa.selenium.chrome
    unselect frame
    sleep  3

    select frame  packageFrame
    click link  ChromeDriver
    unselect frame
    sleep  3

    select frame  classFrame
    click link  Help
    unselect frame
    sleep  3

    close window