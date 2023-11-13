*** Settings ***
Library    07_example_lib.py

*** Variables ***
${original_price}    100.00
${tax_rate}          8.25

*** Test Cases ***
Calculate Total Price With Tax
    ${total_price}=    Calculate Total With Tax    ${original_price}    ${tax_rate}
    Condition Should Be True    ${total_price} == 108.25

*** Keywords ***
Condition Should Be True
    [Arguments]    ${condition}
    Should Be True    ${condition}
