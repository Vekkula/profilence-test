*** Settings ***
Documentation       Tests the website with different browsers, and takes screenshots of the frontpage.
...                 You need to have the browsers installed to test them.

Resource            keywords.resource

Suite Teardown      Close Browser


*** Test Cases ***
Firefox Test
    Open Browser    https://profilence.com/    firefox
    Capture Page Screenshot    browser_test_images/firefox_frontpage.png
    Close Browser

Chrome Test
    Open Browser    https://profilence.com/    chrome
    Capture Page Screenshot    browser_test_images/chrome_frontpage.png
    Close Browser

Edge Test
    Open Browser    https://profilence.com/    Edge
    Capture Page Screenshot    browser_test_images/edge_frontpage.png
    Close Browser
