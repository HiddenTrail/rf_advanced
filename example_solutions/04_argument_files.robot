*** Settings ***
Library  Browser

*** Variables ***
# These variables will be overridden by the argument file.
${URL}  https://www.saucedemo.com/  
${USERNAME}  default_value
${PASSWORD}  default_value

*** Test Cases ***
Login To Sauce Labs
    Open Browser  ${URL}
    Type Text     id=user-name   ${USERNAME}
    Type Text     id=password    ${PASSWORD}
    Click         id=login-button
    Wait For Elements State  id=item_4_title_link
    [Teardown]  Close Browser