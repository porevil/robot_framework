*** Settings ***
Documentation    Example using the space separated plain text format.
Library           SeleniumLibrary
*** Variables ***
${MESSAGE}       Hello, world!
${LOGIN URL}     http://automationpractice.com
${BROWSER}       headlesschrome
${REMOTE_URL}    http://localhost:4444/wd/hub

# ${BROWSER}       Chrome	

*** Keywords ***
Home 
    Go To  ${LOGIN URL}
Open Browser To First Page
    Open Browser    ${LOGIN URL}    
    ...  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=browserName:chrome

Choose menu Dress
    Click Element  xpath: //*[@id="block_top_menu"]/ul/li[2]/a
