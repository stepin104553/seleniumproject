*** Settings ***
Library    Collections    
Library    OperatingSystem 
Library    SeleniumLibrary       
*** Variables ***
${URL}    valli
@{COLORS}    red    yellow    green
&{TRAINERDETAIL}    valli


*** Test Cases ***
TC1_Valid
    Log To Console    ${TRAINERDETAIL}    
    
    ${name}    Set Variable    valli
    Log To Console    ${name}    
    Log To Console    ${COLORS}[0]    
    FOR    ${color}    IN    @{COLORS}
        Log To Console    ${color}    
        
    END
    @{fruits}  Create List    banana    apple 
