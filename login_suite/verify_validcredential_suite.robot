*** Settings ***
Documentation     This suite will handles all the test cases related to valid
...     credential test. Test case -  TC_OH_2

Library     SeleniumLibrary

Test Teardown     Close Browser

*** Test Cases ***
Verify Valid Credential Test
    Open Browser     browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://opensource-demo.orangehrmlive.com/
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
