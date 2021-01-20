*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_tests
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    http://www.echoecho.com/javascript4.htm    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Sleep    3s
    Click Element    B2    
    ${alert}    Handle Alert   DISMISS       timeout=30s
    Log To Console    ${alert}    