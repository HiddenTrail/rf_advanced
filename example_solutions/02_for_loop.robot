*** Settings ***
Library  Browser

*** Variables ***
${URL}  https://www.saucedemo.com/

*** Test Cases ***
Add First Three Products To Cart
    Open Browser  ${URL}
    Type Text     id=user-name  standard_user
    Type Text     id=password  secret_sauce
    Click         id=login-button

    FOR  ${INDEX}  IN RANGE  1  4
        Click  xpath=(//button[text()='Add to cart'])[${INDEX}]
    END
