*** Settings ***


*** Test Cases ***
TC1 User Registration Test
    [Tags]    regression
    log to console    This is user registration test
    log to console    User registration test is over


TC2 Login Test
    [Tags]    sanity
    log to console    This is Login test
    log to console    Login test is over

TC3 Change User Settings
    [Tags]    regression
    log to console    This is change user setting test case
    log to console    User Setting test case is over

TC4 Logout Test
    [Tags]      sanity
    log to console    This is Logout test
    log to console    Logout test is over