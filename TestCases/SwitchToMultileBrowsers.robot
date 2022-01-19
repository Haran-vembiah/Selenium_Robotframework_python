*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
MultipleBrowsersTest
    open browser  https://www.google.com/   chrome
    maximize browser window

    sleep    3

    open browser  https://www.bing.com/     chrome      alias=second
    maximize browser window

    switch browser  1
    ${title1}=   get title
    log to console  ${title1}

    switch browser  second
    ${title2}=  get title
    log to console  ${title2}

    sleep    3
    close all browsers



