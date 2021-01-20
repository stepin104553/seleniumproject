*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_Valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://www.db4free.net/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    #Click Element    //a[@target='_blank']
    Click Element    //b[contains(text(),'phpMyAdmin')]    
    #Click Element    //a[contains(@href,'phpMyAdmin')]  
    Sleep    5s    
    ${title}     Get Title
    Log To Console    ${title}
    Switch Window    phpMyAdmin
    Input Text    input_username    admin    
    Input password    input_password      admin123
    Click Element    input_go
    #${error}    Get Text    //div[@id='pma_errors']
    ${error}    Get Text    //div[contains(text(),' Cannot log in to the MySQL server')]
    Log To Console    ${error}          
    Close Window    