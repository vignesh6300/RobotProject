*** Settings ***
Library    SeleniumLibrary
Suite Setup       Log    Inside suite setup
Suite Teardown    Log    Inside suite teardown       
Test Setup        Log    Inside test setup    
Test Teardown     Log    Inside test teardown    

# Default Tags    Sanity
    
*** Test Cases ***
MyFirstTest
    [Tags]    Regression
    Log    Hello World
    
MySecondTest
    [Tags]    Sanity
    Log    Hi
        
FirstSeleniumTest
    [Tags]    Sanity
    Open Browser    https://www.google.com/    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    capgemini
    Press Keys    name=q    ENTER 
    # Click Button    name=btnK
    Sleep    2           
    Close Browser
    Log    Test Completed
    

    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # # Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # # Input Text    name=txtUsername    Admin
    # Input Text    name=txtUsername    @{credentials}[0]
    # # Input Text    xpath=//input[@type='password']    admin123
    # # Input Password    xpath=//input[@type='password']    @{credentials}[1]
    # Input Password    xpath=//input[@type='password']    &{logindata}[password]    
    # Click Button    name=Submit
    # Click Element    id=welcome    
    # Click Element    link=Logout    
    # Close Browser             
    # Log    Test completed
    # Log    This testcase is executed by %{username} on %{os}

# SampleLoginTest1
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element    id=welcome    
    # Click Element    link=Logout    
    # Close Browser             
    # Log    Test completed
    # Log    This testcase is executed by %{username} on %{os}
    
*** Variables ***
${URL}     https://opensource-demo.orangehrmlive.com/
@{credentials}    Admin    admin123
&{logindata}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text    name=txtUsername    @{credentials}[0]
    Input Password    xpath=//input[@type='password']    &{logindata}[password]
    Click Button    name=Submit
    
