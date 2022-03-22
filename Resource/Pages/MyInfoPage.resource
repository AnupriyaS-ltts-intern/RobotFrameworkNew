*** Settings ***
Documentation   This file handles element Personal Details,Contact Details
...     Emergency Contacts,Dependents,Immigration,Job
...     Salary,Exemptions,Report-to,Qualifications,Membership

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${PersonalDetails_LOCATOR}      partial link=Personal Details
${EmergencyContacts_LOCATOR}        link=Emergency Contacts

*** Keywords ***
Click On Personal Details
    Click Element   ${PersonalDetails_LOCATOR}

Click On Emergency Contact
    Click Element    ${EmergencyContacts_LOCATOR}