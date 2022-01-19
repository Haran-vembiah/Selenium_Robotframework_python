*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{sam_list}     sample      sample2     sampl

*** Test Cases ***
GetAllLinks
#    open browser    https://artoftesting.com/get-all-links-in-a-webpage-selenium-webdriver-java     chrome
    open browser    https://en.wikipedia.org/wiki/Website     chrome
    maximize browser window
    ${Alllinkscount}=   get element count    xpath://a
    log to console    ${Alllinkscount}

    #To get the list of link IDS of all links available in web page
#    ${listoflinks}=     get all links
#    log to console    ${listoflinks}

#    @{LinkItems}    create list
    FOR    ${i}    IN RANGE    1   ${Alllinkscount}+1
        ${Linktext}=    get text    xpath:(//a)[${i}]
        log to console    ${Linktext}
    END

    ${list_leng}=   get length    ${sam_list}
    log to console    ${list_leng}
    FOR    ${index}     IN RANGE    ${list_leng}
        log to console   ${sam_list}[${index}]
    END