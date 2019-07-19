*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Call list of users from jsonplaceholder
    Create Session  api  https://jsonplaceholder.typicode.com
    ${response}=  Get Request  api  /users
    Log To Console  ${response}
    Should Be Equal  ${200}  ${response.status_code}
    ${len}=  Get Length  ${response.json()}
    Should Be Equal  ${10}  ${len}
    Should Be Equal  Bret  ${response.json()[0]["username"]}
    # Log To Console  ${response.json()}