*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
Tc1_valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://www.royalcaribbean.com/    browser=chrome
    Maximize Browser Window
    #Set Selenium Implicit Wait    30s
    #Handle Alert    DISMISS    timeout=30s
    #Sleep    2s
   
    FOR    ${i}    IN    0    9999
        Run Keyword And Ignore Error       Click Element    //div[@class='email-capture__body']/*
        Run Keyword And Ignore Error    Click Element    //span[text()='Sign In']       
        ${count}    Get Element Count    link=Create an account  
        Exit For Loop If    ${count}>0
    END
    Set Selenium Implicit Wait    30s
    #Click Element    //div[@class='email-capture__body']/* 
    #Click Element    //span[text()='Sign In']
    #Click Element    //a[text()='Create an account']
    Click Element    link=Create an account    
    Input Text    //input[@aria-label='First name/Given name']     valli     
    Input Text    //input[@aria-label='Last name/Surname']    ps   
    Click Element    //span[text()='Month']
    Click Element    //span[text()=' March ']
    Click Element    //mat-select[@aria-label='Day']
    Click Element    //span[text()=' 3 ']                       
    Input Text    //input[@aria-label="Year"]    1999    
    Click Element    //span[text()='Country/Region of residence']    
    Click Element    //span[text()=' India ']
    Input Text    //input[@placeholder='Email address']    pvalli1@gmail.com  
    Input Text    //input[@placeholder="Create new password"]    123456av
    Click Element    //span[text()='Select one security question']    
    Click Element    //span[text()=' What was the name of your first pet? ']
    Input Text    //input[@placeholder="Answer"]    lucky
    Click Element    //mat-checkbox[@id='mat-checkbox-2']        
    Click Button    //button[text()=' Done ']             