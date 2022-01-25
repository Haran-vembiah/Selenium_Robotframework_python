*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
#Test Template  Invalid login
Test Template    Valid Login




*** Test Cases ***      Username        Password
#Right user empty pass    admin@yourstore.com        ${EMPTY}
#Right user wrong pass    admin@yourstore.com        xyz
#Wrong user right pass    adm@yourstore.com        admin
#Wrong user empty pass    adm@yourstore.com        ${EMPTY}
#Wrong user wrong pass    adm@yourstore.com        xyz
Right user right passs     admin@yourstore.com      admin



*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input pwd  ${password}
    click login button
    Error message should be visible

Valid Login
    [Documentation]    This is the documentation part of the keyword Valid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input pwd  ${password}
    click login button
    dashboard page should be visible
    click logout link
