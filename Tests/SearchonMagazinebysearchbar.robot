*** Settings ***
Library  SeleniumLibrary
Resource  ../Resourses/Trivago.robot
Resource  ../Resourses/Common.robot


*** Test Cases ***
Search for any location on Magazine by using the search bar
    Given Open Browser To Login Page for trivago
    When Open Search page
    When Input text in search field
    Then Make sure, that page with search results
    [Teardown]    Close Browser