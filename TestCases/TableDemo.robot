*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser  https://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    ${rows}=    get element count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console    ${rows}
    log to console    ${columns}

    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console    ${data}

    ${data1}=    get text    xpath://table[@name='BookTable']/tbody/tr[6]/td[3]
    log to console    ${data1}

    table column should contain    xpath://table[@name='BookTable']     2   Au
    table row should contain    xpath://table[@name='BookTable']    4   J
    table cell should contain    xpath://table[@name='BookTable']   5   2   Mu
    table header should contain    xpath://table[@name='BookTable']     Bo
    table should contain    xpath://table[@name='BookTable']    B
    tab


    close browser

