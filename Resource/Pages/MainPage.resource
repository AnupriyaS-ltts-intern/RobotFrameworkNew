*** Settings ***
Documentation      This file handles all menu in orange hrm.

Resource      ../Base/CommonFunctionality.resource

*** Variables ***
${MYINFO_LOCATOR}   xpath=//*[@id='menu_pim_viewMyDetails']

*** Keywords ***
Click On MyInfo
    Click Element    ${MYINFO_LOCATOR}

MainPage Should Contain
    [Arguments]     ${text1}      ${text2}
    Page Should Contain    ${text1}
    Page Should Contain    ${text2}