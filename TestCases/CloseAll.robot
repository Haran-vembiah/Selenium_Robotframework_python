*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window

    open browser    https://omayo.blogspot.com/     chrome
    maximize browser window

#    close browser
    close all browsers