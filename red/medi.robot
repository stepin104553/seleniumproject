*** Settings ***

Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_Test
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    https://medibuddy.in/?gclid=EAIaIQobChMI7ZeOj-CY7gIV2X0rCh2JYw1IEAAYASAAEgKmYPD_BwE     browser=chrome
    Maximize Browser Window
    #Click Element    //button[@id='wzrk-alert wiz-show-animate']
    #Click Button    id=wzrk-cancel   
    Set Selenium Implicit Wait    30s
    Click Element    //a[@ng-click='userSignin(true)']
    #Click Element    //div[@ng-class='{'has-error': rc.userSignForm.needsAttention(userSignForm.firstName)}']      
    Click Button    id=wzrk-cancel    
    Input Text    name=firstName    valli      
    Input Text    name=phone    8978142223
    Input Text    name=username      valli@gmail.com
    Input Text    name=password      123456      
    Click Element    //label[@class='showpass']
    Click Element    //button[@class='btn btn-primary']           