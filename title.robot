*** Settings ***
Library               SeleniumLibrary
Suite Teardown        Close All Browsers

*** Variables ***
${URL}            https://playwright.dev
${EXPECTED}           Fast and reliable end-to-end testing for modern web apps | Playwright

*** Test Cases ***
Chrome
    Open Browser        ${URL}        Chrome
    Title Should Be        ${EXPECTED}
    Close Browser

Firefox
    Open Browser        ${URL}        Firefox
    Title Should Be        ${EXPECTED}
    Close Browser