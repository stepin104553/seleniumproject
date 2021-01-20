*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
Tc1_valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    //a[text()='Editor']    
    Click Element    //td[text()='Brenden Wagner']    
    Click Element    //span[text()='Edit']
    Input Text    //input[@id='DTE_Field_position']    QA Engineer 
    Click Element    //button[text()='Update']
    Sleep    3s  
    FOR    ${i}    IN RANGE    1    11
        ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[3]
       # Log To Console    ${name}
        Run Keyword If    '${name}'=='QA Engineer'    Click Element    //table[@id='example']/tbody/tr[5]/td[3]   
        ${cell}    Get Table Cell    //table[@id='example']    6    3    
        Log To Console    ${cell}     
    END    
    #${update}    Get text    //table[@id='example']/tbody/tr[5]/td[3] 
    #Log To Console    ${update}  
   # ${cell}    Get Table Cell    //table[@id='example']    6    3    
   # Log To Console    ${cell}    