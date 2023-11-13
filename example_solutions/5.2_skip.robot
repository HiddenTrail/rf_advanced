*** Settings ***
Documentation   An example solution for the exercise 5.2

*** Test Cases ***
Normal Test Case
    Log    This test will run normally.

Test Case with SKIP Tag
    [Tags]    SKIP
    Log    This test will be skipped.

Test Case with Skip Keyword
    Log    This part of the test will run.
    Skip    Skipping the rest of this test.
    Log    This part of the test will not run.
