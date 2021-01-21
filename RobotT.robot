*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary  
Library    Collections  
Library    String       
*** Test Cases ***


TC2_Add
    Append To Environment Variable    ${OUTPUT_DIR}//driver    
    Open Browser    https://datatables.net/extensions/select/examples/initialisation/checkbox.html     browser=ff   
    Set Selenium Implicit Wait    30s
    ${total}    Set Variable    0
    FOR    ${i}    IN RANGE    1    11
        ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[6]
        #Log To Console    ${name}
        ${name}    Remove String    ${name}    $    ,
        Log To Console    ${name}
            
        ${total}    Evaluate    ${total}+${name}   
        
    END    
    Log To Console    ${total}  

    