*** Settings ***
Documentation       This file handles all operation in the login page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     css=#txtPassword
${LOGIN_LOCATOR}        xpath=//*[@id='btnLogin']
${ERROR_LOCATOR}        id=spanMessage

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}     ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click On Login
    Click Element    ${LOGIN_LOCATOR}

Validate Error Message
    [Arguments]     ${expected_error}
    Element Text Should Be    ${ERROR_LOCATOR}    ${expected_error}




