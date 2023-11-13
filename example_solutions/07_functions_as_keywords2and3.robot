*** Settings ***
Library         Browser
Library         07_example_lib2.py

*** Variables ***
${URL}                 https://www.saucedemo.com/
${USERNAME}            standard_user
${CORRECT_PASSWORD}    secret_sauce

*** Test Cases ***
Add First Three Products To Cart
    Add First Three Products   ${URL}

Login Test
    ${Attempts}=    Login With Multiple Attempts   ${URL}    ${USERNAME}    ${CORRECT_PASSWORD}
    Log    Successfully logged in after ${Attempts} attempts