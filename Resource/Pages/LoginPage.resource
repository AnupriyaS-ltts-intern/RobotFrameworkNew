*** Settings ***
Documentation     This file handles all operations in the login page

Resource       ../Resource/Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}     ${username}

