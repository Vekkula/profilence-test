*** Settings ***
Documentation       Tests interactable elements in the product page

Resource            keywords.resource

Suite Setup         Open Browser To Product Page
Suite Teardown      Close Browser


*** Test Cases ***
Click Popup windows
    [Documentation]    Clicks the links under "Profilence platform", "Zeta", "Psi" and "TAU". And closes them
    Click Element    xpath=//main[@id='content']/div/article/section[3]/div/div/div[3]/div/div[2]/a
    Click Element    xpath=//button[@type='button']

    Wait Until Element Is Visible    xpath=//a[contains(@href, '#zeta')]
    Click Element    xpath=//a[contains(@href, '#zeta')]
    Click Element    xpath=//button[@type='button']

    Wait Until Element Is Visible    xpath=//a[contains(@href, '#psi')]
    Click Element    xpath=//a[contains(@href, '#psi')]
    Click Element    xpath=//button[@type='button']

    Wait Until Element Is Visible    xpath=//a[contains(@href, '#tau')]
    Click Element    xpath=//a[contains(@href, '#tau')]
    Click Element    xpath=//button[@type='button']

Click data tabs
    [Documentation]    Clicks Management-, Developers- and QA Engineers -data-tabs
    Wait Until Element Is Visible    xpath=//a[contains(@href,'#qa-engineers')]
    Click Element    xpath=//a[contains(@href,'#qa-engineers')]
    Click Element    xpath=//a[contains(@href,'#developers')]
    Click Element    xpath=//a[contains(@href,'#management')]
