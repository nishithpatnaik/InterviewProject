*** Settings ***
Resource    ../Resources/Common_Keywords.robot
Resource    ../Resources/TestData/InputData.robot
Resource    ../Resources/DataManager.robot
Resource    ../Resources/LoginPage_Keywords.robot
Resource    ../Resources/ProtoCommerce_Keywords.robot



Test Setup    Common_Keywords.Start Testing
Test Teardown    Common_Keywords.End Testing



*** Test Cases ***
TC01 - Login Test
    [Documentation]    Data Driven Test with Inputs from Dictionary Iterables from InputData.robot
    [Tags]    Dictionary
    [Template]      LoginPage_Keywords.Login
    ${CREDENTIALS1}
    ${CREDENTIALS2}
    ${CREDENTIALS3}
    # TODO  parameterize using lists


TC02_Fill Form
    [Documentation]    Data Driven Test with Inputs CSV File
    [Tags]    CSV
    ${CSV_DATA} =    DataManager.Get CSV Data    #${CSV_FILEPATH}
    ProtoCommerce_Keywords.Fill Angular Application - ProtoCommerce    ${CSV_DATA}


