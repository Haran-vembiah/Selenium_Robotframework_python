*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${url}  https://admin-demo.nopcommerce.com
${browser}  chrome
${username}     admin@yourstore.com
${password}     admin

*** Test Cases ***
LginTest
    open my Browser    ${url}   ${browser}
    Enter UserName    ${username}
    Enter Password    ${password}
    click signin
    verify successful login
    close my browsers
