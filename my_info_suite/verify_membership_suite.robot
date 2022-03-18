*** Settings ***
Documentation   This suite will test the membership details
Resource      ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

Test Template     Verify Add Membership Template

*** Test Cases ***
TCI     Admin     admin123     CIMA     Company     2000     AUD     2022-03-03     2023-03-16
TCI     Admin     admin123     ACCA     Individual     500     AUD     2022-03-19     2023-03-02

*** Keywords ***
Verify Add Membership Template
    [Arguments]     ${username}     ${password}     ${membership}     ${subscription_paid_by}     ${subscription_amount}     ${currency}     ${commence_date}     ${renewal_date}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    link=Memberships
    Click Element    id=btnAddMembershipDetail
    Select From List By Label    id=membership_membership       ${membership}
    Select From List By Label    id=membership_subscriptionPaidBy       ${subscription_paid_by}
    Input Text    id=membership_subscriptionAmount    ${subscription_amount}
    Select From List By Value    id=membership_currency     ${currency}
    Input Text    id=membership_subscriptionCommenceDate    ${commence_date}
    Input Text    id=membership_subscriptionRenewalDate    ${renewal_date}
    Click Element    id=btnSaveMembership
    Table Should Contain    xpath=//table[@class='table hover']    ${membership}
    Table Should Contain    xpath=//table[@class='table hover']    ${subscription_paid_by}
    Table Should Contain    xpath=//table[@class='table hover']    ${commence_date}
    Table Should Contain    xpath=//table[@class='table hover']    ${renewal_date}
