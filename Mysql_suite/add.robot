*** Settings ***

Library    OperatingSystem     
Library    SeleniumLibrary    

*** Test Cases ***
TC1_Valid
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    clearPass    pass
    Select From List By Label    languageChoice    English (Indian)
    Click Element    //button[@type='submit']     
    Click Element    //div[text()='Patient/Client']
    #Click Element    //div[text()='New/Search']
    Click Element    //div[text()='Patients']
    

#patientfindpage
    Select Frame    fin
    Click Element    create_patient_btn1    
    Unselect Frame
    
    Select Frame    name=pat
    Select From List By Label    form_title    Mrs.    
    Input Text    //input[@name='form_fname']    valli
    Input Text    //input[@name='form_mname']    aaaa    
    Input Text    //input[@name='form_lname']    pssb   
    Input Text    //input[@name='form_DOB']    2021-01-15    
    #Select Frame    name=pat
    Select From List By Label    form_sex    Female    
    Click Element    //button[@name='create']
    Unselect Frame
    Select Frame    id=modalframe
    Click Button    //input[@value='Confirm Create New Patient']     
    ${alert}    Handle Alert    timeout=30s
    Log To Console    ${alert}     
    Run Keyword And Ignore Error     Click Element   //div[@class='closeDlgIframe']    
    unselect frame
    Select Frame    name=pat
    #${result}    Get Text    //div[@class='clearfix']
    ${result}    Get Text    //h2[contains(text(),'Record Dashboard')]
    Log To Console    ${result}    
    Log     ${result}
    Should Contain       ${result}    Valli Pssb    msg=validated
    Element Should Contain     //h2[contains(text(),'Record Dashboard')]    Medical Record Dashboard - Valli Pssb    