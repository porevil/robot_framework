*** Settings ***
Documentation    Example using the space separated plain text format.
# Library           SeleniumLibrary
Resource    ./pages/welcome.robot 
Resource    ./pages/catalog.robot
Suite Setup     Open Browser To First Page
Suite Teardown  Close Browser
Test Teardown   welcome.Home 

*** Variables ***
${MESSAGE}       Hello, world!
${LOGIN URL}     http://automationpractice.com
${BROWSER}       headlesschrome
# ${BROWSER}       Chrome	

*** Test Cases ***
Go to Summer Dress
    [Tags]  done  sprint1
    # Open Browser To First Page
    Go To Dress
    Go To Summer Dress
    Sort Dress By Price
Sort product by price
    [Tags]  progress
    # Open Browser To First Page
    Go To Dress
    Go To Summer Dress
    Sort Dress By Price

*** Keywords ***
Open Browser To First Page
    # Open Browser    ${LOGIN URL}    ${BROWSER}
    welcome.Open Browser To First Page
Go To Dress   
    # Click Element  xpath: //*[@id="block_top_menu"]/ul/li[2]/a
    welcome.Choose menu Dress
    # Wait Until Page Contains Element  xpath: //*[@id="subcategories"]/ul/li[3]/div[1]/a
Go To Summer Dress
    # Click Element  xpath: //*[@id="subcategories"]/ul/li[3]/div[1]/a
    catalog.Choose Summer Dress
Sort Dress By Price
    catalog.Sort By High Price
    # Click Element  xpath: //*[@id="selectProductSort"]/option[2]
    # Select From List By Value
    # ...  id: selectProductSort  price:desc