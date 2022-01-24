*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window

    #Scroll the page till the specific index
#    execute javascript    window.scrollTo(0,2500)

#    scroll until it finds the element in tha page
    scroll element into view    xpath://td[contains(text(),'India')]
    sleep    2
    # It goes till the end of page
    execute javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    2
    # It goes to the starting point
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
