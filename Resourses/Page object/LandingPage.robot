
*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***


*** Keywords ***
Load Page Trivago
    Open Browser    http://room5.trivago.com/    Chrome
    Set Selenium Speed    1
    Maximize Browser Window
    Trivago Page Should Be Open

Subscribe
    ${password} =  Generate Random String  8  [NUMBERS]
    input Text    css=div.newsletter-email>input    ${password}@n1ew.rt
    Click Element   xpath=//div[2]/div[2]/button

Actual message

    Wait Until Element Contains  //*[@id="app"]/div[3]/div/div/div[4]/section/div/p   You are now checked-in!


