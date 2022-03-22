*** Settings ***
Documentation     This suite handles test case related to emergency contact

Resource     ../Resource/Base/CommonFunctionality.resource
Resource     ../Resource/Pages/LoginPage.resource
Resource     ../Resource/Pages/MainPage.resource

Library     DataDriver     file=../test_data/orange_data.xlsx     sheet_name=AddEmergencyContact

Test Setup     Launch Browser
Test Teardown      Close Browser

Test Template     Verify Add Emergency Contact Template

*** Test Cases ***
TC1

*** Keywords ***
Verify Add Emergency Contact Template
    [Arguments]     ${username}     ${password}     ${contact_name}     ${relationship}     ${home_telephone}
    Enter Username     Admin
    Enter Password    admin123
    #Input Text    id=txtUsername    ${username}
    #Input Password    id=txtPassword    ${password}
    #Click Element    id=btnLogin
    Click On Login
    #Click Element    id=menu_pim_viewMyDetails
    Click On MyInfo
    Click Element    partial link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    name=emgcontacts[name]     ${contact_name}
    Input Text    id=emgcontacts_relationship     ${relationship}
    Input Text    id=emgcontacts_homePhone     ${home_telephone}
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    ${contact_name}
    Table Should Contain    id=emgcontact_list    ${home_telephone}