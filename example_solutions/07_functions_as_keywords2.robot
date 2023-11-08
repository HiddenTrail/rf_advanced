*** Settings ***
Library         Browser
Library         07_example_lib2.py

*** Variables ***
${URL}          https://www.saucedemo.com/

*** Test Cases ***
Add First Three Products To Cart
    Add First Three Products   ${URL}
