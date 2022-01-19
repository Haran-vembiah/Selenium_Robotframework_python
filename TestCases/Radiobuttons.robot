*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://omayo.blogspot.com/

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds

    #Selecting radio buttons
    select radio button    gender   male
#    sleep    5
    select radio button    vehicle  Bicycle
#    sleep    3

    # Selecting check boxes
    unselect checkbox    Pen
    select checkbox    Book
    select checkbox    Laptop
    unselect checkbox    Book
    unselect checkbox    Laptop
    select checkbox    Book
    sleep    3


*** Keywords ***
