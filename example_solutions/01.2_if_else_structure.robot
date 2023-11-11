*** Settings ***
Library    Browser
Library    BuiltIn

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Verify Price Of Multiple Items With Else If
    Open Browser To Saucedemo
    ${product_name}=    Set Variable    Sauce Labs Fleece Jacket
    ${expected_price}=    Set Variable    $49.99
    Log    Checking price for: ${product_name}
    ${price}=    Get Product Price    ${product_name}
    IF    '${product_name}' == 'Sauce Labs Backpack'
        Should Be Equal As Strings    ${price}    $29.99
    ELSE IF    '${product_name}' == 'Sauce Labs Bike Light'
        Should Be Equal As Strings    ${price}    $9.99
    ELSE IF    '${product_name}' == 'Sauce Labs Bolt T-Shirt'
        Should Be Equal As Strings    ${price}    $15.99
    ELSE IF    '${product_name}' == 'Sauce Labs Fleece Jacket'
        Should Be Equal As Strings    ${price}    $49.99
    ELSE
        Log    Warning: No matching product found or price mismatch.
    END

*** Keywords ***
Open Browser To Saucedemo
    New Browser    headless=false
    New Context
    New Page    ${URL}
    Fill Text    input[name="user-name"]    ${USERNAME}
    Fill Text    input[name="password"]    ${PASSWORD}
    Click    input[type="submit"]

Get Product Price
    [Arguments]    ${product_name}
    # Logic to get the product price based on its name goes here.
   
