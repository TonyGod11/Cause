*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
${Text}   new york
${Search button}    css=div.search-icon
${Input}  css=input.input.search-input


*** Keywords ***
Search for Article
    Enter Search Term
    Submit Search

Enter Search Term
    Click Element    ${Search button}

Submit Search
    Input Text    ${Input}   ${Text}
    Press key   css=input.input.search-input    \\13

