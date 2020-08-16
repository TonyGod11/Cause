*** Settings ***
Library  SeleniumLibrary
Resource  ../Resourses/Trivago.robot
Resource  ../Resourses/Common.robot


*** Test Cases ***
Fill in the contact form and send it
    Given Open Browser To Login Page for trivago
    When Go to Contact form
    When Fill In contact form
    Then Make sure, that form is sent
    [Teardown]    Close Browser


