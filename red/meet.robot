*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_Na
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://www.gotomeeting.com/en-gb    browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    //button[@class='language-modal__button']    
    Click Element    //a[@class='button button--primary button--small']    
    Input Text    id=first-name    valli
    Input Text    id=last-name    p       
    Input Text    id=login__email    pvalli@gmail.com
    Input Text    id=contact-number    8978142223
    Select From List By Label   JobTitle     Engineering    
    Input Password    id=login__password    1123456a
    Scroll Element Into View    //button[text()="Sign Up"] 
    Click Element      //input[@value="10-99"]  
    
    Click Element    //button[text()="Sign Up"]      
     