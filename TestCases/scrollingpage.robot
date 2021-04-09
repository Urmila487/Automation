*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html  Chrome
    maximize browser window
    #execute javascript  window.scrollTo(0,2500)   #Scrolling using vertical pixel number
    #execute javascript  window.scrollTo(1500,0)   #Scrolling using Horizontal pixel number
    #scroll element into view  xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[101]/td[1]/img
      #scrolling page till element not found

    execute javascript  window.scrollTo(0,document.body.scrollHight)   #page scrolling till end of the page

    sleep  5

    execute javascript  window.scrollTo(0,-document.body.scrollHight)   #starting point

