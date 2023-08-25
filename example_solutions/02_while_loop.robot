*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${CORRECT_PASSWORD}    secret_sauce
${ATTEMPT_COUNT}    ${1}

*** Test Cases ***
Login With Multiple Attempts
    New Browser    chromium    headless=false
    New Page   ${URL}
    WHILE    ${ATTEMPT_COUNT} <= 5
        Type Text    id=user-name    ${USERNAME}
        ${wrong_password}=    Generate Wrong Password    ${CORRECT_PASSWORD}    ${ATTEMPT_COUNT}
        Type Text    id=password    ${wrong_password}
        Click        id=login-button
        ${is_logged_in}=    Is Logged In
        Run Keyword If    ${is_logged_in}    Exit For Loop
        ${ATTEMPT_COUNT}=    Evaluate    ${ATTEMPT_COUNT} + 1
    END
    Log    Successfully logged in after ${ATTEMPT_COUNT} attempts

*** Keywords ***
Generate Wrong Password
    [Arguments]    ${base_password}    ${modifier}
    ${new_password}=    Set Variable    ${base_password}${modifier}
    [Return]    ${new_password}

Is Logged In
    ${current_url}=    Get URL
    ${status}=    Run Keyword And Return Status    Should Be Equal    ${current_url}    https://www.saucedemo.com/inventory.html
    [Return]    ${status}