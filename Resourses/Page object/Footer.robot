
*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Go to Contact forma
    Execute Javascript    window.document.evaluate("//a[text()='Contact']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);
    Click Element    xpath=//a[text()='Contact']