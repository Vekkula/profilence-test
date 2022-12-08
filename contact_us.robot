*** Settings ***
Documentation       Tests the "Contact us"-form.It doesn't submit the form, only checks the error texts.
...                 the contact form has dynamic(?) id:s and the input elements cant be found.

Resource            keywords.resource

Suite Setup         Open Browser To Contact Page
Suite Teardown      Close Browser
#Test Teardown       Run Keyword If Test Failed    Capture Error Screenshot


*** Test Cases ***
Correctly filled Contact form
    [Documentation]    Doesn't work because the input fields, id is dynamically generated, and name, class etc. dont work either
    ...    example id: email-86ce5875-6792-4ff9-b92b-4a05c970cb56
    #Wait Until Element Is Visible    xpath=//input[@id='email-86ce5875-6792-4ff9-b92b-4a05c970cb56']
    Input Text    xpath=//input[@id='email-86ce5875-6792-4ff9-b92b-4a05c970cb56']    text
    Input Text    name=firstname    firstname
    Input Text    name=lastname    lastname
    Input Text
    ...    name=message
    ...    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas dapibus mi ac vulputate.
    Page Should Not Contain    Please complete all required fields.

Empty form
    Input Text    email    \n
    Input Text    firstname    \n
    Input Text    lastname    \n
    Input Text    message    \n
    Page Should Contain    Please complete all required fields.

Invalid email
    Input Text    email    9999999999999999999999
    Page Should Contain    Email must be formatted correctly.
