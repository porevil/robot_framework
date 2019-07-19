*** Settings ***
Documentation    Example using the space separated plain text format.
Library           SeleniumLibrary
*** Variables ***
${MESSAGE}       Hello, world!
${LOGIN URL}     http://automationpractice.com
${BROWSER}       headlesschrome
# ${BROWSER}       Chrome	

*** Keywords ***
Home 
    Go To  ${LOGIN URL}
Open Browser To First Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Choose menu Dress
    Click Element  xpath: //*[@id="block_top_menu"]/ul/li[2]/a
