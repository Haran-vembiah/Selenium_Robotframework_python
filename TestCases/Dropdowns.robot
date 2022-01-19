*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://omayo.blogspot.com/


*** Test Cases ***
Handling Dropdowns and List boxes
    open browser  ${url}     ${browser}
    maximize browser window

    # Drop downs
    select from list by label    SiteMap    doc 1
    sleep   2
    select from list by index    SiteMap    3
    sleep    2
    select from list by value    SiteMap    mno
    sleep    2

    # List boxes
    select from list by label       multiselect1    Volvo
    select from list by index    multiselect1    2
    select from list by value    multiselect1   audix
    sleep    2
    unselect from list by label    multiselect1    Volvo
    unselect from list by index    multiselect1    2
    unselect from list by value    multiselect1   audix
    select from list by label       multiselect1    Swift
    sleep    2

