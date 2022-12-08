*** Settings ***
Documentation       Navgigates around the website and takes a screenshot on failure.

Resource            keywords.resource

Suite Setup         Open Browser To Home Page
Suite Teardown      Close Browser


*** Test Cases ***
Navigate to products page
    Click Link    https://profilence.com/products/

Navigate to services page
    Click Link    https://profilence.com/services/

Navigate to customers page
    Click Link    https://profilence.com/customers/

Navigate to contact Page
    Open dropdown menu
    Click Link    https://profilence.com/contact/

Navigate to company Page
    Open dropdown menu
    Click Link    https://profilence.com/company/

Navigate to blog Page
    Open dropdown menu
    Click Link    https://profilence.com/category/blog/

Navigate to careers Page
    Open dropdown menu
    Click Link    https://profilence.com/careers/

Navigate to home Page
    Click Image
    ...    //img[contains(@src,'https://profilence.com/wp-content/themes/profilence/dist/images/logo_blue.png')]

Navigate to privacy-policy Page
    Click Link    /privacy-policy/

Navigate to newsletter Page
    Click Link    /newsletter/
