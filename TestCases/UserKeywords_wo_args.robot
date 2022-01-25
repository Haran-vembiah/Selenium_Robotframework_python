*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com

*** Test Cases ***
TC1
    LaunchScreen
    input text    id:Email    johndavid@gmail.com
    input text    id:Password    1234


*** Keywords ***
LaunchScreen
    open browser  ${url}     ${browser}
    maximize browser window
    click link    xpath://a[@class='ico-login']