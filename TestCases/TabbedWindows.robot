*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser  http://demo.automationtesting.in/Windows.html     chrome

    # get window handles    Returns all child window handles of the selected browser as a list.
    ${handles_}=    get window handles
    log to console    ${handles_}
    click element  xpath://*[@id="Tabbed"]/a/button

    # switch window Switches to browser window matching locator.
    # Switch Window	${handles_}		# Select window using excludes
    # Here it excludes the ${handles_} the parent window and switches to the second tab
    switch window    ${handles_}
    click link    Blog
    sleep   3
    close all browsers

