*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
#    maximize browser window
#
#    #Right click/ open context menu
#    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
#    sleep    3

    # Double click action
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[@ondblclick='myFunction1()']
    sleep    3

    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop   id:box6     id:box106
    sleep    2

    close browser