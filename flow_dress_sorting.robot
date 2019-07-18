*** Settings ***
Documentation    Example using the space separated plain text format.
Library           SeleniumLibrary
*** Variables ***
${MESSAGE}       Hello, world!
${LOGIN URL}     http://automationpractice.com
${BROWSER}       headlesschrome
# ${BROWSER}       Chrome	

*** Test Cases ***
Go to Summer Dress
    Open Browser To First Page
    Go To Dress
    Go To Summer Dress
Sort product by price
    Sort Dress By Price

*** Keywords ***
Open Browser To First Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
Go To Dress   
    Click Element  xpath: //*[@id="block_top_menu"]/ul/li[2]/a
    Wait Until Page Contains Element  xpath: //*[@id="subcategories"]/ul/li[3]/div[1]/a
Go To Summer Dress
    Click Element  xpath: //*[@id="subcategories"]/ul/li[3]/div[1]/a
Sort Dress By Price
    # Click Element  xpath: //*[@id="selectProductSort"]/option[2]
    Select From List By Value
    ...  id: selectProductSort  price:desc