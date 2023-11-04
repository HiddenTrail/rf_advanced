*** Settings ***
Documentation  This suite simulates a failure in try-except.
Library  Browser

*** Test Cases ***
Try Adding Non-Existent Item
    Open Browser  https://www.saucedemo.com/
    Type Text  id=user-name  standard_user
    Type Text  id=password  secret_sauce
    Click      id=login-button
    Try To Add Non-Existent Item

*** Keywords ***
Try To Add Non-Existent Item
    TRY
        Fail
    EXCEPT
        Log  Item not found, continuing.
    FINALLY
        Log  This is always executed!
    END