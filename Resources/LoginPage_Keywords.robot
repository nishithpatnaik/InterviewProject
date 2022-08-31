*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/Common_Keywords.robot
Resource    ../Resources/PageObjects/LoginPage_PO.robot

*** Keywords ***

Login
    [Arguments]    ${Credentials}
    LoginPage_PO.Open Application
    LoginPage_PO.Validate Login Page
    LoginPage_PO.Enter Credentials  ${Credentials}
    LoginPage_PO.Select Access Level
    LoginPage_PO.Select User Role  ${Credentials.ROLE}
    LoginPage_PO.Submit Credentials
    ${login_status} =    LoginPage_PO.Validate Successful Login
    log    ${login_status}



