*** Settings ***
Documentation    Example using the space separated plain text format.
Library           SeleniumLibrary
*** Variables ***
${MESSAGE}       Hello, world!
${LOGIN URL}     http://automationpractice.com
${BROWSER}       headlesschrome
# ${BROWSER}       Chrome	

*** Keywords ***

Choose Summer Dress
    Click Element  xpath: //*[@id="subcategories"]/ul/li[3]/div[1]/a

Sort By High Price
    Select From List By Value
    ...  id: selectProductSort  price:desc