*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
Tc1_valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://google.com/    browser=chrome
    Maximize Browser Window
    ${count}    Get Element Count    tag=a
    Log To Console    ${count}    
    ${text}    Get Text    //a
    Log To Console    ${text} 
    ${href}    Get Element Attribute    //a    href
    Log To Console    ${href}    
    

Tc2_GetElements
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://google.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${ele}     Get WebElement    //a
    Log To Console    ${ele}    
    #Click Element    ${ele}    
    ${text}    Get Text    ${ele}
    Log To Console    ${text}    
    
Tc3_Get
     Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://google.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
   ${list}    Get WebElements    //a
   ${count}    Get Element Count    //a
   FOR    ${i}    IN      0     ${count}
       ${text}    Get Text    ${list}[${i}]
       Log To Console    ${text}
       
       
       ${href}    Get Element Attribute    ${list}[${i}]    href
       Log To Console    ${href}    
    END

    FOR    ${i}    IN RANGE     0    ${count}
        ${text}    Get Text    ${list}[${i}]
        Log To Console    ${text}   
        Run Keyword If    '${text}'=='Images'    Click Element    ${list}[${i}] 
        Exit For Loop If    '${text}'=='Images'       
    END

      
   #${list}    Get WebElements    //a
   # ${text0}    Get Text    ${list}[0]
    #Log To Console    ${text0}    