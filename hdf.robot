*** Settings ***

Library    OperatingSystem    
Library    SeleniumLibrary    


*** Test Cases ***

Tc2_Valid
    Append To Environment Variable    Path     ${OUTPUT_DIR}{/} driver
    Open Browser    https://netbanking.hdfcbank.com/netbanking/      browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Select Frame    name=login_page
    Input Text  name=fldLoginUserId     valli
    Click Element    //img[@alt='continue']   
    Unselect Frame
    #Input Text    name=fldPassword        12345    