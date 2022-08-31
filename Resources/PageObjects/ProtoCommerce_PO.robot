*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Application
    go to   ${PROTO_URL}
    maximize browser window

Fill Up Registration Form
    [Arguments]    ${FORM_DATA_CSV}
    input text    name   ${FORM_DATA_CSV[0]}
    input text    email   ${FORM_DATA_CSV[1]}
    input text    exampleInputPassword1   ${FORM_DATA_CSV[2]}
    select from list by label    //select[@id="exampleFormControlSelect1"]   ${FORM_DATA_CSV[3]}
    select radio button  inlineRadioOptions    option1
    input text    bday   12/31/2021
    click button    //input[@class='btn-success' or @type='submit']
    wait until page contains    Success!