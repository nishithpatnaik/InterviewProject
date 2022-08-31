*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start Testing
    Launch Browser
    set log level    debug
End Testing
    close browser
    Log     End Web Testing


Launch Browser
    open browser    about:blank     ${BROWSER}
    maximize browser window