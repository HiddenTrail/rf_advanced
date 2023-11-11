*** Settings ***
Library    Browser

*** Variables ***
${URL}         https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Verify Price And Stock Of Item With Nested If Else
    Open Browser To Saucedemo
    ${product_name}=    Set Variable    Sauce Labs Backpack
    ${expected_price}=    Set Variable    $29.99
    ${availability}=    Get Product Availability    ${product_name}
    IF    '${product_name}' == 'Sauce Labs Backpack'
        Log    Checking price for: ${product_name}
        ${price}=    Get Product Price    ${product_name}
        IF    '${price}' == '${expected_price}'
            Should Be Equal As Strings    ${price}    ${expected_price}
            IF    '${availability}' == 'In Stock'
                Log    Product is in stock.
            ELSE
                Log    Warning: Product is out of stock.
            END
        ELSE
            Log    Warning: The price of ${product_name} is not as expected. Expected: ${expected_price}, but was: ${price}
        END
    ELSE
        Log    Warning: Product name provided does not match any known products.
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
    # For the sake of example, let's assume we get the price as below.
    ${price}=    Set Variable If    '${product_name}'=='Sauce Labs Backpack'    $29.99
    [Return]    ${price}

Get Product Availability
    [Arguments]    ${product_name}
    # Logic to check product availability goes here.
    # Let's assume we have a function that returns 'In Stock' for this example.
    ${availability}=    Set Variable    In Stock
    [Return]    ${availability}
