
*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Fill In contact forma
    Press Keys    css=textarea.contact-msg    a a a
    Press Keys    xpath=//*[@id="app"]/div[3]/div/div/div[1]/div[3]/div[1]/input    tt kk
    Press Keys    css=#contact-email    1.2@ma.com
    Click Element     css=#confirm
    Click Element    xpath=//button[@class='contact-submit']
    Execute Javascript    window.document.evaluate("//button[@class='contact-submit']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);



Successful message
    Wait Until Element Contains  //*[@id="app"]/div[3]/div/div/div[1]/div/p   Message Sent Successfully

   #   Wait Until Page Contains   Message Sent Successfully

