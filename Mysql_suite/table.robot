*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
Tc1_valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://datatables.net/extensions/select/examples/initialisation/checkbox.html    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${count}    Get Element Count    //table[@id='example']/tbody/tr
    Select From List By Label    example_length    25    
    Table Should Contain    //table[@id='example']    Ashton Cox
    ${table}    Get Table Cell    //table[@id='example']    2    3    	   
    Log To Console    ${table}   
    Table Cell Should Contain    //table[@id='example']    2    3    Accountant
    ${name}    Get Text    //table[@id='example']/tbody/tr[1]/td[2]
    Log To Console    ${name}
    FOR    ${i}    IN RANGE    1    11
        ${name}    Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
        Log To Console    ${name}
        Run Keyword If    '${name}'=='Brenden Wagner'    Click Element    //table[@id='example']/tbody/tr[5]/td[1]        
    END      
    #Click Element    (//td[@class=' select-checkbox'])[5]    