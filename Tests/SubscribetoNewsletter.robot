*** Settings ***
Library  SeleniumLibrary
Resource  ../Resourses/Trivago.robot
Resource  ../Resourses/Common.robot


*** Test Cases ***
Subscribe on news
    Given Open Browser To Login Page for trivago
    When Subscribe action
    Then Actual message
    [Teardown]    Close Browser


