*** Settings ***
Library    ../Libraries/InputCSV.py

*** Keywords ***
Get CSV Data
    #[Arguments]     ${CSV_FILEPATH}
    ${Data} =   read csv file   ${CSV_FILEPATH}
    [Return]        ${Data}