*** Settings ***
Library  Browser

Suite Setup  Set Browser Timeout  2s

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
        Click  id=nonexistent-item  #Stuck in here, need to fix!
    EXCEPT
        Log  Item not found, continuing.
    FINALLY
        Log  This is always executed!
    END