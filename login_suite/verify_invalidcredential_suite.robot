*** Settings ***
Documentation     This suite will handles all the test cases related to invalid
...     credential test for orangehrm. Test case -  TC_OH_3

Resource       ../Resource/Base/CommonFunctionality.resource

Test Teardown      Close Browser

*** Test Cases ***
Verify Invalid Credential Test
    Launch Browser
    Input Text    id=txtUsername    Anupriya
    Input Password    id=txtPassword    pass123
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    Invalid credentials

