*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to  ${LOGIN URL}

Input username
    [Arguments]     ${username}
    input text  id:Email    ${username}

Input pwd
    [Arguments]  ${password}
    input text  id:Password     ${password}

click login button
    click element  xpath://button[@type='submit']

click logout link
    wait until page contains element    xpath://a[contains(text(),'Logout')]
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard

