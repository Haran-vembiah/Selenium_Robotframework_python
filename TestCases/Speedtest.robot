*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    # Default speed of selenium is
    ${spead}=   get selenium speed
    log to console  ${spead}
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    set selenium speed  1 seconds
    select radio button  Gender     M
    input text  name:FirstName      David
    input text  name:LastName       John
    input text  name:Email      anhc@gmail.com
    input text  name:Password       davidjohn
    input text  name:ConfirmPassword    davidjohn
    ${spead}=   get selenium speed
    log to console  ${spead}