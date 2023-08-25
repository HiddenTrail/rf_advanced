*** Settings ***
Library  Browser

*** Variables ***
${URL}  https://www.saucedemo.com/  

*** Test Cases ***
Verify Inventory Item Price Based on Product Name
    [Arguments]   ${product_name}   ${expected_price}=$9.99
    Open Browser  ${URL}
    Type Text       id=user-name  standard_user
    Type Text       id=password  secret_sauce
    Click           id=login-button
    IF  '${product_name}' == 'Sauce Labs Bike Light'
        ${price}=  Get Text  css:.inventory_item_name=Sauce Labs Bike Light + .inventory_item_price
        Should Be Equal As Strings  ${price}  ${expected_price}
    ELSE
        Log  Warning: Product name is either not provided or different
    END

*** Keywords ***
Input Password
    [Arguments]  ${locator}  ${password}
    Type Text  ${locator}  ${password}