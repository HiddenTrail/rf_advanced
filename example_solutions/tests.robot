*** Settings ***
Documentation   Test suite to demonstrate the different log levels.

*** Test Cases ***
Log 1 
    Log    Logging

Log 2 fail
    Log    Logging
    Fail

Log 3
    Log    Logging