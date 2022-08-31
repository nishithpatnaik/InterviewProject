*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObjects/ProtoCommerce_PO.robot

*** Keywords ***
Fill Angular Application - ProtoCommerce
    [Arguments]    ${FORM_DATA_CSV}
    FOR    ${Rows}    IN    @{FORM_DATA_CSV}
        run keyword and continue on failure    ProtoCommerce_PO.Open Application
        run keyword and continue on failure    ProtoCommerce_PO.Fill Up Registration Form    ${Rows}
    END


