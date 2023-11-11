*** Settings ***
Library    TaxCalculatorLibrary.py

*** Variables ***
${original_price}    100.00
${tax_rate}          8.25

*** Test Cases ***
Calculate Total Price With Tax
    ${total_price}=    Calculate Total With Tax    ${original_price}    ${tax_rate}
    Should Be Equal As Numbers    ${total_price}    108.25
