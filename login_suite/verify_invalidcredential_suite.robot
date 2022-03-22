*** Settings ***
Documentation      This suite will handles all the test cases related to invalid
...     credential test for orangehrm. Test case - TC_OH_3,4,5
Resource      ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource


Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1       john      john123     Invalid credentials
TC2       peter     peter123     Invalid credentials
TC3       ${EMPTY}      admin123        Username cannot be empty
TC4       Anupriya       ${EMPTY}       Password cannot be empty


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Enter Username      ${username}
    Enter Password    ${password}
    Click On Login
    Validate Error Message      ${expected_error}