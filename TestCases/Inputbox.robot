*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com


*** Test Cases ***
TestingInputBox
    open browser  ${url}     ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    # Setting variable value
    ${"email_txt"}   set variable    id:Email

    # To check the visibility of the input box
    element should be visible     ${"email_txt"}
#    element should not be visible     ${"email_txt"}
    # To check the enable status of the input box
    element should be enabled     ${"email_txt"}
    #Entering value in to the input box using variable name
    input text    ${"email_txt"}    johndavid@gmail.com
    sleep    5
    clear element text    ${"email_txt"}
    sleep    3
    close browser


*** Keywords ***
