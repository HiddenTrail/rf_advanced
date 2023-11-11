*** Settings ***
Documentation   Test suite to demonstrate the different log levels.

*** Test Cases ***
Log Level Demonstration
    Log    This is a TRACE level message    TRACE
    Set Log Level    TRACE
    Log    This is another TRACE level message after setting log level to TRACE    TRACE
    Set Log Level    DEBUG
    Log    This is a DEBUG level message    DEBUG
    Set Log Level    INFO
    Log    This is an INFO level message    INFO
    Set Log Level    WARN
    Log    This is a WARN level message    WARN
    Set Log Level    ERROR
    Log    This is an ERROR level message    ERROR
