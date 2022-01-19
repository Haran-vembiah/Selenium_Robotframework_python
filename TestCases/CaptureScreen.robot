*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser  https://opensource-demo.orangehrmlive.com/     chrome
    maximize browser window
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    capture element screenshot      xpath:/html/body/div[1]/div/div[3]/div[1]/img

    capture page screenshot
