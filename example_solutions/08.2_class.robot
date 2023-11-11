*** Settings ***
Library         SauceDemoLibrary.py

*** Variables ***
${URL}          https://www.saucedemo.com/
${username}     standard_user
${password}     secret_sauce

*** Test Cases ***
Add First Three Products To Cart
    Open Sauce Demo        ${URL}
    Login To Sauce Demo    ${username}    ${password}
    Add First Three Products To Cart
