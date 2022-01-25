*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

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


