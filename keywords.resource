*** Settings ***
Documentation       TODO write Documentation
...                 TODO remove useless screenshots ands logs

Library             SeleniumLibrary
Library             Screenshot


*** Variables ***
${BROWSER}          Firefox
${FRONTPAGE}        https://profilence.com/
${CONTACT_PAGE}     https://profilence.com/contact/
${PRODUCT_PAGE}     https://profilence.com/products/


*** Keywords ***
Open Browser To Home Page
    Open Browser    ${FRONTPAGE}    ${BROWSER}
    Title Should Be    Profilence Technical Quality Analysis
    Accept Cookies

Open Browser To Contact Page
    Open Browser    ${CONTACT_PAGE}    ${BROWSER}
    Title Should Be    Contact us - Profilence
    Accept Cookies

Open Browser To Product Page
    Open Browser    ${PRODUCT_PAGE}    ${BROWSER}
    Title Should Be    Profilence Products and Technology platform
    Accept Cookies

Accept Cookies
    Wait Until Element Is Visible    hs-eu-confirmation-button
    Click Element    hs-eu-confirmation-button

Open dropdown menu
    Click Element    //button[contains(text(),'Company')]
