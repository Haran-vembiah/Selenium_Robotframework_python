*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LaunchScreen
    [Arguments]    ${appurl}    ${appbrowser}
    open browser  ${appurl}     ${appbrowser}
    maximize browser window
    click link    xpath://a[@class='ico-login']
    ${title}=       get title
    [Return]        ${title}