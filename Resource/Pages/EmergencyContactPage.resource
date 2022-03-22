*** Settings ***
Documentation      This file handles all menu in orange hrm.

Resource      ../Base/CommonFunctionality.resource

*** Variables ***
${ADDEMERGENCYCONTACT_LOCATOR}   id=btnAddContact
${CONTACTNAME_LOCATOR}      name=emgcontacts[name]
${RELATIONSHIP_LOCATOR}     id=emgcontacts_relationship
${HOMETELEPHONE_LOCATOR}    id=emgcontacts_homePhone
${SAVE_LOCATOR}         id=btnSaveEContact
${CONTACTTABLE_LOCATOR}     id=emgcontact_list

*** Keywords ***
Click On Add Emergency Contact
    Click Element    ${ADDEMERGENCYCONTACT_LOCATOR}

Enter Contact Name
    [Arguments]     ${contact_name}
    Input Text    ${CONTACTNAME_LOCATOR}     ${contact_name}

Enter Relationship
    [Arguments]     ${relationship}
    Input Text    ${RELATIONSHIP_LOCATOR}    ${relationship}

Enter Home Telephone
    [Arguments]     ${home_telephone}
    Input Text    ${HOMETELEPHONE_LOCATOR}   ${home_telephone}

Click On Save
     Click Element    ${SAVE_LOCATOR}

Validation On Added Contacts
    [Arguments]     ${contact_name}     ${relationship}        ${home_telephone}
     Table Should Contain    ${CONTACTTABLE_LOCATOR}    ${contact_name}
     Table Should Contain    ${CONTACTTABLE_LOCATOR}    ${relationship}
     Table Should Contain    ${CONTACTTABLE_LOCATOR}    ${home_telephone}