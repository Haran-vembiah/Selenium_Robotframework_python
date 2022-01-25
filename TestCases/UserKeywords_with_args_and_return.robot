*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com

*** Test Cases ***
TC1
    ${page_title}=      LaunchScreen    ${url}      ${browser}
    log to console    ${page_title}
    log    ${page_title}
    input text    id:Email    johndavid@gmail.com
    input text    id:Password    1234


*** Keywords ***
LaunchScreen
    [Arguments]    ${appurl}    ${appbrowser}
    open browser  ${appurl}     ${appbrowser}
    maximize browser window
    click link    xpath://a[@class='ico-login']
    ${title}=       get title
    [Return]        ${title}