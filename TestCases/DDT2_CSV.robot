*** Settings ***
Library      SelniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver  ../TestData/LoginData.csv

Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***
LoginTestwithCsv using ${username} and ${password}


*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input pwd  ${password}
    click login button
    Error message should be visible
