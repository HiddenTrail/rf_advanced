*** Settings ***
Library  Browser
Suite Setup   Login To Website

*** Variables ***
${URL}  https://www.saucedemo.com/  

*** Test Cases ***
Verify Inventory Item Price Based on Product Name
    ${product_name}=   Get Text   xpath=//div[contains(text(),'Sauce Labs Bike Light')]
    IF  '${product_name}' == 'Sauce Labs Bike Light'
        ${price}=  Get Text  xpath=//*[@id="inventory_container"]/div/div[2]/div[2]/div[2]/div   # This is an absolute XPath which is not recommended
        Should Be Equal As Strings  ${price}  $9.99
    ELSE
        Log  Warning: Product name is either not provided or different
    END

*** Keywords ***
Input Password
    [Arguments]  ${locator}  ${password}
    Type Text  ${locator}  ${password}

Login To Website
    Open Browser    ${URL}
    Type Text       id=user-name  standard_user
    Type Text       id=password  secret_sauce
    Click           id=login-button