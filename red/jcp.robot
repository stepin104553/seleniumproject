*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_Valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://www.jcpenney.com/    browser=chrome
    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=searchInputId    
    Input Text    id=searchInputId    acdc mens crew neck short sleeve graphic t-shirt
    #Click Button    data-automation-id=searchIconBlock
    Click Element    //button[@data-automation-id='searchIconBlock']            
    Select From List By Label    quantity    2 
    #Click Element    //li[@class='_2CqxF']     
    Click Button    large        
    Click Element    //p[@data-automation-id='addToCart']
    ${actualtitle}    Get Title
    Log To Console    ${actualtitle}    
    Log    ${actualtitle}  
    #Click Element    //button[@data-automation-id='at-panel-checkout-button'] 
    #Click Element    //div[@class='_2KUhm']    
    #Click Button    data-automation-id=at-panel-checkout-button     
    Click Element    //button[text()='View Cart & Checkout']
    ${qyt}    Get Selected List Label    //select[@data-automation-id='at-select-quantity']     
    Log To Console    ${qyt}    
    Click Element    //button[text()='Remove']    