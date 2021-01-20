*** Settings ***

Library    OperatingSystem    
Library    SeleniumLibrary    


*** Test Cases ***

Tc1_Valid
    Append To Environment Variable    Path     ${OUTPUT_DIR}//driver
    Open Browser    https://www.redbus.in/     browser=chrome
    Maximize Browser Window
    Click Element    //div[@id='sign-in-icon-down']    
    Click Element    //li[@id='signInLink']
    Select Frame    //iframe[@class='modalIframe']    
    Input Text    id=mobileNoInp    123456789    