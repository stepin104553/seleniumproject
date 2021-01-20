*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
Tc1_valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://phptravels.net/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    #Click Element    link=USD    
    #Click Element    link=INR     
    #Click Element    //a[@id='dropdownCurrency']
    #Click Element    //a[text()='INR']    
    ${ele}    Get WebElement    //a[text()='INR'] 
    Execute Javascript    arguments[0].click();     ARGUMENTS     ${ele} 
                
    #Execute Javascript   document.getElementById('dropdownCurrency').value='INR'
    Sleep    1s    
    Click Element    //a[@data-name='flights']  
    Click Element    //span[text()='LHE']    
    Sleep    5s    
    Press Keys    None    new york
    Click Element    //div[contains(text(),'EWR')]    
    
    Click Element    //span[text()='DXB']    
    
    Press Keys    None    sindal
    Click Element    //div[contains(text(),'CNL')]    
    #Click Element    //input[@id='FlightsDateStart']
    #Press Keys    None    2021-01-18
    #Click Element    //div[contains(text(),'29']
    Execute Javascript    document.getElementById('FlightsDateStart').value='2021-01-28'
    FOR    ${i}    IN RANGE    1    4
        Click Element    (//button[text()='+'])[3]    
    END    
    #Execute Javascript    document.getElementsByName('fadults').value='4'
     
    FOR    ${i}    IN RANGE    1    3
        Click Element    (//button[text()='+'])[5]    
        
    END
    FOR    ${i}    IN RANGE    1    3
        Click Element    (//button[text()='+'])[4]    
        
    END
    Click Button    (//button[contains(text(),'Search')])[2]
    Click Element    //*[text()='Book Now']    
    ${amount}    Get Text    //*[text()='Total Amount']/following::h5
    Log To Console    ${amount}    
    