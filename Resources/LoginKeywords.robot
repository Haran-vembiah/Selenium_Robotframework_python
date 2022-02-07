*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
open my Browser
    [Arguments]     ${url}      ${browser}
    open browser    ${url}      ${browser}
    maximize browser window

Enter UserName
    [Arguments]    ${username}
    input text    ${txt_loginUserName}     ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}     ${password}

Click SignIn
    click button    ${btn_signin}

Verify successful Login
    page should contain  Dashboard

Close my browsers
    close all browsers