*** Settings ***

Library    OperatingSystem     
Library    SeleniumLibrary    

*** Test Cases ***
TC1_Valid
    #Append To Environment Variable   Path    C:\\Users\\CTEA\Desktop\\robotics\\geckodriver-v0.28.0-win32   
    #Append To Environment Variable    Path    C:\\robotics
    #Open Browser    url=https://magento.com/    browser=ff
    #Log To Console    ${OUTPUT_DIR}\\driver 
    
    #Log To Console    ${OUTPUT_DIR}${/}driver
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://magento.com/    browser=ff
    Maximize Browser Window
    Click Element    link=My Account
    #Click Link    My Account        
    Input Text    id=email    balaji0017@gmail.com
    Input Password    id=pass    welcome@12345    
    Click Element    name=send        
    Title Should Be    My Account 
    Click Link    link=Log Out       
    