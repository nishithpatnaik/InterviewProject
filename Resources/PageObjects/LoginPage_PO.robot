*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${blinking_text_label} =    Free Access to InterviewQues/ResumeAssistance/Material
${user_name_textbox} =   //*[@id="username"]
${password_txtbox} =    id=password
${access_level_radio} =    //input[@id="usertype"][1]
${okay_warning_button} =  //*[@id="okayBtn"]
${warning_message_popup} =    //*[@id="myModal"]/div/div/div[1]/p

*** Keywords ***
Open Application
    go to   ${LOGIN_URL}

Validate Login Page
    page should contain link        ${blinking_text_label}
    log     Login Page Loaded Successfully
    reload page


Enter Credentials
    [Arguments]     ${Credentials}
    input text      ${user_name_textbox}     ${Credentials.USERNAME}
    input text      ${password_txtbox}      ${Credentials.PASSWORD}


Select Access Level
    radio button should be set to    radio      admin
    ${is_checked} =    get element attribute    radio   checked
    run keyword if    '${is_checked}'=='true'
    ...    run keywords
    ...    select radio button     radio      user
    ...    AND    sleep    2
    ...    AND    element text should be    ${warning_message_popup}    You will be limited to only fewer functionalities of the app. Proceed?
    ...    AND    click button    ${okay_warning_button}
    ...    AND    radio button should be set to    radio      user
    ...  ELSE
    ...    select radio button     radio      admin

Select User Role
    [Arguments]     ${Role}
    select from list by label    //select[@class="form-control"]    ${Role}
    select checkbox    //*[@id="terms"]

Submit Credentials
    click button    signInBtn

Validate Successful Login
    wait until location is      https://rahulshettyacademy.com/angularpractice/shop
    [Return]    Successful Login!