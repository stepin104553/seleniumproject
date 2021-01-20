*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_tests
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://online.citibank.co.in/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    //a[text()='APPLY FOR CREDIT CARDS']
      
    Switch Window    Online Credit Card Application Form | Citi India
    ${discount}    Get Text    //h1[@id='creditapplication']
    Log To Console    ${discount} 
    Click Element    //a[text()='Travel']
    Input Text    //input[@id='Email_Id']    valli@gmail.com    
    Input Text    //input[@id='mobile_number']    8919644707    
    Select From List By Label   salutations-select-1598329735325     Mx.
    Input Text    //input[@id='FirstName']    valli p    
    #Click Element    //input[@id='existcust']    
    #Click Button    //input[@id='existcust']    
    Click Button    //input[@label='No']  
    Select From List By Label    Father_Title    Mr.
    Input Text    //input[@id='Father_FirstName']    satyanarayana    
    Input Text    //input[@id='Father_MiddleName']    v    
    Input Text    //input[@id='Father_LastName']    p
    Input Text    //input[@id='exist_dob_dd']          17       
    Input Text    //input[@id='exist_dob_mm']    08    
    Input Text    //input[@id='exist_dob_yy']    1970
    Input Text    //input[@id='panno']    4F85A12591        
    Input Text    //input[@id='others_KYC1']    1234656    
    Click Button    //input[@value='Residence']            
    